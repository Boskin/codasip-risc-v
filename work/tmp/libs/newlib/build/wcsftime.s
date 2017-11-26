	.text
	.file	"wcsftime.bc"
	.globl	$__ctloc
	.type	$__ctloc,@function
$__ctloc:                               //  @__ctloc
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
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sh x0, 510 ( x8 )
	addi x12, x0, 255
	call $mbstowcs
	not x1, x0
	bne x10, x1, LBB0_2
LBB0_1:
	add x10, x0, x0
LBB0_2:                                 //  %entry
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	add x10, x0, x8
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
	.size	$__ctloc, ($func_end0)-($__ctloc)
	.cfi_endproc

	.globl	$wcsftime
	.type	$wcsftime,@function
$wcsftime:                              //  @wcsftime
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -688
$cfi9:
	.cfi_adjust_cfa_offset 688
	sw x1, 684 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 676 ( x2 )               //  4-byte Folded Spill
	sw x13, 88 ( x2 )               //  4-byte Folded Spill
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $__get_current_time_locale
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x0
	addi x9, x8, -1
	addi x18, x10, 152
	addi x19, x10, 156
	addi x13, x10, 228
	addi x15, x10, 160
	lui x16, 65535 >> 12 & 0xfffff
	addi x17, x0, 8
	addi x11, x2, 100
	addi x12, x0, 10
	addi x20, x0, 85
	addi x21, x0, 4
	add x22, x0, x5
	add x14, x0, x5
LBB1_1:                                 //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_2 Depth 2
                                        //      Child Loop BB1_30 Depth 2
                                        //      Child Loop BB1_22 Depth 2
                                        //      Child Loop BB1_306 Depth 2
                                        //      Child Loop BB1_173 Depth 2
                                        //      Child Loop BB1_34 Depth 2
                                        //      Child Loop BB1_26 Depth 2
	slli x1, x14, 1
	add x24, x1, x4
	addi x23, x3, 4
LBB1_2:                                 //  %while.cond
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x1, -4 ( x23 )
	nop
	bgtu x1, x0, LBB1_325
LBB1_324:                               //  %while.cond
                                        //    in Loop: Header=BB1_2 Depth=2
	jalr x0, LBB1_268 ( x0 )
LBB1_325:                               //  %while.cond
                                        //    in Loop: Header=BB1_2 Depth=2
LBB1_3:                                 //  %while.cond
                                        //    in Loop: Header=BB1_2 Depth=2
	xori x3, x1, 37
	beqz x3, LBB1_7
LBB1_4:                                 //  %while.body
                                        //    in Loop: Header=BB1_2 Depth=2
	bgtu x9, x14, LBB1_6
LBB1_5:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_6:                                 //  %if.then
                                        //    in Loop: Header=BB1_2 Depth=2
	sh x1, 0 ( x24 )
	addi x23, x23, 2
	addi x24, x24, 2
	addi x14, x14, 1
	jalr x0, LBB1_2 ( x0 )
LBB1_7:                                 //  %if.end9
                                        //    in Loop: Header=BB1_1 Depth=1
	lhu x3, -2 ( x23 )
	nop
	xori x1, x3, 43
	beqz x1, LBB1_10
LBB1_8:                                 //  %if.end9
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x1, x3, 48
	beqz x1, LBB1_10
LBB1_9:                                 //  %if.end9.if.end19_crit_edge
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x23, x23, -2
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB1_11 ( x0 )
LBB1_10:                                //  %if.then17
                                        //    in Loop: Header=BB1_1 Depth=1
	lh x1, 0 ( x23 )
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
LBB1_11:                                //  %if.end19
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, -49
	or x4, x16, x28
	and x3, x4, x3
	sw x14, 92 ( x2 )               //  4-byte Folded Spill
	sw x24, 60 ( x2 )               //  4-byte Folded Spill
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	sw x18, 56 ( x2 )               //  4-byte Folded Spill
	sw x19, 52 ( x2 )               //  4-byte Folded Spill
	sw x13, 48 ( x2 )               //  4-byte Folded Spill
	sw x15, 80 ( x2 )               //  4-byte Folded Spill
	sw x22, 64 ( x2 )               //  4-byte Folded Spill
	bgeu x17, x3, LBB1_13
LBB1_12:                                //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x5
	jalr x0, LBB1_14 ( x0 )
LBB1_13:                                //  %if.then26
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, x23
	add x8, x0, x16
	call $wcstoul
	addi x21, x0, 4
	addi x20, x0, 85
	add x16, x0, x8
	add x5, x0, x0
	add x4, x0, x10
	lw x23, 100 ( x2 )
	nop
	lh x1, 0 ( x23 )
LBB1_14:                                //  %if.end28
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x16, x28
	and x1, x3, x1
	xori x3, x1, 79
	beqz x3, LBB1_16
LBB1_15:                                //  %if.end28
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x1, x1, 69
	bgtu x1, x0, LBB1_17
LBB1_16:                                //  %if.then38
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x23, x23, 2
LBB1_17:                                //  %if.end41
                                        //    in Loop: Header=BB1_1 Depth=1
	lh x8, 0 ( x23 )
	nop
	addi x10, x8, -37
	bgeu x20, x10, LBB1_19
