	.text
	.file	"svfiscanf.bc"
	.globl	$_sungetc_r
	.type	$_sungetc_r,@function
$_sungetc_r:                            //  @_sungetc_r
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
	add x8, x0, x12
	xori x1, x11, -1
	not x3, x0
	beqz x1, LBB0_13
LBB0_1:                                 //  %if.end
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x8 )
	slli x28, x28, 20
	lw x3, 48 ( x8 )
	lui x4, 65503 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x1, x4, x1
	sh x1, 12 ( x8 )
	andi x12, x11, 255
	beqz x3, LBB0_5
LBB0_2:                                 //  %if.then6
	lw x1, 52 ( x8 )
	lw x3, 4 ( x8 )
	nop
	bgt x1, x3, LBB0_4
LBB0_3:                                 //  %land.lhs.true
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	call $__submore
	not x3, x0
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_13
LBB0_4:                                 //  %if.end11
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 0 ( x8 )
	sb x11, -1 ( x1 )
	lw x1, 4 ( x8 )
	nop
	addi x1, x1, 1
	jalr x0, LBB0_11 ( x0 )
LBB0_5:                                 //  %if.end14
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB0_8
LBB0_6:                                 //  %if.end14.if.end34_crit_edge
	lw x1, 0 ( x8 )
LBB0_7:                                 //  %if.end34
	lw x3, 4 ( x8 )
	addi x4, x8, 64
	addi x5, x0, 3
	addi x7, x8, 66
	slti x9, x0, 1
	sw x3, 60 ( x8 )
	sw x1, 56 ( x8 )
	sw x4, 48 ( x8 )
	sw x5, 52 ( x8 )
	sb x11, 66 ( x8 )
	sw x7, 0 ( x8 )
	sw x9, 4 ( x8 )
	jalr x0, LBB0_12 ( x0 )
LBB0_8:                                 //  %land.lhs.true18
	lw x1, 0 ( x8 )
	nop
	bgeu x3, x1, LBB0_7
LBB0_9:                                 //  %land.lhs.true24
	andi x3, x11, 255
	lbu x4, -1 ( x1 )
	nop
	bne x4, x3, LBB0_7
LBB0_10:                                //  %if.then29
	lw x3, 4 ( x8 )
	addi x1, x1, -1
	sw x1, 0 ( x8 )
	addi x1, x3, 1
LBB0_11:                                //  %return
	sw x1, 4 ( x8 )
LBB0_12:                                //  %return
	add x3, x0, x12
LBB0_13:                                //  %return
	add x10, x0, x3
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
	.size	$_sungetc_r, ($func_end0)-($_sungetc_r)
	.cfi_endproc

	.globl	$__ssrefill_r
	.type	$__ssrefill_r,@function
$__ssrefill_r:                          //  @__ssrefill_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi9:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB1_5
LBB1_1:                                 //  %if.then
	addi x1, x8, 64
	beq x11, x1, LBB1_3
LBB1_2:                                 //  %if.then4
	call $_free_r
LBB1_3:                                 //  %if.end
	sw x0, 48 ( x8 )
	lw x1, 60 ( x8 )
	nop
	sw x1, 4 ( x8 )
	beqz x1, LBB1_5
LBB1_4:                                 //  %if.then10
	lw x1, 56 ( x8 )
	add x10, x0, x0
	sw x1, 0 ( x8 )
	jalr x0, LBB1_6 ( x0 )
LBB1_5:                                 //  %if.end12
	lw x1, 16 ( x8 )
	nop
	sw x1, 0 ( x8 )
	sw x0, 4 ( x8 )
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x8 )
	not x10, x0
LBB1_6:                                 //  %return
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi12:
	.cfi_adjust_cfa_offset -16
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ssrefill_r, ($func_end1)-($__ssrefill_r)
	.cfi_endproc

	.globl	$_sfread_r
	.type	$_sfread_r,@function
$_sfread_r:                             //  @_sfread_r
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
	sw x14, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x13
	add x10, x0, x8
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x12
	call $__mulsi3
	bgtu x10, x0, LBB2_2
LBB2_1:
	add x10, x0, x0
	jalr x0, LBB2_11 ( x0 )
LBB2_2:                                 //  %while.cond.preheader
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 4 ( x1 )
	lw x11, 0 ( x1 )
	bgtu x10, x4, LBB2_4
LBB2_3:
	add x3, x0, x10
	add x8, x0, x1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_10 ( x0 )
LBB2_4:                                 //  %while.body.lr.ph
	addi x3, x1, 64
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	add x8, x0, x1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
LBB2_5:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	lw x1, 0 ( x8 )
	sub x3, x3, x4
	add x1, x4, x1
	sw x1, 0 ( x8 )
	sw x0, 4 ( x8 )
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB2_12
LBB2_6:                                 //  %if.then.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB2_8
LBB2_7:                                 //  %if.then4.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x3
	call $_free_r
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_8:                                 //  %if.end.i
                                        //    in Loop: Header=BB2_5 Depth=1
	sw x0, 48 ( x8 )
	lw x1, 60 ( x8 )
	nop
	sw x1, 4 ( x8 )
	beqz x1, LBB2_12