LBB1_18:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_19:                                //  %if.end41
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x23, 68 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x21
	call $__mulsi3
	add x5, x0, x0
	ori x28, x0, JTI1_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x3, 0 ( x1 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x5
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	jr x3
LBB1_20:                                //  %sw.bb
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x11, 96 ( x1 )
	sh x0, 674 ( x2 )
	addi x8, x2, 164
	addi x12, x0, 255
	add x10, x0, x8
	call $mbstowcs
	addi x1, x10, 1
	sltiu x1, x1, 2
	bgtu x1, x0, LBB1_171
LBB1_21:                                //  %for.body.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	add x11, x0, x1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
LBB1_22:                                //  %for.body
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x14
	bgeu x4, x7, LBB1_327
LBB1_326:                               //  %for.body
                                        //    in Loop: Header=BB1_22 Depth=2
	jalr x0, LBB1_313 ( x0 )
LBB1_327:                               //  %for.body
                                        //    in Loop: Header=BB1_22 Depth=2
LBB1_23:
	add x4, x0, x11
	jalr x0, LBB1_323 ( x0 )
LBB1_24:                                //  %sw.bb58
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x11, 124 ( x1 )
	sh x0, 674 ( x2 )
	addi x8, x2, 164
	addi x12, x0, 255
	add x10, x0, x8
	call $mbstowcs
	addi x1, x10, 1
	sltiu x1, x1, 2
	bgtu x1, x0, LBB1_171
LBB1_25:                                //  %for.body66.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	add x11, x0, x1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
LBB1_26:                                //  %for.body66
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x14
	bgeu x4, x7, LBB1_329
LBB1_328:                               //  %for.body66
                                        //    in Loop: Header=BB1_26 Depth=2
	jalr x0, LBB1_315 ( x0 )
LBB1_329:                               //  %for.body66
                                        //    in Loop: Header=BB1_26 Depth=2
LBB1_27:
	add x4, x0, x11
	jalr x0, LBB1_323 ( x0 )
LBB1_28:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x11, 0 ( x1 )
	sh x0, 674 ( x2 )
	addi x8, x2, 164
	addi x12, x0, 255
	add x10, x0, x8
	call $mbstowcs
	addi x1, x10, 1
	sltiu x1, x1, 2
	bgtu x1, x0, LBB1_171
LBB1_29:                                //  %for.body86.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	add x11, x0, x1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
LBB1_30:                                //  %for.body86
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x14
	bgeu x4, x7, LBB1_331
LBB1_330:                               //  %for.body86
                                        //    in Loop: Header=BB1_30 Depth=2
	jalr x0, LBB1_316 ( x0 )
LBB1_331:                               //  %for.body86
                                        //    in Loop: Header=BB1_30 Depth=2
LBB1_31:
	add x4, x0, x11
	jalr x0, LBB1_323 ( x0 )
LBB1_32:                                //  %sw.bb99
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x11, 48 ( x1 )
	sh x0, 674 ( x2 )
	addi x8, x2, 164
	addi x12, x0, 255
	add x10, x0, x8
	call $mbstowcs
	addi x1, x10, 1
	sltiu x1, x1, 2
	bgtu x1, x0, LBB1_171
LBB1_33:                                //  %for.body107.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	add x11, x0, x1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
LBB1_34:                                //  %for.body107
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x14
	bgeu x4, x7, LBB1_333
LBB1_332:                               //  %for.body107
                                        //    in Loop: Header=BB1_34 Depth=2
	jalr x0, LBB1_317 ( x0 )
LBB1_333:                               //  %for.body107
                                        //    in Loop: Header=BB1_34 Depth=2
LBB1_35:
	add x4, x0, x11
	jalr x0, LBB1_323 ( x0 )
LBB1_36:                                //  %sw.bb123
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_39 ( x0 )
LBB1_37:                                //  %sw.bb126
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_39 ( x0 )
LBB1_38:                                //  %sw.bb129
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_39:                                //  %recurse
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 0 ( x1 )
	sh x0, 674 ( x2 )
	addi x10, x2, 164
	addi x12, x0, 255
	call $mbstowcs
	lhu x1, 164 ( x2 )
	nop
	beqz x1, LBB1_171
LBB1_40:                                //  %if.then133
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x11, x1, x8
	addi x12, x2, 164
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $wcsftime
	bgt x10, x0, LBB1_335
LBB1_334:                               //  %if.then133
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_335:                               //  %if.then133
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_41:                                //  %if.then139
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	add x14, x0, x8
	jalr x0, LBB1_267 ( x0 )
LBB1_42:                                //  %sw.bb143
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 20 ( x1 )
	nop
	bgt x0, x8, LBB1_44
LBB1_43:                                //  %cond.true
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	add x10, x0, x8
	call $__udivsi3
	addi x10, x10, 19
	jalr x0, LBB1_45 ( x0 )
LBB1_44:                                //  %cond.false
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10, x8, 1900
	call $abs
	addi x11, x0, 100
	call $__divsi3
LBB1_45:                                //  %cond.end
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x4, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x4, x28
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	lw x9, 92 ( x2 )                //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x5, LBB1_51
LBB1_46:                                //  %if.then156
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 99
	or x3, x3, x28
	bgt x10, x4, LBB1_48
LBB1_47:                                //  %if.then156
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x1
LBB1_48:                                //  %if.then156
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x4, x0, 43
	beq x5, x4, LBB1_50
LBB1_49:                                //  %if.then156
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x1
LBB1_50:                                //  %if.then156
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x1, $.str.2 >> 12 & 0xfffff
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
LBB1_51:                                //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x4, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x7, x0, -1900
	slti x5, x8, -1900
	or x4, x4, x28
	bgt x7, x8, LBB1_53
LBB1_52:                                //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x3
LBB1_53:                                //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
	andi x3, x5, 1
	sw x10, 20 ( x2 )
	addi x5, x0, 2
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x7, x5, LBB1_55
LBB1_54:                                //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
	add x7, x0, x5
LBB1_55:                                //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x3, x7, x3
	sw x3, 16 ( x2 )
	sw x4, 12 ( x2 )
	sw x1, 8 ( x2 )
	sub x1, x12, x9
	sw x1, 4 ( x2 )
	sw x11, 0 ( x2 )
	add x8, x0, x9
	call $swprintf
	bgez x10, LBB1_337
LBB1_336:                               //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_337:                               //  %if.end165
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_56:                                //  %lor.lhs.false181
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgeu x14, x1, LBB1_339
LBB1_338:                               //  %lor.lhs.false181
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_267 ( x0 )
LBB1_339:                               //  %lor.lhs.false181
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_57:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_58:                                //  %sw.bb187
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	beq x8, x4, LBB1_60
LBB1_59:                                //  %sw.bb187
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x1
LBB1_60:                                //  %sw.bb187
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	nop
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x14
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgez x10, LBB1_341
LBB1_340:                               //  %sw.bb187
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_341:                               //  %sw.bb187
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_61:                                //  %lor.lhs.false197
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgeu x14, x1, LBB1_343
LBB1_342:                               //  %lor.lhs.false197
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_267 ( x0 )
LBB1_343:                               //  %lor.lhs.false197
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_62:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_63:                                //  %sw.bb203
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x4 )
	lw x10, 20 ( x4 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x14
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lw x3, 12 ( x4 )
	nop
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	addi x8, x1, 1
	bgez x10, LBB1_65
LBB1_64:                                //  %cond.false214
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB1_65:                                //  %cond.end219
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 20 ( x2 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x2 )
	sw x8, 12 ( x2 )
	sw x1, 8 ( x2 )
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgez x10, LBB1_345
LBB1_344:                               //  %cond.end219
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_345:                               //  %cond.end219
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_66:                                //  %lor.lhs.false224
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	nop
	add x14, x14, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x14, x1, LBB1_347
LBB1_346:                               //  %lor.lhs.false224
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_267 ( x0 )
LBB1_347:                               //  %lor.lhs.false224
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_67:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_68:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x0
	addi x1, x0, 10
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x7, x4, LBB1_70
LBB1_69:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x1
LBB1_70:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x3, x2, 104
	bne x7, x4, LBB1_72
LBB1_71:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x7, x0, 43
LBB1_72:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 37
	sh x1, 100 ( x2 )
	sh x7, 102 ( x2 )
	addi x1, x0, 6
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x5, x1, LBB1_74
LBB1_73:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x1
LBB1_74:                                //  %sw.bb230
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x5, -6
	add x10, x0, x3
	beqz x1, LBB1_79
LBB1_75:                                //  %if.then249
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x1, 12 ( x2 )
	lui x1, $.str.8 >> 12 & 0xfffff
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	addi x1, x0, 30
	sw x1, 4 ( x2 )
	sw x3, 0 ( x2 )
	add x8, x0, x3
	call $swprintf
	add x1, x0, x0
	ble x10, x1, LBB1_77
LBB1_76:                                //    in Loop: Header=BB1_1 Depth=1
	slli x1, x10, 1
	add x10, x1, x8
	jalr x0, LBB1_78 ( x0 )
LBB1_77:                                //  %if.then249
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, x8
LBB1_78:                                //  %if.then249
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
LBB1_79:                                //  %if.end257
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x1, $.str.9 >> 12 & 0xfffff
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $wcscpy
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x11, x8, x1
	addi x12, x2, 100
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $wcsftime
	add x1, x0, x10
	add x4, x0, x0
	bgt x10, x4, LBB1_81
LBB1_80:                                //  %if.end257
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x4
LBB1_81:                                //  %if.end257
                                        //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x0
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	bgt x10, x0, LBB1_349
LBB1_348:                               //  %if.end257
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_323 ( x0 )
LBB1_349:                               //  %if.end257
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_82:                                //    in Loop: Header=BB1_1 Depth=1
	add x14, x14, x1
	jalr x0, LBB1_267 ( x0 )
LBB1_83:                                //  %sw.bb270
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 20 ( x1 )
	addi x1, x0, -100
	srai x3, x4, 31
	andi x3, x3, -2000
	sub x1, x1, x3
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x4, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB1_86
LBB1_84:                                //  %sw.bb270
                                        //    in Loop: Header=BB1_1 Depth=1
	beqz x10, LBB1_86
LBB1_85:                                //    in Loop: Header=BB1_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_87 ( x0 )
LBB1_86:                                //  %lor.rhs.i1543
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB1_87:                                //  %lor.end.i1551
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 28 ( x4 )
	lw x4, 24 ( x4 )
	andi x1, x1, 1
	addi x5, x0, 33
	slli x3, x3, 4
	slli x4, x4, 1
	add x3, x3, x4
	or x10, x1, x3
	bgtu x10, x5, LBB1_351
LBB1_350:                               //  %lor.end.i1551
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_318 ( x0 )
LBB1_351:                               //  %lor.end.i1551
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_88:                                //  %lor.end.i1551
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x1, -5794 >> 12 & 0xfffff
	ori x28, x0, -5794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x10, x1, x10
	addi x1, x0, 53
	bgtu x10, x1, LBB1_91
LBB1_89:                                //  %lor.end.i1551
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI1_6 >> 12 & 0xfffff
	ori x28, x0, JTI1_6 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_90:                                //  %sw.bb22.i1552
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x8, x0, 1
	jalr x0, LBB1_92 ( x0 )
LBB1_91:                                //  %sw.epilog.i1553
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x0, x0
LBB1_92:                                //  %iso_year_adjust.exit1555
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgez x10, LBB1_94
LBB1_93:                                //  %cond.false278
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB1_94:                                //  %cond.end283
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	bgez x8, LBB1_97
LBB1_95:                                //  %land.lhs.true287
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	addi x3, x0, -1899
	ble x3, x1, LBB1_100
LBB1_96:                                //    in Loop: Header=BB1_1 Depth=1
	slti x8, x0, 1
	jalr x0, LBB1_101 ( x0 )
LBB1_97:                                //  %if.else292
                                        //    in Loop: Header=BB1_1 Depth=1
	bgtu x8, x0, LBB1_99
LBB1_98:                                //    in Loop: Header=BB1_1 Depth=1
	add x8, x0, x0
	jalr x0, LBB1_101 ( x0 )
LBB1_99:                                //  %land.lhs.true295
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	addi x3, x0, -1900
	ble x3, x1, LBB1_101
LBB1_100:                               //    in Loop: Header=BB1_1 Depth=1
	not x8, x0
LBB1_101:                               //  %if.end301
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x10, x8
	addi x8, x0, 100
	add x11, x0, x8
	call $__modsi3
	addi x10, x10, 100
	add x11, x0, x8
	call $__modsi3
	sw x10, 12 ( x2 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgez x10, LBB1_353
LBB1_352:                               //  %if.end301
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_353:                               //  %if.end301
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_102:                               //  %cleanup317
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_103:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_104:                               //  %sw.bb321
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 20 ( x1 )
	addi x1, x0, -100
	srai x3, x4, 31
	andi x3, x3, -2000
	sub x1, x1, x3
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x4, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB1_107
LBB1_105:                               //  %sw.bb321
                                        //    in Loop: Header=BB1_1 Depth=1
	beqz x10, LBB1_107
LBB1_106:                               //    in Loop: Header=BB1_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_108 ( x0 )
LBB1_107:                               //  %lor.rhs.i1566
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB1_108:                               //  %lor.end.i1574
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 28 ( x4 )
	lw x4, 24 ( x4 )
	andi x1, x1, 1
	addi x5, x0, 33
	slli x3, x3, 4
	slli x4, x4, 1
	add x3, x3, x4
	or x10, x1, x3
	bgtu x10, x5, LBB1_355
LBB1_354:                               //  %lor.end.i1574
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_319 ( x0 )
LBB1_355:                               //  %lor.end.i1574
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_109:                               //  %lor.end.i1574
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x1, -5794 >> 12 & 0xfffff
	ori x28, x0, -5794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x10, x1, x10
	addi x1, x0, 53
	bgtu x10, x1, LBB1_112
LBB1_110:                               //  %lor.end.i1574
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI1_4 >> 12 & 0xfffff
	ori x28, x0, JTI1_4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_111:                               //  %sw.bb22.i1575
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_113 ( x0 )
LBB1_112:                               //  %sw.epilog.i1576
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
LBB1_113:                               //  %iso_year_adjust.exit1578
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB1_114:                               //  %iso_year_adjust.exit1578
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x8, LBB1_116
LBB1_115:                               //  %cond.end340.thread
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	add x10, x0, x8
	call $__udivsi3
	addi x1, x10, 19
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	jalr x0, LBB1_118 ( x0 )
LBB1_116:                               //  %cond.end340
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10, x8, 1900
	call $abs
	addi x11, x0, 100
	call $__divsi3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 20 ( x1 )
	nop
	bgez x10, LBB1_118
LBB1_117:                               //  %cond.false349
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB1_118:                               //  %cond.end354
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	lw x7, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x7, LBB1_121
LBB1_119:                               //  %land.lhs.true358
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	nop
	slti x1, x1, -1899
	beqz x1, LBB1_121
LBB1_120:                               //    in Loop: Header=BB1_1 Depth=1
	slti x3, x0, 1
	add x1, x0, x3
	jalr x0, LBB1_127 ( x0 )
LBB1_121:                               //  %if.else363
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	ble x7, x1, LBB1_123
LBB1_122:                               //    in Loop: Header=BB1_1 Depth=1
	not x1, x0
	jalr x0, LBB1_124 ( x0 )
LBB1_123:                               //  %if.else363
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x7
LBB1_124:                               //  %if.else363
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	nop
	slti x3, x5, -1900
	addi x4, x0, -1900
	bgt x4, x5, LBB1_126
LBB1_125:                               //  %if.else363
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x7
LBB1_126:                               //  %if.else363
                                        //    in Loop: Header=BB1_1 Depth=1
	andi x3, x3, 1
LBB1_127:                               //  %if.end370
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x10, x1
	xori x1, x8, 100
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_131
LBB1_128:                               //  %if.end370
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x1, x8, -1
	beqz x1, LBB1_130
LBB1_129:                               //    in Loop: Header=BB1_1 Depth=1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_132 ( x0 )
LBB1_130:                               //  %if.then374
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x8, x0, 99
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	addi x10, x10, -1
	jalr x0, LBB1_132 ( x0 )
LBB1_131:                               //  %if.then378
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x0, x0
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	addi x10, x10, 1
LBB1_132:                               //  %if.end381
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	call $__mulsi3
	add x10, x8, x10
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x9, LBB1_134
LBB1_133:                               //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 45
	addi x4, x2, 102
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_137 ( x0 )
LBB1_134:                               //  %if.else389
                                        //    in Loop: Header=BB1_1 Depth=1
	add x9, x0, x0
	addi x1, x2, 100
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	nop
	xori x3, x7, 43
	addi x4, x2, 102
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x0, LBB1_138
LBB1_135:                               //  %if.else389
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x3, 10000 >> 12 & 0xfffff
	ori x28, x0, 10000 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x10, LBB1_138
LBB1_136:                               //    in Loop: Header=BB1_1 Depth=1
	slti x9, x0, 1
	addi x1, x0, 43
LBB1_137:                               //  %if.end399.sink.split
                                        //    in Loop: Header=BB1_1 Depth=1
	sh x1, 100 ( x2 )
	add x1, x0, x4
LBB1_138:                               //  %if.end399
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	addi x3, x0, 37
	sh x3, 0 ( x1 )
	sltu x3, x0, x9
	sltu x4, x0, x5
	and x3, x3, x4
	andi x3, x3, 1
	sub x8, x5, x3
	bgtu x7, x0, LBB1_140
LBB1_139:                               //    in Loop: Header=BB1_1 Depth=1
	addi x10, x1, 2
	jalr x0, LBB1_141 ( x0 )
LBB1_140:                               //  %if.then408
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x3, x0, 48
	sh x3, 2 ( x1 )
	addi x10, x1, 4
LBB1_141:                               //  %if.end410
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x1, $.str.10 >> 12 & 0xfffff
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $wcscpy
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x2 )
	sw x8, 12 ( x2 )
	addi x1, x2, 100
	sw x1, 8 ( x2 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgez x10, LBB1_357
LBB1_356:                               //  %if.end410
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_357:                               //  %if.end410
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_142:                               //  %cleanup424
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_143:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_144:                               //  %sw.bb433
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 107
	or x3, x3, x28
	beq x8, x4, LBB1_146
LBB1_145:                               //  %sw.bb433
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x1
LBB1_146:                               //  %sw.bb433
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	nop
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x14
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgez x10, LBB1_359
LBB1_358:                               //  %sw.bb433
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_359:                               //  %sw.bb433
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_147:                               //  %lor.lhs.false443
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_148:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_149:                               //  %sw.bb455
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	addi x10, x0, 12
	bgtu x1, x0, LBB1_151
LBB1_150:                               //    in Loop: Header=BB1_1 Depth=1
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_153 ( x0 )
LBB1_151:                               //  %sw.bb455
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x3, x1, 12
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB1_153
LBB1_152:                               //  %cond.false464
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 12
	add x10, x0, x1
	call $__modsi3
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
LBB1_153:                               //  %cond.end467
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 73
	or x3, x3, x28
	beq x8, x4, LBB1_155
LBB1_154:                               //  %cond.end467
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x1
LBB1_155:                               //  %cond.end467
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x14
	sw x1, 4 ( x2 )
	sw x5, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgez x10, LBB1_361
LBB1_360:                               //  %cond.end467
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_322 ( x0 )
LBB1_361:                               //  %cond.end467
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_156:                               //  %cleanup484
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_157:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_158:                               //  %sw.bb487
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x1 )
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x1, 1
	or x3, x3, x28
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x14
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x4, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_159:                               //  %lor.lhs.false494
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_160:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_161:                               //  %sw.bb500
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x1, 1
	or x3, x3, x28
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x14
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x4, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_162:                               //  %lor.lhs.false508
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_163:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_164:                               //  %sw.bb514
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x14
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x4, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_165:                               //  %lor.lhs.false520
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_166:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_167:                               //  %sw.bb526
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x14, LBB1_169
LBB1_168:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_169:                               //  %if.then530
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 10
	jalr x0, LBB1_237 ( x0 )
LBB1_170:                               //  %sw.bb535
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	addi x3, x0, 11
	slt x1, x3, x1
	andi x1, x1, 1
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x11, 164 ( x1 )
	sh x0, 674 ( x2 )
	addi x8, x2, 164
	addi x12, x0, 255
	add x10, x0, x8
	call $mbstowcs
	add x12, x0, x10
	addi x1, x12, 1
	sltiu x1, x1, 2
	beqz x1, LBB1_172
LBB1_171:                               //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x0
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_267 ( x0 )
LBB1_172:                               //  %for.body546.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	add x13, x0, x1
	add x3, x0, x8
	add x8, x0, x1
	add x5, x0, x0
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x3
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
LBB1_173:                               //  %for.body546
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x1, x8, x14
	bgeu x1, x4, LBB1_322
LBB1_174:                               //  %if.then550
                                        //    in Loop: Header=BB1_173 Depth=2
	lhu x1, 0 ( x7 )
	add x3, x13, x11
	lh x10, 0 ( x3 )
	xori x1, x1, 80
	bgtu x1, x0, LBB1_176
LBB1_175:                               //  %cond.true554
                                        //    in Loop: Header=BB1_173 Depth=2
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	call $towlower
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 164
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x14, 92 ( x2 )               //  4-byte Folded Reload
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x0
LBB1_176:                               //  %cond.end561
                                        //    in Loop: Header=BB1_173 Depth=2
	add x1, x13, x9
	addi x8, x8, 1
	sh x10, 0 ( x1 )
	addi x13, x13, 2
	bgtu x12, x8, LBB1_173
LBB1_177:                               //  %sw.epilog.loopexit1709
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14, x8, x14
	jalr x0, LBB1_267 ( x0 )
LBB1_178:                               //  %sw.bb571
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x3 )
	lw x3, 4 ( x3 )
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lui x4, $.str.12 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x5, x14
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	sw x4, 8 ( x2 )
	sw x5, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_179:                               //  %lor.lhs.false579
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_180:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_181:                               //  %sw.bb585
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x8 )
	add x9, x0, x0
	bgez x1, LBB1_183
LBB1_182:                               //    in Loop: Header=BB1_1 Depth=1
	sw x9, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_186 ( x0 )
LBB1_183:                               //  %if.then588
                                        //    in Loop: Header=BB1_1 Depth=1
	call $__tz_lock
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_185
LBB1_184:                               //  %if.then590
                                        //    in Loop: Header=BB1_1 Depth=1
	call $_tzset_unlocked
	slti x1, x0, 1
LBB1_185:                               //  %if.end591
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	call $__gettzinfo
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x8 )
	addi x11, x0, 28
	slt x1, x0, x1
	andi x10, x1, 1
	call $__mulsi3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	lw x1, 32 ( x1 )
	nop
	sub x1, x0, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	call $__tz_unlock
	add x9, x0, x0
LBB1_186:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11, 20 ( x8 )
	slti x10, x0, 1
	addi x1, x11, -69
	add x3, x0, x10
	bgtu x11, x1, LBB1_188
LBB1_187:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x9
LBB1_188:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x5, x0, -69
	add x4, x0, x10
	bgtu x5, x1, LBB1_190
LBB1_189:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x3
LBB1_190:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	srai x3, x11, 31
	add x3, x4, x3
	addi x3, x3, -1
	srai x4, x3, 31
	srli x5, x4, 30
	add x4, x5, x1
	add x7, x0, x10
	bgtu x1, x4, LBB1_192