LBB2_9:                                 //  %__ssrefill_r.exit.thread
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x11, 56 ( x8 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x4, x10
	sw x11, 0 ( x8 )
	add x4, x0, x1
	bgtu x3, x1, LBB2_5
LBB2_10:                                //  %while.end
	add x12, x0, x3
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	call $memcpy
	lw x1, 4 ( x8 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 4 ( x8 )
	lw x1, 0 ( x8 )
	nop
	add x1, x3, x1
	sw x1, 0 ( x8 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
LBB2_11:                                //  %cleanup
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
LBB2_12:                                //  %if.then6
	lw x1, 16 ( x8 )
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x10, x4, x3
	sw x1, 0 ( x8 )
	sw x0, 4 ( x8 )
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x8 )
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	jalr x0, LBB2_11 ( x0 )
$func_end2:
	.size	$_sfread_r, ($func_end2)-($_sfread_r)
	.cfi_endproc

	.globl	$__ssvfiscanf_r
	.type	$__ssvfiscanf_r,@function
$__ssvfiscanf_r:                        //  @__ssvfiscanf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -400
$cfi23:
	.cfi_adjust_cfa_offset 400
	sw x1, 396 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 388 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lh x1, 12 ( x8 )
	lui x3, 8192>>12 
	sw x13, 384 ( x2 )
	and x4, x3, x1
	bgtu x4, x0, LBB3_2
LBB3_1:                                 //  %if.then
	or x1, x3, x1
	sh x1, 12 ( x8 )
	ori x28, x0, -8193 & 0xfff
	lw x1, 100 ( x8 )
	slli x28, x28, 20
	lui x3, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sw x1, 100 ( x8 )
LBB3_2:                                 //  %for.cond.preheader
	lbu x1, 0 ( x12 )
	nop
	sh x1, 382 ( x2 )
	bgtu x1, x0, LBB3_4
LBB3_3:
	add x1, x0, x0
	jalr x0, LBB3_337 ( x0 )
LBB3_4:                                 //  %land.lhs.true.lr.ph
	add x3, x0, x0
	addi x4, x8, 66
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	addi x4, x8, 64
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x3
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x12
LBB3_5:                                 //  %land.lhs.true
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_7 Depth 2
                                        //      Child Loop BB3_18 Depth 2
                                        //        Child Loop BB3_19 Depth 3
                                        //          Child Loop BB3_20 Depth 4
                                        //      Child Loop BB3_79 Depth 2
                                        //      Child Loop BB3_96 Depth 2
                                        //      Child Loop BB3_100 Depth 2
                                        //      Child Loop BB3_129 Depth 2
                                        //      Child Loop BB3_266 Depth 2
                                        //      Child Loop BB3_175 Depth 2
                                        //      Child Loop BB3_179 Depth 2
                                        //      Child Loop BB3_205 Depth 2
                                        //      Child Loop BB3_236 Depth 2
                                        //      Child Loop BB3_247 Depth 2
                                        //      Child Loop BB3_143 Depth 2
                                        //      Child Loop BB3_153 Depth 2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	andi x1, x1, 255
	addi x4, x4, 1
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	addi x4, x3, 1
	add x3, x1, x4
	lbu x3, 0 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB3_16
LBB3_6:                                 //  %for.cond18.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 4 ( x8 )
	nop
LBB3_7:                                 //  %for.cond18
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	ble x1, x0, LBB3_9
LBB3_8:                                 //  %for.cond18.lor.lhs.false_crit_edge
                                        //    in Loop: Header=BB3_7 Depth=2
	lw x3, 0 ( x8 )
	jalr x0, LBB3_14 ( x0 )
LBB3_9:                                 //  %land.lhs.true21
                                        //    in Loop: Header=BB3_7 Depth=2
	lw x11, 48 ( x8 )
	nop
	bgtu x11, x0, LBB3_343
LBB3_342:                               //  %land.lhs.true21
                                        //    in Loop: Header=BB3_7 Depth=2
	jalr x0, LBB3_339 ( x0 )
LBB3_343:                               //  %land.lhs.true21
                                        //    in Loop: Header=BB3_7 Depth=2
LBB3_10:                                //  %if.then.i
                                        //    in Loop: Header=BB3_7 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_12
LBB3_11:                                //  %if.then4.i
                                        //    in Loop: Header=BB3_7 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x9
	call $_free_r
	add x9, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_12:                                //  %if.end.i
                                        //    in Loop: Header=BB3_7 Depth=2
	sw x0, 48 ( x8 )
	lw x1, 60 ( x8 )
	nop
	sw x1, 4 ( x8 )
	bgtu x1, x0, LBB3_345
LBB3_344:                               //  %if.end.i
                                        //    in Loop: Header=BB3_7 Depth=2
	jalr x0, LBB3_339 ( x0 )
LBB3_345:                               //  %if.end.i
                                        //    in Loop: Header=BB3_7 Depth=2
LBB3_13:                                //  %__ssrefill_r.exit.thread
                                        //    in Loop: Header=BB3_7 Depth=2
	lw x3, 56 ( x8 )
	nop
	sw x3, 0 ( x8 )
LBB3_14:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB3_7 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x7, x28
	lbu x5, 0 ( x3 )
	lw x4, 0 ( x4 )
	nop
	add x4, x5, x4
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	beqz x4, LBB3_59
LBB3_15:                                //  %if.end30
                                        //    in Loop: Header=BB3_7 Depth=2
	addi x1, x1, -1
	addi x3, x3, 1
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	addi x9, x9, 1
	jalr x0, LBB3_7 ( x0 )
LBB3_16:                                //  %if.end33
                                        //    in Loop: Header=BB3_5 Depth=1
	xori x1, x1, 37
	bgtu x1, x0, LBB3_23
LBB3_17:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x9, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB3_18:                                //  %again.outer
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB3_19 Depth 3
                                        //          Child Loop BB3_20 Depth 4
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
LBB3_19:                                //  %again.outer
                                        //    Parent Loop BB3_5 Depth=1
                                        //      Parent Loop BB3_18 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB3_20 Depth 4
	addi x4, x4, 1
LBB3_20:                                //  %again
                                        //    Parent Loop BB3_5 Depth=1
                                        //      Parent Loop BB3_18 Depth=2
                                        //        Parent Loop BB3_19 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	lbu x8, -1 ( x4 )
	addi x1, x0, 120
	bgtu x8, x1, LBB3_62
LBB3_21:                                //  %again
                                        //    in Loop: Header=BB3_20 Depth=4
	add x10, x0, x8
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI3_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI3_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB3_22:                                //  %literal.loopexit
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
LBB3_23:                                //  %literal
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 4 ( x8 )
	nop
	ble x1, x0, LBB3_25
LBB3_24:                                //  %literal.if.end52_crit_edge
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x3, 0 ( x8 )
	jalr x0, LBB3_30 ( x0 )
LBB3_25:                                //  %land.lhs.true48
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x11, 48 ( x8 )
	nop
	bgtu x11, x0, LBB3_347
LBB3_346:                               //  %land.lhs.true48
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_333 ( x0 )
LBB3_347:                               //  %land.lhs.true48
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_26:                                //  %if.then.i1028
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_28
LBB3_27:                                //  %if.then4.i1029
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x9
	call $_free_r
	add x9, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_28:                                //  %if.end.i1033
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x0, 48 ( x8 )
	lw x1, 60 ( x8 )
	nop
	sw x1, 4 ( x8 )
	bgtu x1, x0, LBB3_349
LBB3_348:                               //  %if.end.i1033
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_333 ( x0 )
LBB3_349:                               //  %if.end.i1033
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_29:                                //  %__ssrefill_r.exit1041.thread
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x3, 56 ( x8 )
	nop
	sw x3, 0 ( x8 )
LBB3_30:                                //  %if.end52
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x4, -1 ( x4 )
	lbu x5, 0 ( x3 )
	nop
	beq x5, x4, LBB3_351
LBB3_350:                               //  %if.end52
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_338 ( x0 )
LBB3_351:                               //  %if.end52
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_31:                                //  %if.end59
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x1, -1
	addi x3, x3, 1
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	addi x9, x9, 1
	jalr x0, LBB3_59 ( x0 )
LBB3_32:                                //  %sw.bb70
                                        //    in Loop: Header=BB3_19 Depth=3
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x4 )
	addi x3, x0, 108
	bne x1, x3, LBB3_34
LBB3_33:                                //    in Loop: Header=BB3_19 Depth=3
	addi x4, x4, 1
LBB3_34:                                //  %sw.bb70
                                        //    in Loop: Header=BB3_19 Depth=3
	addi x3, x0, 2
	addi x5, x0, 108
	beq x1, x5, LBB3_36
LBB3_35:                                //  %sw.bb70
                                        //    in Loop: Header=BB3_19 Depth=3
	slti x3, x0, 1
LBB3_36:                                //  %sw.bb70
                                        //    in Loop: Header=BB3_19 Depth=3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_19 ( x0 )
LBB3_37:                                //  %again.outer.backedge.loopexit1755
                                        //    in Loop: Header=BB3_18 Depth=2
	addi x1, x0, 16
LBB3_38:                                //  %again.outer
                                        //    in Loop: Header=BB3_18 Depth=2
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_18 ( x0 )
LBB3_39:                                //  %again.outer.backedge.loopexit1909
                                        //    in Loop: Header=BB3_18 Depth=2
	addi x1, x0, 4
	jalr x0, LBB3_38 ( x0 )
LBB3_40:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB3_18 Depth=2
	addi x1, x0, 2
	jalr x0, LBB3_38 ( x0 )
LBB3_41:                                //  %sw.bb83
                                        //    in Loop: Header=BB3_20 Depth=4
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	addi x1, x1, -48
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_20 ( x0 )
LBB3_42:                                //  %sw.bb84
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 1
LBB3_43:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x0, 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 10
LBB3_44:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	add x3, x0, x1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_71 ( x0 )
LBB3_45:                                //  %sw.bb88
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 1
	addi x1, x0, 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 8
	jalr x0, LBB3_44 ( x0 )
LBB3_46:                                //  %sw.bb92
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 512
LBB3_47:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x0, 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	jalr x0, LBB3_44 ( x0 )
LBB3_48:                                //  %sw.bb95
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x10, x2, 126
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__sccl
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 64
	slti x1, x0, 1
	jalr x0, LBB3_50 ( x0 )
LBB3_49:                                //  %sw.bb98
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 64
	add x1, x0, x0
LBB3_50:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_71 ( x0 )
LBB3_51:                                //  %sw.bb100
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 544
	jalr x0, LBB3_47 ( x0 )
LBB3_52:                                //  %sw.bb102
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	beqz x1, LBB3_54
LBB3_53:                                //    in Loop: Header=BB3_5 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_59 ( x0 )
LBB3_54:                                //  %if.end106
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 4
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB3_56
LBB3_55:                                //  %if.then109
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x9, 0 ( x1 )
	jalr x0, LBB3_59 ( x0 )
LBB3_56:                                //  %if.else111
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB3_60
LBB3_57:                                //  %if.then114
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB3_58:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x9, 0 ( x1 )
LBB3_59:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x4 )
	nop
	sh x1, 382 ( x2 )
	bgtu x1, x0, LBB3_5
	jalr x0, LBB3_338 ( x0 )