LBB1_191:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x7, x0, x9
LBB1_192:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x10
	bgtu x5, x4, LBB1_194
LBB1_193:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x7
LBB1_194:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x1, x3
	srli x1, x4, 2
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	slli x3, x3, 30
	or x8, x3, x1
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	addi x10, x11, -1
	addi x11, x0, 100
	call $__divsi3
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x1 )
	nop
	sub x3, x1, x10
	add x9, x8, x3
	slti x7, x0, 1
	add x4, x0, x7
	add x5, x0, x0
	bgtu x3, x9, LBB1_196
LBB1_195:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x5
LBB1_196:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x7
	bgtu x8, x9, LBB1_198
LBB1_197:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x4
LBB1_198:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x0, x9
	add x4, x0, x7
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x1, LBB1_200
LBB1_199:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x5
LBB1_200:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	srai x5, x10, 31
	srai x1, x1, 31
	sub x1, x1, x5
	sub x1, x1, x4
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	srai x4, x4, 2
	add x1, x4, x1
	add x1, x3, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x10, x7, 299
	addi x11, x0, 400
	call $__divsi3
	srai x3, x10, 31
	add x5, x0, x8
	add x8, x10, x5
	slti x4, x0, 1
	add x1, x0, x4
	bgtu x5, x8, LBB1_202
LBB1_201:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
LBB1_202:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	bgtu x10, x8, LBB1_204
LBB1_203:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x1
LBB1_204:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x4, x3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 365
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lui x1, -25550 >> 12 & 0xfffff
	ori x28, x0, -25550 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	srai x4, x1, 31
	add x10, x1, x8
	slti x5, x0, 1
	add x3, x0, x5
	add x13, x0, x0
	bgtu x8, x10, LBB1_206
LBB1_205:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x13
LBB1_206:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x7
	bgtu x1, x10, LBB1_208
LBB1_207:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x3
LBB1_208:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x11, x5, x4
	addi x12, x0, 24
	call $__muldi3
	add x13, x0, x0
	add x1, x0, x10
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 8 ( x3 )
	nop
	add x10, x3, x1
	slti x5, x0, 1
	add x4, x0, x5
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x10, LBB1_210
LBB1_209:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x13
LBB1_210:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x5
	bgtu x3, x10, LBB1_212
LBB1_211:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x4
LBB1_212:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	srai x3, x3, 31
	add x3, x3, x11
	add x11, x1, x3
	addi x12, x0, 60
	call $__muldi3
	add x13, x0, x0
	add x1, x0, x10
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x3 )
	nop
	add x10, x3, x1
	slti x5, x0, 1
	add x4, x0, x5
	bgtu x1, x10, LBB1_214
LBB1_213:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x13
LBB1_214:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x5
	bgtu x3, x10, LBB1_216
LBB1_215:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x4
LBB1_216:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	srai x3, x3, 31
	add x3, x3, x11
	add x11, x1, x3
	addi x12, x0, 60
	call $__muldi3
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x1 )
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	nop
	sub x4, x3, x12
	add x1, x10, x4
	slti x13, x0, 1
	add x5, x0, x13
	bgtu x4, x1, LBB1_218
LBB1_217:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x0
LBB1_218:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x13
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x1, LBB1_220
LBB1_219:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x5
LBB1_220:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	bgtu x12, x3, LBB1_222
LBB1_221:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	add x5, x0, x0
	add x13, x0, x5
LBB1_222:                               //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	srai x5, x12, 31
	srai x3, x3, 31
	sub x3, x3, x5
	sub x3, x3, x13
	add x3, x11, x3
	add x3, x4, x3
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	lui x1, $.str.13 >> 12 & 0xfffff
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	sub x1, x8, x7
	sw x1, 4 ( x2 )
	sw x9, 0 ( x2 )
	add x8, x0, x7
	jalr x0, LBB1_275 ( x0 )
LBB1_223:                               //  %sw.bb649
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x14
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x4, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_224:                               //  %lor.lhs.false656
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_225:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_226:                               //  %sw.bb662
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x14, LBB1_228
LBB1_227:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_228:                               //  %if.then666
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 9
	jalr x0, LBB1_237 ( x0 )
LBB1_229:                               //  %sw.bb671
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x4 )
	lw x3, 4 ( x4 )
	lw x4, 0 ( x4 )
	ori x28, x0, $.str.14 & 0xfff
	slli x28, x28, 20
	lui x5, $.str.14 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x7, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x7, x7, x14
	sw x4, 20 ( x2 )
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	sw x5, 8 ( x2 )
	sw x7, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x8, x0, x14
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_230:                               //  %lor.lhs.false680
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_231:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_232:                               //  %sw.bb686
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x14, LBB1_234
LBB1_233:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_234:                               //  %if.then690
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	add x3, x0, x0
	bne x1, x3, LBB1_236
LBB1_235:                               //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 55
	jalr x0, LBB1_237 ( x0 )