LBB3_60:                                //  %if.else116
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB3_57
LBB3_61:                                //  %if.then119
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	srai x3, x9, 31
	addi x4, x1, 4
	sw x4, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB3_58 ( x0 )
LBB3_62:                                //  %sw.default
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	lbu x1, 0 ( x1 )
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x1, x1, 3
	xori x1, x1, 1
	seqz x1, x1
	andi x1, x1, 1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x4, x4, x1
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_43 ( x0 )
LBB3_63:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
LBB3_64:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 10
LBB3_65:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	add x3, x0, x1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_70 ( x0 )
LBB3_66:                                //  %sw.epilog.loopexit1585
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB3_65 ( x0 )
LBB3_67:                                //  %sw.epilog.loopexit1756
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 8
	jalr x0, LBB3_65 ( x0 )
LBB3_68:                                //  %sw.epilog.loopexit1910
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	jalr x0, LBB3_64 ( x0 )
LBB3_69:                                //  %sw.epilog.loopexit2064
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x0, 2
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
LBB3_70:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
LBB3_71:                                //  %sw.epilog
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x12, 4 ( x8 )
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	bgt x12, x0, LBB3_77
LBB3_72:                                //  %land.lhs.true140
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x11, 48 ( x8 )
	nop
	bgtu x11, x0, LBB3_353
LBB3_352:                               //  %land.lhs.true140
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_333 ( x0 )
LBB3_353:                               //  %land.lhs.true140
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_73:                                //  %if.then.i1048
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_75
LBB3_74:                                //  %if.then4.i1049
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $_free_r
	add x4, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_75:                                //  %if.end.i1053
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x0, 48 ( x8 )
	lw x12, 60 ( x8 )
	nop
	sw x12, 4 ( x8 )
	bgtu x12, x0, LBB3_355
LBB3_354:                               //  %if.end.i1053
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_333 ( x0 )
LBB3_355:                               //  %if.end.i1053
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_76:                                //  %__ssrefill_r.exit1061.thread
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 56 ( x8 )
	nop
	sw x1, 0 ( x8 )
LBB3_77:                                //  %if.end144
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x4, 64
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB3_88
LBB3_78:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 0 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
LBB3_79:                                //  %while.cond.preheader
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB3_88
LBB3_80:                                //  %while.body
                                        //    in Loop: Header=BB3_79 Depth=2
	addi x3, x12, -1
	slti x4, x12, 2
	sw x3, 4 ( x8 )
	bgtu x4, x0, LBB3_83
LBB3_81:                                //  %if.then161
                                        //    in Loop: Header=BB3_79 Depth=2
	addi x1, x1, 1
	sw x1, 0 ( x8 )
	add x12, x0, x3
LBB3_82:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB3_79 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lbu x4, 0 ( x1 )
	lw x3, 0 ( x3 )
	addi x9, x9, 1
	jalr x0, LBB3_79 ( x0 )
LBB3_83:                                //  %if.else164
                                        //    in Loop: Header=BB3_79 Depth=2
	lw x11, 48 ( x8 )
	nop
	bgtu x11, x0, LBB3_357
LBB3_356:                               //  %if.else164
                                        //    in Loop: Header=BB3_79 Depth=2
	jalr x0, LBB3_333 ( x0 )
LBB3_357:                               //  %if.else164
                                        //    in Loop: Header=BB3_79 Depth=2
LBB3_84:                                //  %if.then.i1068
                                        //    in Loop: Header=BB3_79 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_86
LBB3_85:                                //  %if.then4.i1069
                                        //    in Loop: Header=BB3_79 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x9
	call $_free_r
	add x9, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_86:                                //  %if.end.i1073
                                        //    in Loop: Header=BB3_79 Depth=2
	sw x0, 48 ( x8 )
	lw x12, 60 ( x8 )
	nop
	sw x12, 4 ( x8 )
	bgtu x12, x0, LBB3_359
LBB3_358:                               //  %if.end.i1073
                                        //    in Loop: Header=BB3_79 Depth=2
	jalr x0, LBB3_333 ( x0 )
LBB3_359:                               //  %if.end.i1073
                                        //    in Loop: Header=BB3_79 Depth=2
LBB3_87:                                //  %__ssrefill_r.exit1081.thread
                                        //    in Loop: Header=BB3_79 Depth=2
	lw x1, 56 ( x8 )
	nop
	sw x1, 0 ( x8 )
	jalr x0, LBB3_82 ( x0 )
LBB3_88:                                //  %if.end170
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 3
	xori x3, x1, 1
	sw x9, 52 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB3_138
LBB3_89:                                //  %if.end170
                                        //    in Loop: Header=BB3_5 Depth=1
	xori x3, x1, 2
	beqz x3, LBB3_166
LBB3_90:                                //  %if.end170
                                        //    in Loop: Header=BB3_5 Depth=1
	xori x1, x1, 3
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB3_258
LBB3_91:                                //  %sw.bb171
                                        //    in Loop: Header=BB3_5 Depth=1
	slti x5, x0, 1
	add x1, x0, x0
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB3_93
LBB3_92:                                //  %sw.bb171
                                        //    in Loop: Header=BB3_5 Depth=1
	add x5, x0, x3
LBB3_93:                                //  %sw.bb171
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x4, 1
	beqz x1, LBB3_125
LBB3_94:                                //  %if.then178
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 76
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	add x8, x0, x4
	call $memset
	andi x1, x8, 16
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB3_99
LBB3_95:                                //  %while.body190.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	add x8, x0, x0
LBB3_96:                                //  %while.body190
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	bne x8, x10, LBB3_361
LBB3_360:                               //  %while.body190
                                        //    in Loop: Header=BB3_96 Depth=2
	jalr x0, LBB3_334 ( x0 )
LBB3_361:                               //  %while.body190
                                        //    in Loop: Header=BB3_96 Depth=2
LBB3_97:                                //  %if.end195
                                        //    in Loop: Header=BB3_96 Depth=2
	addi x12, x2, 86
	add x1, x8, x12
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x5 )
	nop
	lb x4, 0 ( x3 )
	nop
	sb x4, 0 ( x1 )
	lw x1, 4 ( x5 )
	nop
	addi x1, x1, -1
	sw x1, 4 ( x5 )
	addi x1, x3, 1
	sw x1, 0 ( x5 )
	addi x8, x8, 1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x0
	add x13, x0, x8
	addi x14, x2, 76
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB3_114
LBB3_98:                                //    in Loop: Header=BB3_96 Depth=2
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_116 ( x0 )
LBB3_99:                                //  %while.body190.us.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
LBB3_100:                               //  %while.body190.us
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	bne x8, x10, LBB3_363
LBB3_362:                               //  %while.body190.us
                                        //    in Loop: Header=BB3_100 Depth=2
	jalr x0, LBB3_334 ( x0 )
LBB3_363:                               //  %while.body190.us
                                        //    in Loop: Header=BB3_100 Depth=2
LBB3_101:                               //  %if.end195.us
                                        //    in Loop: Header=BB3_100 Depth=2
	addi x12, x2, 86
	add x1, x8, x12
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x5 )
	nop
	lb x4, 0 ( x3 )
	nop
	sb x4, 0 ( x1 )
	lw x1, 4 ( x5 )
	nop
	addi x1, x1, -1
	sw x1, 4 ( x5 )
	addi x1, x3, 1
	sw x1, 0 ( x5 )
	addi x8, x8, 1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 76
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB3_103
LBB3_102:                               //    in Loop: Header=BB3_100 Depth=2
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_107 ( x0 )
LBB3_103:                               //  %if.end195.us
                                        //    in Loop: Header=BB3_100 Depth=2
	beqz x10, LBB3_105
LBB3_104:                               //  %if.end195.us
                                        //    in Loop: Header=BB3_100 Depth=2
	xori x1, x10, -1
	bgtu x1, x0, LBB3_106
	jalr x0, LBB3_334 ( x0 )
LBB3_105:                               //  %if.then214.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB3_106:                               //  %if.then218.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x8
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
LBB3_107:                               //  %if.end226.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB3_113
LBB3_108:                               //  %land.lhs.true230.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 48 ( x1 )
	nop
	beqz x11, LBB3_123