LBB1_236:                               //  %if.then690
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x1, 48
LBB1_237:                               //  %if.then690
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
	addi x14, x14, 1
	jalr x0, LBB1_267 ( x0 )
LBB1_238:                               //  %sw.bb706
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x3 )
	lw x3, 24 ( x3 )
	addi x1, x1, 7
	sub x10, x1, x3
	addi x11, x0, 7
	call $__divsi3
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x8, x3
	sw x10, 12 ( x2 )
	sw x1, 8 ( x2 )
	sw x3, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_239:                               //  %lor.lhs.false717
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x5, x0, x0
	add x14, x0, x1
	bgtu x8, x14, LBB1_267
LBB1_240:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_241:                               //  %sw.bb723
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 20 ( x1 )
	addi x1, x0, -100
	srai x3, x4, 31
	andi x3, x3, -2000
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x3
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	add x8, x4, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	slti x7, x0, 1
	bgtu x1, x0, LBB1_243
LBB1_242:                               //  %sw.bb723
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x7
	bgtu x10, x0, LBB1_244
LBB1_243:                               //  %lor.rhs.i
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	add x8, x0, x7
	call $__modsi3
	add x7, x0, x8
	seqz x1, x10
LBB1_244:                               //  %lor.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 24 ( x3 )
	lw x5, 28 ( x3 )
	andi x1, x1, 1
	addi x3, x0, 33
	slli x4, x8, 1
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	slli x5, x5, 4
	add x4, x5, x4
	or x10, x1, x4
	bgeu x3, x10, LBB1_320
LBB1_245:                               //  %lor.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x1, -5794 >> 12 & 0xfffff
	ori x28, x0, -5794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x10, x1, x10
	addi x1, x0, 53
	bgtu x10, x1, LBB1_247
LBB1_246:                               //  %lor.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 4
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x7
	call $__mulsi3
	add x3, x0, x8
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lui x1, JTI1_2 >> 12 & 0xfffff
	ori x28, x0, JTI1_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_247:                               //  %if.else742
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	bne x8, x1, LBB1_249
LBB1_248:                               //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 6
	jalr x0, LBB1_250 ( x0 )
LBB1_249:                               //  %if.else742
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x8, -1
LBB1_250:                               //  %if.else742
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 10
	sub x10, x3, x1
	addi x11, x0, 7
	call $__divsi3
	add x3, x0, x10
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_261 ( x0 )
LBB1_251:                               //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	bne x8, x1, LBB1_253
LBB1_252:                               //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 6
	jalr x0, LBB1_254 ( x0 )
LBB1_253:                               //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x8, -1
LBB1_254:                               //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, -101
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x3, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB1_257
LBB1_255:                               //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	beqz x10, LBB1_257
LBB1_256:                               //    in Loop: Header=BB1_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_258 ( x0 )
LBB1_257:                               //  %lor.rhs
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB1_258:                               //  %lor.end
                                        //    in Loop: Header=BB1_1 Depth=1
	andi x1, x1, 1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	addi x3, x0, 5
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	ble x3, x1, LBB1_260
LBB1_259:                               //    in Loop: Header=BB1_1 Depth=1
	addi x3, x0, 53
	jalr x0, LBB1_261 ( x0 )
LBB1_260:                               //  %lor.end
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x3, x0, 52
LBB1_261:                               //  %if.end784
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x3, 12 ( x2 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x4
	sw x1, 4 ( x2 )
	sw x5, 0 ( x2 )
	add x8, x0, x4
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_262:                               //  %cleanup796
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_263:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_264:                               //  %sw.bb801
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x14, LBB1_266
LBB1_265:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_266:                               //  %if.then805
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	addi x14, x14, 1
	addi x1, x1, 48
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
LBB1_267:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x3 )
	addi x3, x3, 2
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x9, 76 ( x2 )                //  4-byte Folded Reload
	lw x18, 56 ( x2 )               //  4-byte Folded Reload
	lw x19, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	lw x15, 80 ( x2 )               //  4-byte Folded Reload
	lui x16, 65535 >> 12 & 0xfffff
	addi x17, x0, 8
	addi x11, x2, 100
	addi x12, x0, 10
	addi x20, x0, 85
	addi x21, x0, 4
	lw x22, 64 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_363
LBB1_362:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
	jalr x0, LBB1_1 ( x0 )
LBB1_363:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
LBB1_268:                               //  %for.end1014
	beqz x8, LBB1_270
LBB1_269:                               //  %if.then1016
	slli x1, x14, 1
	add x1, x1, x4
	sh x0, 0 ( x1 )
LBB1_270:                               //  %cleanup1019
	add x4, x0, x14
	jalr x0, LBB1_323 ( x0 )
LBB1_271:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	add x3, x0, x0
	bne x1, x3, LBB1_273
LBB1_272:                               //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, -6
	jalr x0, LBB1_274 ( x0 )
LBB1_273:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x3, x0, 1
	sub x1, x3, x1