LBB3_109:                               //  %if.then.i1088.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_111
LBB3_110:                               //  %if.then4.i1089.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
LBB3_111:                               //  %if.end.i1093.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x3 )
	lw x1, 60 ( x3 )
	nop
	sw x1, 4 ( x3 )
	beqz x1, LBB3_123
LBB3_112:                               //  %__ssrefill_r.exit1101.thread.us
                                        //    in Loop: Header=BB3_100 Depth=2
	lw x1, 56 ( x3 )
	nop
	sw x1, 0 ( x3 )
LBB3_113:                               //  %while.cond187.backedge.us
                                        //    in Loop: Header=BB3_100 Depth=2
	bgtu x5, x0, LBB3_100
	jalr x0, LBB3_124 ( x0 )
LBB3_114:                               //  %if.end195
                                        //    in Loop: Header=BB3_96 Depth=2
	xori x1, x10, -1
	bgtu x1, x0, LBB3_365
LBB3_364:                               //  %if.end195
                                        //    in Loop: Header=BB3_96 Depth=2
	jalr x0, LBB3_334 ( x0 )
LBB3_365:                               //  %if.end195
                                        //    in Loop: Header=BB3_96 Depth=2
LBB3_115:                               //  %if.then218
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x8
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
LBB3_116:                               //  %if.end226
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB3_118
LBB3_117:                               //  %while.cond187.backedge
                                        //    in Loop: Header=BB3_96 Depth=2
	bgtu x5, x0, LBB3_96
	jalr x0, LBB3_124 ( x0 )
LBB3_118:                               //  %land.lhs.true230
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 48 ( x1 )
	nop
	beqz x11, LBB3_123
LBB3_119:                               //  %if.then.i1088
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_121
LBB3_120:                               //  %if.then4.i1089
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
LBB3_121:                               //  %if.end.i1093
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x3 )
	lw x1, 60 ( x3 )
	nop
	sw x1, 4 ( x3 )
	beqz x1, LBB3_123
LBB3_122:                               //  %__ssrefill_r.exit1101.thread
                                        //    in Loop: Header=BB3_96 Depth=2
	lw x1, 56 ( x3 )
	nop
	sw x1, 0 ( x3 )
	bgtu x5, x0, LBB3_96
	jalr x0, LBB3_124 ( x0 )
LBB3_123:                               //  %if.then233
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x3 )
	nop
	sw x1, 0 ( x3 )
	sw x0, 4 ( x3 )
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x3 )
	beqz x8, LBB3_367
LBB3_366:                               //  %if.then233
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_334 ( x0 )
LBB3_367:                               //  %if.then233
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_124:                               //  %cleanup
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 4
	xori x1, x1, 1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_53 ( x0 )
LBB3_125:                               //  %if.else245
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x4, 16
	beqz x1, LBB3_136
LBB3_126:                               //  %for.cond249.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	bgt x5, x12, LBB3_128
LBB3_127:                               //    in Loop: Header=BB3_5 Depth=1
	add x4, x0, x8
	add x8, x0, x0
	add x3, x0, x12
	jalr x0, LBB3_134 ( x0 )
LBB3_128:                               //  %if.then253.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x11, 48 ( x8 )
	add x4, x0, x8
	add x8, x0, x0
LBB3_129:                               //  %if.then253
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x1, x12, x1
	sw x1, 0 ( x4 )
	add x8, x8, x12
	bgtu x11, x0, LBB3_369
LBB3_368:                               //  %if.then253
                                        //    in Loop: Header=BB3_129 Depth=2
	jalr x0, LBB3_340 ( x0 )
LBB3_369:                               //  %if.then253
                                        //    in Loop: Header=BB3_129 Depth=2
LBB3_130:                               //  %if.then.i1108
                                        //    in Loop: Header=BB3_129 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_132
LBB3_131:                               //  %if.then4.i1109
                                        //    in Loop: Header=BB3_129 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x12, 44 ( x2 )               //  4-byte Folded Spill
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	call $_free_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_132:                               //  %if.end.i1113
                                        //    in Loop: Header=BB3_129 Depth=2
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x4 )
	lw x3, 60 ( x4 )
	nop
	sw x3, 4 ( x4 )
	bgtu x3, x0, LBB3_371
LBB3_370:                               //  %if.end.i1113
                                        //    in Loop: Header=BB3_129 Depth=2
	jalr x0, LBB3_340 ( x0 )
LBB3_371:                               //  %if.end.i1113
                                        //    in Loop: Header=BB3_129 Depth=2
LBB3_133:                               //  %__ssrefill_r.exit1121.thread
                                        //    in Loop: Header=BB3_129 Depth=2
	sub x5, x5, x12
	lw x1, 56 ( x4 )
	nop
	sw x1, 0 ( x4 )
	add x11, x0, x0
	add x12, x0, x3
	bgt x5, x3, LBB3_129
LBB3_134:                               //  %if.else266
                                        //    in Loop: Header=BB3_5 Depth=1
	sub x3, x3, x5
	sw x3, 4 ( x4 )
	add x1, x5, x1
	sw x1, 0 ( x4 )
	add x8, x8, x5
LBB3_135:                               //  %cleanup275.thread
                                        //    in Loop: Header=BB3_5 Depth=1
	add x9, x9, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_59 ( x0 )
LBB3_136:                               //  %if.else278
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x11, 0 ( x1 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	slti x12, x0, 1
	add x13, x0, x5
	add x14, x0, x8
	call $_sfread_r
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	bgtu x10, x0, LBB3_373
LBB3_372:                               //  %if.else278
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_334 ( x0 )
LBB3_373:                               //  %if.else278
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_137:                               //    in Loop: Header=BB3_5 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	add x9, x9, x10
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_59 ( x0 )
LBB3_138:                               //  %sw.bb292
                                        //    in Loop: Header=BB3_5 Depth=1
	not x1, x0
	add x13, x0, x1
	add x1, x0, x0
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB3_140
LBB3_139:                               //  %sw.bb292
                                        //    in Loop: Header=BB3_5 Depth=1
	add x13, x0, x3
LBB3_140:                               //  %sw.bb292
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	beqz x1, LBB3_151
LBB3_141:                               //  %while.cond300.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	nop
	lbu x3, 0 ( x1 )
	addi x4, x2, 126
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB3_375
LBB3_374:                               //  %while.cond300.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_338 ( x0 )
LBB3_375:                               //  %while.cond300.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
LBB3_142:                               //  %while.body304.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	slti x3, x0, 1
	sw x13, 68 ( x2 )               //  4-byte Folded Spill
LBB3_143:                               //  %while.body304
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x8, x0, x3
	addi x3, x12, -1
	addi x1, x1, 1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x4 )
	sw x1, 0 ( x4 )
	beq x13, x8, LBB3_135
LBB3_144:                               //  %if.end314
                                        //    in Loop: Header=BB3_143 Depth=2
	slti x4, x12, 2
	add x12, x0, x3
	bgtu x4, x0, LBB3_146
LBB3_145:                               //  %while.cond300.backedge
                                        //    in Loop: Header=BB3_143 Depth=2
	lbu x4, 0 ( x1 )
	addi x3, x8, 1
	addi x5, x2, 126
	add x4, x4, x5
	lbu x4, 0 ( x4 )
	nop
	beqz x4, LBB3_135
	jalr x0, LBB3_143 ( x0 )
LBB3_146:                               //  %land.lhs.true318
                                        //    in Loop: Header=BB3_143 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 48 ( x3 )
	nop
	beqz x11, LBB3_244
LBB3_147:                               //  %if.then.i1128
                                        //    in Loop: Header=BB3_143 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_149
LBB3_148:                               //  %if.then4.i1129
                                        //    in Loop: Header=BB3_143 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_149:                               //  %if.end.i1133
                                        //    in Loop: Header=BB3_143 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x3 )
	lw x12, 60 ( x3 )
	nop
	sw x12, 4 ( x3 )
	beqz x12, LBB3_244