LBB1_274:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 28 ( x3 )
	nop
	add x1, x1, x3
	addi x10, x1, 7
	addi x11, x0, 7
	call $__divsi3
	sw x10, 12 ( x2 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
LBB1_275:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_276:                               //  %cleanup646
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	add x4, x0, x0
	bgtu x1, x14, LBB1_267
	jalr x0, LBB1_323 ( x0 )
LBB1_277:                               //  %sw.bb841
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 20 ( x1 )
	nop
	bgez x10, LBB1_279
LBB1_278:                               //  %cond.false849
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB1_279:                               //  %cond.end854
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	sw x10, 12 ( x2 )
	sw x1, 8 ( x2 )
	sw x3, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_280:                               //  %lor.lhs.false861
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_281:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_282:                               //  %sw.bb867
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 20 ( x1 )
	addi x4, x0, -1901
	slti x1, x3, -1900
	andi x1, x1, 1
	bgt x3, x4, LBB1_284
LBB1_283:                               //  %if.then879
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x4, x0, 45
	addi x5, x0, -1900
	sh x4, 100 ( x2 )
	sub x10, x5, x3
	addi x3, x2, 102
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_289 ( x0 )
LBB1_284:                               //  %if.else883
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
	nop
	xori x4, x9, 43
	addi x10, x3, 1900
	addi x5, x2, 102
	addi x7, x2, 100
	beqz x4, LBB1_286
LBB1_285:                               //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x7
	jalr x0, LBB1_289 ( x0 )
LBB1_286:                               //  %if.else883
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x3, 10000 >> 12 & 0xfffff
	ori x28, x0, 10000 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x10, x3, LBB1_288
LBB1_287:                               //    in Loop: Header=BB1_1 Depth=1
	add x3, x0, x7
	jalr x0, LBB1_289 ( x0 )
LBB1_288:                               //  %if.then890
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 43
	sh x1, 100 ( x2 )
	slti x1, x0, 1
	add x3, x0, x5
LBB1_289:                               //  %if.end893
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sltu x1, x0, x1
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x4, x0, x5
	and x1, x1, x4
	addi x4, x0, 37
	andi x1, x1, 1
	sh x4, 0 ( x3 )
	sub x1, x5, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x0, LBB1_291
LBB1_290:                               //    in Loop: Header=BB1_1 Depth=1
	addi x10, x3, 2
	jalr x0, LBB1_292 ( x0 )
LBB1_291:                               //  %if.then902
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 48
	sh x1, 2 ( x3 )
	addi x10, x3, 4
LBB1_292:                               //  %if.end904
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $wcscpy
	addi x1, x2, 100
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 16 ( x2 )
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 12 ( x2 )
	sw x1, 8 ( x2 )
	sw x3, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_293:                               //  %cleanup918
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_294:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_295:                               //  %sw.bb924
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	nop
	bgt x0, x1, LBB1_267
LBB1_296:                               //  %if.then928
                                        //    in Loop: Header=BB1_1 Depth=1
	call $__tz_lock
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_298
LBB1_297:                               //  %if.then931
                                        //    in Loop: Header=BB1_1 Depth=1
	call $_tzset_unlocked
	slti x1, x0, 1
LBB1_298:                               //  %if.end932
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	call $__gettzinfo
	add x8, x0, x10
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	addi x11, x0, 28
	slt x1, x0, x1
	andi x10, x1, 1
	call $__mulsi3
	add x1, x10, x8
	lw x10, 32 ( x1 )
	nop
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -3600 & 0xfff
	slli x28, x28, 20
	lui x1, -3600 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__divsi3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	call $__tz_unlock
	addi x11, x0, -60
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsi3
	call $labs
	addi x11, x0, 60
	call $__modsi3
	ori x28, x0, $.str.15 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.15 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 16 ( x2 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 12 ( x2 )
	sw x1, 8 ( x2 )
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $swprintf
	bgt x0, x10, LBB1_322
LBB1_299:                               //  %cleanup957
                                        //    in Loop: Header=BB1_1 Depth=1
	add x8, x8, x10
	add x5, x0, x0
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x8
	bgtu x1, x14, LBB1_267
LBB1_300:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_301:                               //  %sw.bb962
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x8 )
	nop
	bgt x0, x1, LBB1_267
LBB1_302:                               //  %if.then966
                                        //    in Loop: Header=BB1_1 Depth=1
	call $__tz_lock
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_304
LBB1_303:                               //  %if.then968
                                        //    in Loop: Header=BB1_1 Depth=1
	call $_tzset_unlocked
	slti x1, x0, 1
LBB1_304:                               //  %if.then971
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x8 )
	ori x28, x0, $_tzname & 0xfff
	slli x28, x28, 20
	lui x3, $_tzname >> 12 & 0xfffff
	slt x1, x0, x1
	andi x1, x1, 1
	srli x28, x28, 20
	slli x1, x1, 2
	or x3, x3, x28
	add x1, x3, x1
	lw x8, 0 ( x1 )
	nop
	add x10, x0, x8
	call $strlen
	beqz x10, LBB1_309
LBB1_305:                               //  %for.body981.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x9, 92 ( x2 )                //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
LBB1_306:                               //  %for.body981
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x9
	bgeu x4, x7, LBB1_321
LBB1_307:                               //  %if.then985
                                        //    in Loop: Header=BB1_306 Depth=2
	add x4, x3, x8
	lb x4, 0 ( x4 )
	add x5, x1, x11
	addi x3, x3, 1
	addi x1, x1, 2
	sh x4, 0 ( x5 )
	bgtu x10, x3, LBB1_306
LBB1_308:                               //  %for.end994.loopexit
                                        //    in Loop: Header=BB1_1 Depth=1
	add x9, x3, x9
	sw x9, 92 ( x2 )                //  4-byte Folded Spill
LBB1_309:                               //  %for.end994
                                        //    in Loop: Header=BB1_1 Depth=1
	call $__tz_unlock
	jalr x0, LBB1_171 ( x0 )
LBB1_310:                               //  %sw.bb1000
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x14, LBB1_312
LBB1_311:
	add x4, x0, x5
	jalr x0, LBB1_323 ( x0 )
LBB1_312:                               //  %if.then1004
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x0, 37
	jalr x0, LBB1_237 ( x0 )
LBB1_313:                               //  %if.then51
                                        //    in Loop: Header=BB1_22 Depth=2
	add x4, x3, x8
	lh x4, 0 ( x4 )
	add x5, x3, x9
	addi x1, x1, 1
	addi x3, x3, 2
	sh x4, 0 ( x5 )
	bgeu x1, x10, LBB1_365
LBB1_364:                               //  %if.then51
                                        //    in Loop: Header=BB1_22 Depth=2
	jalr x0, LBB1_22 ( x0 )
LBB1_365:                               //  %if.then51
                                        //    in Loop: Header=BB1_22 Depth=2
LBB1_314:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14, x1, x14
	add x5, x0, x0
	jalr x0, LBB1_267 ( x0 )
LBB1_315:                               //  %if.then70
                                        //    in Loop: Header=BB1_26 Depth=2
	add x4, x3, x8
	lh x4, 0 ( x4 )
	add x5, x3, x9
	addi x1, x1, 1
	addi x3, x3, 2
	sh x4, 0 ( x5 )
	bgeu x1, x10, LBB1_367
LBB1_366:                               //  %if.then70
                                        //    in Loop: Header=BB1_26 Depth=2
	jalr x0, LBB1_26 ( x0 )
LBB1_367:                               //  %if.then70
                                        //    in Loop: Header=BB1_26 Depth=2
	jalr x0, LBB1_314 ( x0 )
LBB1_316:                               //  %if.then90
                                        //    in Loop: Header=BB1_30 Depth=2
	add x4, x3, x8
	lh x4, 0 ( x4 )
	add x5, x3, x9
	addi x1, x1, 1
	addi x3, x3, 2
	sh x4, 0 ( x5 )
	bgeu x1, x10, LBB1_369
LBB1_368:                               //  %if.then90
                                        //    in Loop: Header=BB1_30 Depth=2
	jalr x0, LBB1_30 ( x0 )
LBB1_369:                               //  %if.then90
                                        //    in Loop: Header=BB1_30 Depth=2
	jalr x0, LBB1_314 ( x0 )
LBB1_317:                               //  %if.then111
                                        //    in Loop: Header=BB1_34 Depth=2
	add x4, x3, x8
	lh x4, 0 ( x4 )
	add x5, x3, x9
	addi x1, x1, 1
	addi x3, x3, 2
	sh x4, 0 ( x5 )
	bgeu x1, x10, LBB1_371
LBB1_370:                               //  %if.then111
                                        //    in Loop: Header=BB1_34 Depth=2
	jalr x0, LBB1_34 ( x0 )