LBB3_150:                               //  %__ssrefill_r.exit1141.thread
                                        //    in Loop: Header=BB3_143 Depth=2
	lw x1, 56 ( x3 )
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB3_145 ( x0 )
LBB3_151:                               //  %if.else332
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	lw x3, 384 ( x2 )
	lbu x4, 0 ( x1 )
	addi x5, x3, 4
	sw x5, 384 ( x2 )
	lw x10, 0 ( x3 )
	addi x3, x2, 126
	add x3, x4, x3
	lbu x4, 0 ( x3 )
	add x3, x0, x10
	beqz x4, LBB3_164
LBB3_152:                               //  %while.body339.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x13, x13, -1
	add x8, x0, x0
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x13, 36 ( x2 )               //  4-byte Folded Spill
LBB3_153:                               //  %while.body339
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x12, -1
	addi x4, x1, 1
	sw x3, 4 ( x5 )
	sw x4, 0 ( x5 )
	lb x1, 0 ( x1 )
	add x14, x8, x10
	sb x1, 0 ( x14 )
	beq x13, x8, LBB3_163
LBB3_154:                               //  %if.end349
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x12, 4 ( x5 )
	nop
	ble x12, x0, LBB3_157
LBB3_155:                               //  %if.end349.while.cond334.backedge_crit_edge
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x1, 0 ( x5 )
	nop
LBB3_156:                               //  %while.cond334.backedge
                                        //    in Loop: Header=BB3_153 Depth=2
	lbu x3, 0 ( x1 )
	addi x8, x8, 1
	addi x4, x2, 126
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x0, LBB3_153
	jalr x0, LBB3_163 ( x0 )
LBB3_157:                               //  %land.lhs.true353
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x11, 48 ( x5 )
	nop
	beqz x11, LBB3_162
LBB3_158:                               //  %if.then.i1148
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_160
LBB3_159:                               //  %if.then4.i1149
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x14, 68 ( x2 )               //  4-byte Folded Spill
	call $_free_r
	lw x14, 68 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_160:                               //  %if.end.i1153
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x5 )
	lw x12, 60 ( x5 )
	nop
	sw x12, 4 ( x5 )
	beqz x12, LBB3_162
LBB3_161:                               //  %__ssrefill_r.exit1161.thread
                                        //    in Loop: Header=BB3_153 Depth=2
	lw x1, 56 ( x5 )
	nop
	sw x1, 0 ( x5 )
	jalr x0, LBB3_156 ( x0 )
LBB3_162:                               //  %if.then356
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 16 ( x5 )
	xori x3, x8, -1
	sw x1, 0 ( x5 )
	sw x0, 4 ( x5 )
	lh x1, 12 ( x5 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x5 )
	beqz x3, LBB3_334
LBB3_163:                               //  %while.end362.loopexit
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x3, x14, 1
LBB3_164:                               //  %while.end362
                                        //    in Loop: Header=BB3_5 Depth=1
	sub x8, x3, x10
	beqz x8, LBB3_338
LBB3_165:                               //  %if.end366
                                        //    in Loop: Header=BB3_5 Depth=1
	sb x0, 0 ( x3 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_135 ( x0 )
LBB3_166:                               //  %sw.bb370
                                        //    in Loop: Header=BB3_5 Depth=1
	not x1, x0
	add x10, x0, x1
	add x1, x0, x0
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x1, LBB3_168
LBB3_167:                               //  %sw.bb370
                                        //    in Loop: Header=BB3_5 Depth=1
	add x10, x0, x4
LBB3_168:                               //  %sw.bb370
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB3_233
LBB3_169:                               //  %if.then377
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 76
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x4, x1, 16
	addi x1, x2, 382
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB3_171
LBB3_170:                               //  %if.then383
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB3_171:                               //  %while.cond387.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	beqz x5, LBB3_230
LBB3_172:                               //  %while.cond387.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x1 )
	lw x3, 0 ( x8 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	bgtu x1, x0, LBB3_230
LBB3_173:                               //  %while.body397.lr.ph
                                        //    in Loop: Header=BB3_5 Depth=1
	beqz x4, LBB3_178
LBB3_174:                               //    in Loop: Header=BB3_5 Depth=1
	add x8, x0, x0
LBB3_175:                               //  %while.body397
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	beq x8, x10, LBB3_334
LBB3_176:                               //  %if.end402
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	addi x12, x2, 86
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x5 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x5 )
	sw x1, 0 ( x5 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	addi x14, x2, 76
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB3_198
LBB3_177:                               //    in Loop: Header=BB3_175 Depth=2
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_220 ( x0 )
LBB3_178:                               //  %while.body397.us.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	add x8, x0, x0
LBB3_179:                               //  %while.body397.us
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	add x7, x0, x8
	beq x7, x10, LBB3_334
LBB3_180:                               //  %if.end402.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	addi x12, x2, 86
	add x3, x7, x12
	addi x7, x7, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x5 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x5 )
	sw x1, 0 ( x5 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x7
	add x13, x0, x7
	addi x14, x2, 76
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB3_182
LBB3_181:                               //    in Loop: Header=BB3_179 Depth=2
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_189 ( x0 )
LBB3_182:                               //  %if.end402.us
                                        //    in Loop: Header=BB3_179 Depth=2
	beqz x10, LBB3_185
LBB3_183:                               //  %if.end402.us
                                        //    in Loop: Header=BB3_179 Depth=2
	xori x1, x10, -1
	beqz x1, LBB3_334
LBB3_184:                               //  %if.end402.us.if.then422.us_crit_edge
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB3_186 ( x0 )
LBB3_185:                               //  %if.then418.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB3_186:                               //  %if.then422.us
                                        //    in Loop: Header=BB3_179 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB3_188
LBB3_187:                               //    in Loop: Header=BB3_5 Depth=1
	lui x5, 65503 >> 12 & 0xfffff
	add x7, x0, x8
	jalr x0, LBB3_204 ( x0 )
LBB3_188:                               //  %if.end436.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_189:                               //  %if.end445.us
                                        //    in Loop: Header=BB3_179 Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB3_191
LBB3_190:                               //  %if.end445.us.while.cond387.backedge.us_crit_edge
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x1, 0 ( x3 )
	jalr x0, LBB3_196 ( x0 )
LBB3_191:                               //  %land.lhs.true449.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x11, 48 ( x3 )
	nop
	beqz x11, LBB3_229
LBB3_192:                               //  %if.then.i1177.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_194
LBB3_193:                               //  %if.then4.i1178.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_194:                               //  %if.end.i1182.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x3 )
	lw x1, 60 ( x3 )
	nop
	sw x1, 4 ( x3 )
	beqz x1, LBB3_229
LBB3_195:                               //  %__ssrefill_r.exit1190.thread.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lw x1, 56 ( x3 )
	nop
	sw x1, 0 ( x3 )
LBB3_196:                               //  %while.cond387.backedge.us
                                        //    in Loop: Header=BB3_179 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x4, x28
	beqz x5, LBB3_230
LBB3_197:                               //  %while.cond387.backedge.us
                                        //    in Loop: Header=BB3_179 Depth=2
	lbu x1, 0 ( x1 )
	lw x3, 0 ( x3 )
	nop
	add x1, x1, x3
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	beqz x1, LBB3_179
	jalr x0, LBB3_230 ( x0 )
LBB3_198:                               //  %if.end402
                                        //    in Loop: Header=BB3_175 Depth=2
	beqz x10, LBB3_201
LBB3_199:                               //  %if.end402
                                        //    in Loop: Header=BB3_175 Depth=2
	xori x1, x10, -1
	beqz x1, LBB3_334
LBB3_200:                               //  %if.end402.if.then422_crit_edge
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB3_202 ( x0 )
LBB3_201:                               //  %if.then418
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB3_202:                               //  %if.then422
                                        //    in Loop: Header=BB3_175 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB3_219
LBB3_203:                               //    in Loop: Header=BB3_5 Depth=1
	lui x5, 65503 >> 12 & 0xfffff
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	nop
LBB3_204:                               //  %while.cond427.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	beqz x7, LBB3_230
LBB3_205:                               //  %while.body430
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	ori x28, x0, 65503 & 0xfff
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 12 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x5, x28
	and x1, x3, x1
	addi x3, x2, 86
	add x3, x7, x3
	lb x9, -1 ( x3 )
	sh x1, 12 ( x8 )
	lw x1, 48 ( x8 )
	addi x7, x7, -1
	beqz x1, LBB3_211
LBB3_206:                               //  %if.then6.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x1, 52 ( x8 )
	lw x3, 4 ( x8 )
	nop
	bgt x1, x3, LBB3_208
LBB3_207:                               //  %land.lhs.true.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x7, 36 ( x2 )                //  4-byte Folded Spill
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	call $__submore
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lui x5, 65503 >> 12 & 0xfffff
	bgtu x10, x0, LBB3_210
LBB3_208:                               //  %if.end11.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 0 ( x8 )
	sb x9, -1 ( x1 )
	jalr x0, LBB3_218 ( x0 )
LBB3_209:                               //  %while.cond427.backedge.sink.split
                                        //    in Loop: Header=BB3_205 Depth=2
	sw x1, 4 ( x8 )
LBB3_210:                               //  %while.cond427.backedge
                                        //    in Loop: Header=BB3_205 Depth=2
	bgtu x7, x0, LBB3_205
	jalr x0, LBB3_230 ( x0 )
LBB3_211:                               //  %if.end14.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB3_214
LBB3_212:                               //  %if.end14.if.end34_crit_edge.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x1, 0 ( x8 )
LBB3_213:                               //  %if.end34.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x3, 4 ( x8 )
	nop
	sw x3, 60 ( x8 )
	sw x1, 56 ( x8 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x8 )
	addi x1, x0, 3
	sw x1, 52 ( x8 )
	sb x9, 66 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	slti x1, x0, 1
	jalr x0, LBB3_209 ( x0 )
LBB3_214:                               //  %land.lhs.true18.i
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x1, 0 ( x8 )
	nop
	bgtu x1, x3, LBB3_216
LBB3_215:                               //    in Loop: Header=BB3_205 Depth=2
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_213 ( x0 )
LBB3_216:                               //  %land.lhs.true24.i
                                        //    in Loop: Header=BB3_205 Depth=2
	andi x3, x9, 255
	lbu x4, -1 ( x1 )
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	bne x4, x3, LBB3_213
LBB3_217:                               //  %if.then29.i
                                        //    in Loop: Header=BB3_205 Depth=2
	addi x1, x1, -1
	sw x1, 0 ( x8 )
LBB3_218:                               //  %while.cond427.backedge.sink.split
                                        //    in Loop: Header=BB3_205 Depth=2
	lw x1, 4 ( x8 )
	nop
	addi x1, x1, 1
	jalr x0, LBB3_209 ( x0 )
LBB3_219:                               //  %if.end436
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_220:                               //  %if.end445
                                        //    in Loop: Header=BB3_175 Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	nop
	ble x1, x0, LBB3_224
LBB3_221:                               //  %if.end445.while.cond387.backedge_crit_edge
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x1, 0 ( x3 )
LBB3_222:                               //  %while.cond387.backedge
                                        //    in Loop: Header=BB3_175 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x4, x28
	beqz x5, LBB3_230
LBB3_223:                               //  %while.cond387.backedge
                                        //    in Loop: Header=BB3_175 Depth=2
	lbu x1, 0 ( x1 )
	lw x3, 0 ( x3 )
	nop
	add x1, x1, x3
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	beqz x1, LBB3_175
	jalr x0, LBB3_230 ( x0 )
LBB3_224:                               //  %land.lhs.true449
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x11, 48 ( x3 )
	nop
	beqz x11, LBB3_229
LBB3_225:                               //  %if.then.i1177
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_227
LBB3_226:                               //  %if.then4.i1178
                                        //    in Loop: Header=BB3_175 Depth=2
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_227:                               //  %if.end.i1182
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x3 )
	lw x1, 60 ( x3 )
	nop
	sw x1, 4 ( x3 )
	beqz x1, LBB3_229
LBB3_228:                               //  %__ssrefill_r.exit1190.thread
                                        //    in Loop: Header=BB3_175 Depth=2
	lw x1, 56 ( x3 )
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB3_222 ( x0 )
LBB3_229:                               //  %if.then452
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x3 )
	nop
	sw x1, 0 ( x3 )
	sw x0, 4 ( x3 )
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x3 )
	bgtu x8, x0, LBB3_334
LBB3_230:                               //  %while.end458
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB3_232
LBB3_231:                               //    in Loop: Header=BB3_5 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	jalr x0, LBB3_59 ( x0 )
LBB3_232:                               //  %if.then461
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB3_231 ( x0 )
LBB3_233:                               //  %if.else467
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	andi x1, x3, 16
	beqz x1, LBB3_245
LBB3_234:                               //  %while.cond471.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	add x8, x0, x0
	bgtu x3, x0, LBB3_135
LBB3_235:                               //  %while.body479.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	slti x3, x0, 1
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
LBB3_236:                               //  %while.body479
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x8, x0, x3
	addi x3, x12, -1
	addi x1, x1, 1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x4 )
	sw x1, 0 ( x4 )
	beq x10, x8, LBB3_135
LBB3_237:                               //  %if.end489
                                        //    in Loop: Header=BB3_236 Depth=2
	slti x4, x12, 2
	add x12, x0, x3
	bgtu x4, x0, LBB3_239
LBB3_238:                               //  %while.cond471.backedge
                                        //    in Loop: Header=BB3_236 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lbu x4, 0 ( x1 )
	lw x5, 0 ( x3 )
	addi x3, x8, 1
	add x4, x4, x5
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	bgtu x4, x0, LBB3_135
	jalr x0, LBB3_236 ( x0 )
LBB3_239:                               //  %land.lhs.true493
                                        //    in Loop: Header=BB3_236 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 48 ( x3 )
	nop
	beqz x11, LBB3_244
LBB3_240:                               //  %if.then.i1197
                                        //    in Loop: Header=BB3_236 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_242
LBB3_241:                               //  %if.then4.i1198
                                        //    in Loop: Header=BB3_236 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_242:                               //  %if.end.i1202
                                        //    in Loop: Header=BB3_236 Depth=2
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x3 )
	lw x12, 60 ( x3 )
	nop
	sw x12, 4 ( x3 )
	beqz x12, LBB3_244
LBB3_243:                               //  %__ssrefill_r.exit1210.thread
                                        //    in Loop: Header=BB3_236 Depth=2
	lw x1, 56 ( x3 )
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB3_238 ( x0 )
LBB3_244:                               //  %if.then321
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 16 ( x3 )
	nop
	sw x1, 0 ( x3 )
	sw x0, 4 ( x3 )
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x3 )
	jalr x0, LBB3_135 ( x0 )
LBB3_245:                               //  %if.else500
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	lw x5, 384 ( x2 )
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	addi x4, x5, 4
	sw x4, 384 ( x2 )
	lw x4, 0 ( x5 )
	andi x3, x3, 8
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x4
	bgtu x3, x0, LBB3_257
LBB3_246:                               //  %while.body511.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	slti x3, x0, 1
	sub x8, x3, x10
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
LBB3_247:                               //  %while.body511
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x0, x3
	addi x3, x12, -1
	addi x4, x1, 1
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x5 )
	sw x4, 0 ( x5 )
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x13 )
	beqz x8, LBB3_257
LBB3_248:                               //  %if.end521
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x12, 4 ( x5 )
	nop
	ble x12, x0, LBB3_251
LBB3_249:                               //  %if.end521.while.cond502.backedge_crit_edge
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x1, 0 ( x5 )
LBB3_250:                               //  %while.cond502.backedge
                                        //    in Loop: Header=BB3_247 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lbu x4, 0 ( x1 )
	lw x5, 0 ( x3 )
	addi x3, x13, 1
	addi x8, x8, 1
	add x4, x4, x5
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	beqz x4, LBB3_247
	jalr x0, LBB3_257 ( x0 )
LBB3_251:                               //  %land.lhs.true525
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x11, 48 ( x5 )
	nop
	beqz x11, LBB3_256