LBB1_371:                               //  %if.then111
                                        //    in Loop: Header=BB1_34 Depth=2
	jalr x0, LBB1_314 ( x0 )
LBB1_318:                               //  %lor.end.i1551
                                        //    in Loop: Header=BB1_1 Depth=1
	not x8, x0
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI1_5 >> 12 & 0xfffff
	ori x28, x0, JTI1_5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_319:                               //  %lor.end.i1574
                                        //    in Loop: Header=BB1_1 Depth=1
	not x1, x0
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI1_3 >> 12 & 0xfffff
	ori x28, x0, JTI1_3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_320:                               //  %lor.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI1_1 >> 12 & 0xfffff
	ori x28, x0, JTI1_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_321:                               //  %if.else990
	call $__tz_unlock
LBB1_322:                               //  %cleanup1019
	add x4, x0, x0
LBB1_323:                               //  %cleanup1019
	add x10, x0, x4
	lw x8, 676 ( x2 )               //  4-byte Folded Reload
	lw x1, 684 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 688
$cfi12:
	.cfi_adjust_cfa_offset -688
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$wcsftime, ($func_end1)-($wcsftime)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_310
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_24
	.long	LBB1_32
	.long	LBB1_42
	.long	LBB1_63
	.long	LBB1_323
	.long	LBB1_68
	.long	LBB1_104
	.long	LBB1_144
	.long	LBB1_149
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_164
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_170
	.long	LBB1_323
	.long	LBB1_178
	.long	LBB1_223
	.long	LBB1_229
	.long	LBB1_238
	.long	LBB1_241
	.long	LBB1_271
	.long	LBB1_38
	.long	LBB1_282
	.long	LBB1_301
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_323
	.long	LBB1_20
	.long	LBB1_28
	.long	LBB1_39
	.long	LBB1_58
	.long	LBB1_58
	.long	LBB1_323
	.long	LBB1_83
	.long	LBB1_28
	.long	LBB1_323
	.long	LBB1_158
	.long	LBB1_144
	.long	LBB1_149
	.long	LBB1_161
	.long	LBB1_167
	.long	LBB1_323
	.long	LBB1_170
	.long	LBB1_323
	.long	LBB1_36
	.long	LBB1_181
	.long	LBB1_226
	.long	LBB1_232
	.long	LBB1_323
	.long	LBB1_264
	.long	LBB1_37
	.long	LBB1_277
	.long	LBB1_295
JTI1_1:
	.long	LBB1_251
	.long	LBB1_251
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_251
	.long	LBB1_251
	.long	LBB1_251
	.long	LBB1_251
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_251
	.long	LBB1_251
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_251
	.long	LBB1_251
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_251
	.long	LBB1_251
JTI1_2:
	.long	LBB1_261
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_261
	.long	LBB1_261
	.long	LBB1_261
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_261
	.long	LBB1_261
	.long	LBB1_261
	.long	LBB1_261
	.long	LBB1_261
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_247
	.long	LBB1_261
	.long	LBB1_247
	.long	LBB1_261
	.long	LBB1_247
	.long	LBB1_261
JTI1_3:
	.long	LBB1_114
	.long	LBB1_114
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_114
	.long	LBB1_114
	.long	LBB1_114
	.long	LBB1_114
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_114
	.long	LBB1_114
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_114
	.long	LBB1_114
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_114
	.long	LBB1_114
JTI1_4:
	.long	LBB1_111
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_111
	.long	LBB1_111
	.long	LBB1_111
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_111
	.long	LBB1_111
	.long	LBB1_111
	.long	LBB1_111
	.long	LBB1_111
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_112
	.long	LBB1_111
	.long	LBB1_112
	.long	LBB1_111
	.long	LBB1_112
	.long	LBB1_111
JTI1_5:
	.long	LBB1_92
	.long	LBB1_92
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_92
	.long	LBB1_92
	.long	LBB1_92
	.long	LBB1_92
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_92
	.long	LBB1_92
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_92
	.long	LBB1_92
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_92
	.long	LBB1_92
JTI1_6:
	.long	LBB1_90
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_90
	.long	LBB1_90
	.long	LBB1_90
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_90
	.long	LBB1_90
	.long	LBB1_90
	.long	LBB1_90
	.long	LBB1_90
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_91
	.long	LBB1_90
	.long	LBB1_91
	.long	LBB1_90
	.long	LBB1_91
	.long	LBB1_90

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str:
	.short	37                      //  0x25
	.short	115                     //  0x73
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	42                      //  0x2a
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str, 14

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.1:
	.zero	1
	.size	$.str.1, 1

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str.2:
	.short	37                      //  0x25
	.short	115                     //  0x73
	.short	37                      //  0x25
	.short	48                      //  0x30
	.short	46                      //  0x2e
	.short	42                      //  0x2a
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.2, 16

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.3:
	.asciz	"+"
	.size	$.str.3, 2

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"-"
	.size	$.str.4, 2

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str.5:
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.5, 10

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
	.p2align	1
$.str.6:
	.short	37                      //  0x25
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.6, 8

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
	.p2align	1
$.str.7:
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	47                      //  0x2f
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	47                      //  0x2f
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.7, 30

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
	.p2align	1
$.str.8:
	.short	37                      //  0x25
	.short	108                     //  0x6c
	.short	117                     //  0x75
	.short	0                       //  0x0
	.size	$.str.8, 8

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
	.p2align	1
$.str.9:
	.short	89                      //  0x59
	.short	45                      //  0x2d
	.short	37                      //  0x25
	.short	109                     //  0x6d
	.short	45                      //  0x2d
	.short	37                      //  0x25
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.9, 16

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
	.p2align	1
$.str.10:
	.short	46                      //  0x2e
	.short	42                      //  0x2a
	.short	117                     //  0x75
	.short	0                       //  0x0
	.size	$.str.10, 8

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
	.p2align	1
$.str.11:
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	51                      //  0x33
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.11, 10

	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
	.p2align	1
$.str.12:
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	58                      //  0x3a
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.12, 20

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
	.p2align	1
$.str.13:
	.short	37                      //  0x25
	.short	108                     //  0x6c
	.short	108                     //  0x6c
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.13, 10

	.address_space	0	
	.type	$.str.14,@object        //  @.str.14
	.p2align	1
$.str.14:
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	58                      //  0x3a
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	58                      //  0x3a
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.14, 30

	.address_space	0	
	.type	$.str.15,@object        //  @.str.15
	.p2align	1
$.str.15:
	.short	37                      //  0x25
	.short	43                      //  0x2b
	.short	48                      //  0x30
	.short	51                      //  0x33
	.short	108                     //  0x6c
	.short	100                     //  0x64
	.short	37                      //  0x25
	.short	46                      //  0x2e
	.short	50                      //  0x32
	.short	108                     //  0x6c
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str.15, 24

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