LBB3_252:                               //  %if.then.i1217
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_254
LBB3_253:                               //  %if.then4.i1218
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x13, 68 ( x2 )               //  4-byte Folded Spill
	call $_free_r
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_254:                               //  %if.end.i1222
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 48 ( x5 )
	lw x12, 60 ( x5 )
	nop
	sw x12, 4 ( x5 )
	beqz x12, LBB3_256
LBB3_255:                               //  %__ssrefill_r.exit1230.thread
                                        //    in Loop: Header=BB3_247 Depth=2
	lw x1, 56 ( x5 )
	nop
	sw x1, 0 ( x5 )
	jalr x0, LBB3_250 ( x0 )
LBB3_256:                               //  %__ssrefill_r.exit1230
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 16 ( x5 )
	nop
	sw x1, 0 ( x5 )
	sw x0, 4 ( x5 )
	lh x1, 12 ( x5 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x5 )
LBB3_257:                               //  %while.end530
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x9, x1
	sb x0, 0 ( x13 )
	add x9, x13, x1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_59 ( x0 )
LBB3_258:                               //  %sw.bb538
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	addi x3, x0, 39
	add x10, x0, x3
	addi x3, x0, 38
	bgtu x1, x3, LBB3_260
LBB3_259:                               //  %sw.bb538
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
LBB3_260:                               //  %sw.bb538
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, 3456 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 3456 >> 12 & 0xfffff
	or x3, x3, x28
	or x5, x3, x4
	bgtu x10, x0, LBB3_262
LBB3_261:                               //    in Loop: Header=BB3_5 Depth=1
	add x1, x0, x0
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x14, x0, x1
	jalr x0, LBB3_298 ( x0 )
LBB3_262:                               //  %for.body549.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x3, x0, 38
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	bgeu x3, x1, LBB3_264
LBB3_263:                               //    in Loop: Header=BB3_5 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -39
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB3_265 ( x0 )
LBB3_264:                               //  %for.body549.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB3_265:                               //  %for.body549.preheader
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x11, 0 ( x8 )
	addi x3, x2, 86
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x14, x0, x1
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB3_266:                               //  %for.body549
                                        //    Parent Loop BB3_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x3, 0 ( x11 )
	nop
	addi x10, x3, -43
	addi x1, x0, 77
	bgtu x10, x1, LBB3_298
LBB3_267:                               //  %for.body549
                                        //    in Loop: Header=BB3_266 Depth=2
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 4
	sw x13, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sw x14, 68 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x14, 68 ( x2 )               //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	ori x28, x0, JTI3_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI3_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB3_268:                               //  %sw.bb552
                                        //    in Loop: Header=BB3_266 Depth=2
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2048 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x5
	beqz x1, LBB3_289
LBB3_269:                               //  %if.end556
                                        //    in Loop: Header=BB3_266 Depth=2
	add x1, x0, x0
	bne x13, x1, LBB3_271
LBB3_270:                               //    in Loop: Header=BB3_266 Depth=2
	ori x5, x5, 512
LBB3_271:                               //  %if.end556
                                        //    in Loop: Header=BB3_266 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	beq x13, x3, LBB3_273
LBB3_272:                               //  %if.end556
                                        //    in Loop: Header=BB3_266 Depth=2
	add x1, x0, x13
LBB3_273:                               //  %if.end556
                                        //    in Loop: Header=BB3_266 Depth=2
	andi x3, x5, 1024
	beqz x3, LBB3_275
LBB3_274:                               //  %if.then564
                                        //    in Loop: Header=BB3_266 Depth=2
	andi x5, x5, -1409
	jalr x0, LBB3_288 ( x0 )
LBB3_275:                               //  %if.end566
                                        //    in Loop: Header=BB3_266 Depth=2
	add x3, x0, x0
	add x4, x0, x3
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	beq x10, x4, LBB3_277
LBB3_276:                               //  %if.end566
                                        //    in Loop: Header=BB3_266 Depth=2
	addi x3, x10, -1
LBB3_277:                               //  %if.end566
                                        //    in Loop: Header=BB3_266 Depth=2
	sltu x4, x0, x10
	andi x4, x4, 1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x4, x10
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	andi x5, x5, -897
	add x13, x0, x1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB3_290 ( x0 )
LBB3_278:                               //  %sw.bb574
                                        //    in Loop: Header=BB3_266 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	and x5, x1, x5
	slli x1, x13, 1
	ori x28, x0, $__ssvfiscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ssvfiscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x13, 0 ( x1 )
	jalr x0, LBB3_289 ( x0 )
LBB3_279:                               //  %sw.bb578
                                        //    in Loop: Header=BB3_266 Depth=2
	slli x1, x13, 1
	ori x28, x0, $__ssvfiscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ssvfiscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x1, 0 ( x1 )
	addi x3, x13, -1
	sltiu x3, x3, 8
	beqz x3, LBB3_281
LBB3_280:                               //    in Loop: Header=BB3_5 Depth=1
	add x13, x0, x1
	jalr x0, LBB3_298 ( x0 )
LBB3_281:                               //  %if.end584
                                        //    in Loop: Header=BB3_266 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2945 >> 12 & 0xfffff
	or x3, x3, x28
	and x5, x3, x5
	jalr x0, LBB3_288 ( x0 )
LBB3_282:                               //  %sw.bb586
                                        //    in Loop: Header=BB3_266 Depth=2
	slti x1, x13, 11
	bgtu x1, x0, LBB3_298
LBB3_283:                               //  %if.end590
                                        //    in Loop: Header=BB3_266 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	and x5, x1, x5
	jalr x0, LBB3_289 ( x0 )
LBB3_284:                               //  %sw.bb592
                                        //    in Loop: Header=BB3_266 Depth=2
	andi x1, x5, 128
	beqz x1, LBB3_298
LBB3_285:                               //  %if.then595
                                        //    in Loop: Header=BB3_266 Depth=2
	andi x5, x5, -129
	jalr x0, LBB3_289 ( x0 )
LBB3_286:                               //  %sw.bb598
                                        //    in Loop: Header=BB3_266 Depth=2
	andi x1, x5, 1536
	xori x1, x1, 512
	bgtu x1, x0, LBB3_298
LBB3_287:                               //  %if.then602
                                        //    in Loop: Header=BB3_266 Depth=2
	andi x1, x5, -1793
	ori x5, x1, 1280
	addi x1, x0, 16
LBB3_288:                               //  %ok
                                        //    in Loop: Header=BB3_266 Depth=2
	add x13, x0, x1
LBB3_289:                               //  %ok
                                        //    in Loop: Header=BB3_266 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	addi x14, x14, 1
LBB3_290:                               //  %skip
                                        //    in Loop: Header=BB3_266 Depth=2
	addi x1, x12, -1
	sw x1, 4 ( x8 )
	slti x3, x12, 2
	bgtu x3, x0, LBB3_292
LBB3_291:                               //  %if.then613
                                        //    in Loop: Header=BB3_266 Depth=2
	addi x11, x11, 1
	sw x11, 0 ( x8 )
	add x12, x0, x1
	jalr x0, LBB3_297 ( x0 )
LBB3_292:                               //  %if.else616
                                        //    in Loop: Header=BB3_266 Depth=2
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB3_341
LBB3_293:                               //  %if.then.i1237
                                        //    in Loop: Header=BB3_266 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beq x11, x1, LBB3_295
LBB3_294:                               //  %if.then4.i1238
                                        //    in Loop: Header=BB3_266 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x13, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x5
	sw x14, 68 ( x2 )               //  4-byte Folded Spill
	call $_free_r
	lw x14, 68 ( x2 )               //  4-byte Folded Reload
	add x5, x0, x8
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB3_295:                               //  %if.end.i1242
                                        //    in Loop: Header=BB3_266 Depth=2
	sw x0, 48 ( x8 )
	lw x12, 60 ( x8 )
	nop
	sw x12, 4 ( x8 )
	beqz x12, LBB3_341
LBB3_296:                               //  %__ssrefill_r.exit1250.thread
                                        //    in Loop: Header=BB3_266 Depth=2
	lw x11, 56 ( x8 )
	nop
	sw x11, 0 ( x8 )
LBB3_297:                               //  %for.inc622
                                        //    in Loop: Header=BB3_266 Depth=2
	addi x1, x2, 86
	add x1, x14, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB3_266
LBB3_298:                               //  %for.end624
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x2, 86
	add x1, x14, x1
	andi x3, x5, 256
	sw x13, 48 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x0, LBB3_300
LBB3_299:                               //    in Loop: Header=BB3_5 Depth=1
	add x4, x0, x1
	jalr x0, LBB3_317 ( x0 )
LBB3_300:                               //  %if.then627
                                        //    in Loop: Header=BB3_5 Depth=1
	bgt x14, x0, LBB3_302
LBB3_301:                               //    in Loop: Header=BB3_5 Depth=1
	add x4, x0, x1
	jalr x0, LBB3_316 ( x0 )
LBB3_302:                               //  %if.then631
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x4, x1, -1
	lbu x11, -1 ( x1 )
	nop
	xori x1, x11, 255
	bgtu x1, x0, LBB3_304
LBB3_303:                               //    in Loop: Header=BB3_5 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_316 ( x0 )
LBB3_304:                               //  %if.end.i1256
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 12 ( x8 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
	lw x1, 48 ( x8 )
	nop
	beqz x1, LBB3_308
LBB3_305:                               //  %if.then6.i1260
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 52 ( x8 )
	nop
	bgt x1, x12, LBB3_307
LBB3_306:                               //  %land.lhs.true.i1263
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	call $__submore
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	bgtu x10, x0, LBB3_316
LBB3_307:                               //  %if.end11.i1267
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 0 ( x8 )
	sb x11, -1 ( x1 )
	lw x1, 4 ( x8 )
	nop
	addi x1, x1, 1
	jalr x0, LBB3_315 ( x0 )
LBB3_308:                               //  %if.end14.i1270
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB3_311
LBB3_309:                               //  %if.end14.if.end34_crit_edge.i1274
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
LBB3_310:                               //  %if.end34.i1291
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x12, 60 ( x8 )
	sw x1, 56 ( x8 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x8 )
	addi x1, x0, 3
	sw x1, 52 ( x8 )
	sb x11, 66 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	slti x1, x0, 1
	jalr x0, LBB3_315 ( x0 )
LBB3_311:                               //  %land.lhs.true18.i1277
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 0 ( x8 )
	nop
	bgtu x1, x3, LBB3_313
LBB3_312:                               //    in Loop: Header=BB3_5 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_310 ( x0 )
LBB3_313:                               //  %land.lhs.true24.i1280
                                        //    in Loop: Header=BB3_5 Depth=1
	lbu x3, -1 ( x1 )
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	bne x3, x11, LBB3_310
LBB3_314:                               //  %if.then29.i1283
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x1, -1
	sw x1, 0 ( x8 )
	addi x1, x12, 1
LBB3_315:                               //  %if.end635
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x1, 4 ( x8 )
LBB3_316:                               //  %if.end635
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x2, 86
	beq x4, x1, LBB3_338
LBB3_317:                               //  %if.end641
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x5, 16
	bgtu x1, x0, LBB3_332
LBB3_318:                               //  %if.then645
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	sb x0, 0 ( x4 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 86
	add x12, x0, x0
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	call_reg x1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB3_322
LBB3_319:                               //  %if.then650
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB3_320:                               //  %if.end682
                                        //    in Loop: Header=BB3_5 Depth=1
	sw x10, 0 ( x1 )
LBB3_321:                               //  %if.end682
                                        //    in Loop: Header=BB3_5 Depth=1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_331 ( x0 )
LBB3_322:                               //  %if.else652
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 4
	beqz x1, LBB3_324
LBB3_323:                               //  %if.then655
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB3_321 ( x0 )
LBB3_324:                               //  %if.else658
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB3_330
LBB3_325:                               //  %if.else663
                                        //    in Loop: Header=BB3_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB3_330
LBB3_326:                               //  %if.then666
                                        //    in Loop: Header=BB3_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	bne x3, x1, LBB3_328
LBB3_327:                               //  %if.then669
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 86
	add x12, x0, x0
	call $_strtoull_r
	jalr x0, LBB3_329 ( x0 )
LBB3_328:                               //  %if.else672
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 86
	add x12, x0, x0
	call $_strtoll_r
LBB3_329:                               //  %if.end675
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	jalr x0, LBB3_320 ( x0 )
LBB3_330:                               //  %if.else677
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 384 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 384 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
LBB3_331:                               //  %if.end682
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB3_332:                               //  %cleanup691.thread
                                        //    in Loop: Header=BB3_5 Depth=1
	addi x1, x2, 86
	sub x1, x9, x1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	add x9, x4, x1
	jalr x0, LBB3_59 ( x0 )
LBB3_333:                               //  %__ssrefill_r.exit1041
	lw x1, 16 ( x8 )
	nop
	sw x1, 0 ( x8 )
	sw x0, 4 ( x8 )
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x8 )
LBB3_334:                               //  %input_failure
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB3_336
LBB3_335:                               //  %land.lhs.true696
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB3_338
LBB3_336:                               //  %cleanup701.loopexit
	not x1, x0
LBB3_337:                               //  %cleanup701
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB3_338:                               //  %cleanup701
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x8, 388 ( x2 )               //  4-byte Folded Reload
	lw x1, 396 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 400
$cfi26:
	.cfi_adjust_cfa_offset -400
$cfi27:
	.cfi_def_cfa 2, 0
	ret
LBB3_339:                               //  %__ssrefill_r.exit
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 16 ( x8 )
	nop
	sw x1, 0 ( x8 )
	sw x0, 4 ( x8 )
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x8 )
	jalr x0, LBB3_59 ( x0 )
LBB3_340:                               //  %if.then260
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 16 ( x4 )
	nop
	sw x1, 0 ( x4 )
	sw x0, 4 ( x4 )
	lh x1, 12 ( x4 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x4 )
	beqz x8, LBB3_377
LBB3_376:                               //  %if.then260
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_135 ( x0 )
LBB3_377:                               //  %if.then260
                                        //    in Loop: Header=BB3_5 Depth=1
	jalr x0, LBB3_334 ( x0 )
LBB3_341:                               //  %__ssrefill_r.exit1250
                                        //    in Loop: Header=BB3_5 Depth=1
	lw x1, 16 ( x8 )
	nop
	sw x1, 0 ( x8 )
	sw x0, 4 ( x8 )
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 32
	sh x1, 12 ( x8 )
	add x1, x0, x0
	add x12, x0, x1
	jalr x0, LBB3_298 ( x0 )
$func_end3:
	.size	$__ssvfiscanf_r, ($func_end3)-($__ssvfiscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI3_0:
	.long	LBB3_336
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_22
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_37
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_41
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_42
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_40
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_45
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_46
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_48
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_49
	.long	LBB3_63
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_39
	.long	LBB3_66
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_32
	.long	LBB3_62
	.long	LBB3_52
	.long	LBB3_67
	.long	LBB3_51
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_69
	.long	LBB3_62
	.long	LBB3_68
	.long	LBB3_62
	.long	LBB3_62
	.long	LBB3_46
JTI3_1:
	.long	LBB3_284
	.long	LBB3_298
	.long	LBB3_284
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_268
	.long	LBB3_278
	.long	LBB3_278
	.long	LBB3_278
	.long	LBB3_278
	.long	LBB3_278
	.long	LBB3_278
	.long	LBB3_278
	.long	LBB3_279
	.long	LBB3_279
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_286
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_282
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_298
	.long	LBB3_286

	.address_space	0	
	.type	$__ssvfiscanf_r.basefix,@object //  @__ssvfiscanf_r.basefix
	.p2align	1
$__ssvfiscanf_r.basefix:
	.short	10                      //  0xa
	.short	1                       //  0x1
	.short	2                       //  0x2
	.short	3                       //  0x3
	.short	4                       //  0x4
	.short	5                       //  0x5
	.short	6                       //  0x6
	.short	7                       //  0x7
	.short	8                       //  0x8
	.short	9                       //  0x9
	.short	10                      //  0xa
	.short	11                      //  0xb
	.short	12                      //  0xc
	.short	13                      //  0xd
	.short	14                      //  0xe
	.short	15                      //  0xf
	.short	16                      //  0x10
	.size	$__ssvfiscanf_r.basefix, 34

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
