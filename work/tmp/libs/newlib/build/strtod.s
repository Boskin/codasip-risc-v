	.text
	.file	"strtod.bc"
	.globl	$_strtod_r
	.type	$_strtod_r,@function
$_strtod_r:                             //  @_strtod_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -136
$cfi2:
	.cfi_adjust_cfa_offset 136
	sw x1, 132 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 124 ( x2 )               //  4-byte Folded Spill
	sw x12, 56 ( x2 )               //  4-byte Folded Spill
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x0, 112 ( x2 )
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	addi x1, x11, 1
	sw x0, 104 ( x2 )
	sw x0, 108 ( x2 )
LBB0_1:                                 //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x1, -1
	sw x8, 116 ( x2 )
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lb x3, -1 ( x1 )
	addi x1, x0, 45
	bgtu x3, x1, LBB0_9
LBB0_2:                                 //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x0, x3
	addi x11, x0, 4
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_3:                                 //  %sw.bb1.loopexit1813
	slti x1, x0, 1
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %sw.bb1.loopexit
	add x1, x0, x0
LBB0_5:                                 //  %sw.bb1
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 116 ( x2 )
	lbu x3, 0 ( x8 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_10
LBB0_6:                                 //  %ret0
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_7:                                 //  %ret.loopexit
	sw x1, 116 ( x2 )
	add x1, x0, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_297 ( x0 )
LBB0_8:                                 //  %for.inc
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	jalr x0, LBB0_1 ( x0 )
LBB0_9:                                 //  %break2.loopexit
	add x1, x0, x0
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
LBB0_10:                                //  %break2
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	andi x1, x3, 255
	xori x1, x1, 48
	add x5, x0, x0
	beqz x1, LBB0_12
LBB0_11:
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_32 ( x0 )
LBB0_12:                                //  %if.then7
	lb x1, 1 ( x8 )
	addi x4, x8, 1
	ori x1, x1, 32
	xori x1, x1, 120
	bgtu x1, x0, LBB0_29
LBB0_13:                                //  %sw.bb9
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_strtod_r.fpi & 0xfff
	slli x28, x28, 20
	lui x1, $_strtod_r.fpi >> 12 & 0xfffff
	srli x28, x28, 20
	addi x11, x2, 116
	or x12, x1, x28
	addi x13, x2, 120
	addi x14, x2, 104
	lw x15, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gethex
	andi x8, x10, 7
	bgtu x8, x0, LBB0_307
LBB0_306:                               //  %sw.bb9
	jalr x0, LBB0_297 ( x0 )
LBB0_307:                               //  %sw.bb9
LBB0_14:                                //  %sw.bb9
	xori x1, x8, 6
	bgtu x1, x0, LBB0_16
LBB0_15:                                //  %sw.bb10
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_16:                                //  %sw.default11
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	lw x12, 104 ( x2 )
	nop
	beqz x12, LBB0_18
LBB0_17:                                //  %if.then13
	addi x10, x2, 96
	addi x11, x0, 53
	call $__copybits
	lw x11, 104 ( x2 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
LBB0_18:                                //  %if.end14
	addi x10, x8, -1
	addi x1, x0, 5
	bgtu x10, x1, LBB0_27
LBB0_19:                                //  %if.end14
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_1 >> 12 & 0xfffff
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_20:                                //  %sw.bb.i
	add x1, x0, x0
	addi x3, x2, 108
	sw x0, 112 ( x2 )
	jalr x0, LBB0_26 ( x0 )
LBB0_21:                                //  %sw.bb2.i
	lw x4, 96 ( x2 )
	addi x3, x2, 112
	lw x1, 100 ( x2 )
	sw x4, 108 ( x2 )
	jalr x0, LBB0_26 ( x0 )
LBB0_22:                                //  %sw.bb7.i
	lw x1, 120 ( x2 )
	ori x28, x0, -1048577 & 0xfff
	lw x3, 100 ( x2 )
	slli x28, x28, 20
	lw x4, 96 ( x2 )
	lui x5, -1048577 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	slli x1, x1, 20
	lui x7, 1127219200>>12 &0xfffff
	add x1, x7, x1
	and x3, x5, x3
	sw x4, 108 ( x2 )
	or x1, x1, x3
	addi x3, x2, 112
	jalr x0, LBB0_26 ( x0 )
LBB0_23:                                //  %sw.bb14.i
	lui x1, 2146435072>>12 &0xfffff
	sw x1, 112 ( x2 )
	add x1, x0, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_24:                                //  %sw.bb17.i
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 112 ( x2 )
	not x1, x0
LBB0_25:                                //  %sw.epilog.sink.split.i
	addi x3, x2, 108
LBB0_26:                                //  %sw.epilog.sink.split.i
	sw x1, 0 ( x3 )
LBB0_27:                                //  %sw.epilog.i
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 8
	bgtu x1, x0, LBB0_309
LBB0_308:                               //  %sw.epilog.i
	jalr x0, LBB0_297 ( x0 )
LBB0_309:                               //  %sw.epilog.i
LBB0_28:                                //  %if.then.i
	ori x28, x0, -2147483648 & 0xfff
	lw x1, 112 ( x2 )
	slli x28, x28, 20
	lui x3, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	or x1, x3, x1
	sw x1, 112 ( x2 )
	jalr x0, LBB0_297 ( x0 )
LBB0_29:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 116 ( x2 )
	lbu x3, 0 ( x4 )
	addi x4, x4, 1
	xori x1, x3, 48
	beqz x1, LBB0_29
LBB0_30:                                //  %while.cond
	bgtu x3, x0, LBB0_311
LBB0_310:                               //  %while.cond
	jalr x0, LBB0_297 ( x0 )
LBB0_311:                               //  %while.cond
LBB0_31:                                //  %if.end27.loopexit
	slti x1, x0, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x8, x4, -1
LBB0_32:                                //  %if.end27
	addi x1, x3, -48
	slli x3, x3, 24
	andi x1, x1, 255
	addi x7, x0, 9
	srai x3, x3, 24
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	bgeu x7, x1, LBB0_34
LBB0_33:
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_40 ( x0 )
LBB0_34:                                //  %for.body.preheader
	add x7, x0, x0
	sw x7, 72 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x7
LBB0_35:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x8, x0, x3
	addi x1, x0, 8
	sw x7, 80 ( x2 )                //  4-byte Folded Spill
	bgt x7, x1, LBB0_37
LBB0_36:                                //  %if.then36
                                        //    in Loop: Header=BB0_35 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	add x1, x8, x10
	addi x1, x1, -48
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_38 ( x0 )
LBB0_37:                                //  %if.else
                                        //    in Loop: Header=BB0_35 Depth=1
	add x10, x0, x5
	addi x11, x0, 10
	call $__mulsi3
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	add x1, x8, x10
	addi x5, x1, -48
LBB0_38:                                //  %for.inc41
                                        //    in Loop: Header=BB0_35 Depth=1
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x7, x4
	addi x3, x1, 1
	sw x3, 116 ( x2 )
	lb x3, 1 ( x1 )
	addi x7, x7, 1
	addi x1, x3, -48
	andi x1, x1, 255
	sltiu x1, x1, 10
	bgtu x1, x0, LBB0_35
LBB0_39:                                //  %for.end.loopexit
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	sw x7, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x7, x4
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB0_40:                                //  %for.end
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $_localeconv_r
	lw x1, 0 ( x10 )
	nop
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $_localeconv_r
	lw x10, 0 ( x10 )
	nop
	call $strlen
	add x1, x0, x10
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	call $strncmp
	beqz x10, LBB0_42
LBB0_41:
	add x1, x0, x0
	add x9, x0, x1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	add x4, x0, x11
	add x12, x0, x1
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	lw x7, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_70 ( x0 )
LBB0_42:                                //  %if.then50
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $_localeconv_r
	lw x10, 0 ( x10 )
	nop
	call $strlen
	add x8, x10, x8
	sw x8, 116 ( x2 )
	lb x7, 0 ( x8 )
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x11, LBB0_46
LBB0_43:
	add x9, x0, x0
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x11
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
LBB0_44:                                //  %for.cond75
	addi x1, x7, -48
	addi x3, x0, 9
	bgeu x3, x1, LBB0_313
LBB0_312:                               //  %for.cond75
	jalr x0, LBB0_304 ( x0 )
LBB0_313:                               //  %for.cond75
LBB0_45:
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_53 ( x0 )
LBB0_46:                                //  %for.cond58.preheader
	xori x1, x7, 48
	add x4, x0, x0
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_48
LBB0_47:
	add x9, x0, x4
	jalr x0, LBB0_51 ( x0 )
LBB0_48:                                //  %for.body61.preheader
	add x9, x0, x0
LBB0_49:                                //  %for.body61
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x9, x8
	addi x3, x1, 1
	sw x3, 116 ( x2 )
	lb x7, 1 ( x1 )
	addi x9, x9, 1
	xori x1, x7, 48
	beqz x1, LBB0_49
LBB0_50:                                //  %for.end66.loopexit
	add x8, x9, x8
LBB0_51:                                //  %for.end66
	addi x1, x7, -49
	sltiu x1, x1, 9
	beqz x1, LBB0_69
LBB0_52:
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x9
	add x1, x0, x4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x4
LBB0_53:                                //  %have_dig
	addi x7, x7, -48
	addi x4, x9, 1
	bgtu x7, x0, LBB0_55
LBB0_54:
	add x9, x0, x4
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x1
	jalr x0, LBB0_68 ( x0 )
LBB0_55:                                //  %if.then86
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x3, x4
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	addi x4, x1, 1
	ble x9, x0, LBB0_65
LBB0_56:                                //  %for.body91.preheader
	slti x3, x1, 9
	add x1, x9, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB0_57:                                //  %for.body91
                                        //  =>This Inner Loop Header: Depth=1
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
	andi x1, x3, 1
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_59
LBB0_58:                                //  %if.then95
                                        //    in Loop: Header=BB0_57 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_61 ( x0 )
LBB0_59:                                //  %if.else97
                                        //    in Loop: Header=BB0_57 Depth=1
	add x10, x0, x5
	addi x11, x0, 10
	call $__mulsi3
	add x5, x0, x10
	addi x1, x0, 17
	bgt x1, x8, LBB0_61
LBB0_60:                                //  %if.else97
                                        //    in Loop: Header=BB0_57 Depth=1
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
LBB0_61:                                //  %if.else97
                                        //    in Loop: Header=BB0_57 Depth=1
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x9, x9, -1
	slti x3, x8, 9
	addi x4, x8, 1
	bgtu x9, x0, LBB0_57
LBB0_62:                                //  %for.end106.loopexit
	slti x1, x8, 9
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x3, 1
	bgtu x1, x0, LBB0_66
LBB0_63:                                //  %if.else113
	addi x1, x0, 16
	add x9, x0, x0
	bgt x4, x1, LBB0_67
LBB0_64:                                //  %if.then116
	add x8, x0, x4
	addi x11, x0, 10
	add x10, x0, x5
	call $__mulsi3
	add x9, x0, x0
	add x4, x0, x8
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x1, x10
	jalr x0, LBB0_67 ( x0 )
LBB0_65:                                //  %for.end106
	addi x3, x0, 8
	bgt x1, x3, LBB0_63
LBB0_66:                                //  %if.then110
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x5
	call $__mulsi3
	add x5, x0, x8
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x0
LBB0_67:                                //  %for.inc122
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
LBB0_68:                                //  %for.inc122
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x1, 1
	sw x8, 116 ( x2 )
	lb x7, 1 ( x1 )
	jalr x0, LBB0_44 ( x0 )
LBB0_69:
	slti x12, x0, 1
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
LBB0_70:                                //  %dig_done
	ori x1, x7, 32
	xori x1, x1, 101
	bgtu x1, x0, LBB0_97
LBB0_71:                                //  %if.then131
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x4
	or x1, x9, x1
	beqz x1, LBB0_6
LBB0_72:                                //  %if.end138
	addi x14, x8, 1
	sw x14, 116 ( x2 )
	lb x7, 1 ( x8 )
	add x13, x0, x0
	xori x1, x7, 43
	beqz x1, LBB0_75
LBB0_73:                                //  %if.end138
	xori x1, x7, 45
	bgtu x1, x0, LBB0_76
LBB0_74:                                //  %sw.bb141
	slti x13, x0, 1
LBB0_75:                                //  %sw.bb142
	addi x14, x8, 2
	sw x14, 116 ( x2 )
	lb x7, 2 ( x8 )
	nop
LBB0_76:                                //  %sw.epilog145
	addi x1, x7, -48
	addi x3, x0, 9
	bgtu x1, x3, LBB0_93
LBB0_77:                                //  %while.cond152.preheader
	xori x1, x7, 48
	bgtu x1, x0, LBB0_81
LBB0_78:                                //  %while.body155.preheader
	addi x1, x14, 1
LBB0_79:                                //  %while.body155
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 116 ( x2 )
	lb x7, 0 ( x1 )
	addi x1, x1, 1
	xori x3, x7, 48
	beqz x3, LBB0_79
LBB0_80:                                //  %while.end158.loopexit
	addi x14, x1, -1
LBB0_81:                                //  %while.end158
	addi x1, x7, -49
	addi x15, x0, 8
	bgtu x1, x15, LBB0_94
LBB0_82:                                //  %if.then164
	addi x1, x14, 1
	sw x1, 116 ( x2 )
	lb x16, 1 ( x14 )
	addi x10, x7, -48
	addi x3, x16, -48
	andi x3, x3, 255
	addi x7, x0, 9
	bgeu x7, x3, LBB0_84
LBB0_83:
	add x7, x0, x16
	jalr x0, LBB0_87 ( x0 )
LBB0_84:                                //  %while.body175.preheader
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x11, 80 ( x2 )               //  4-byte Folded Spill
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	addi x8, x14, 2
LBB0_85:                                //  %while.body175
                                        //  =>This Inner Loop Header: Depth=1
	sw x16, 52 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	sw x8, 116 ( x2 )
	lb x7, 0 ( x8 )
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 1
	addi x10, x1, -48
	addi x1, x7, -48
	andi x1, x1, 255
	sltiu x1, x1, 10
	add x16, x0, x7
	bgtu x1, x0, LBB0_85
LBB0_86:                                //  %while.end179.loopexit
	addi x1, x8, -1
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x15, x0, 8
LBB0_87:                                //  %while.end179
	ori x28, x0, 19999 & 0xfff
	slli x28, x28, 20
	sub x3, x1, x14
	lui x1, 19999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	bgt x3, x15, LBB0_89
LBB0_88:                                //  %while.end179
	add x1, x0, x10
LBB0_89:                                //  %while.end179
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x10, x3, LBB0_91
LBB0_90:                                //  %while.end179
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB0_91:                                //  %while.end179
	add x1, x0, x0
	beq x13, x1, LBB0_96
LBB0_92:                                //  %while.end179
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x0, x1
	jalr x0, LBB0_95 ( x0 )
LBB0_93:                                //  %if.else194
	sw x8, 116 ( x2 )
LBB0_94:                                //  %if.end196
	add x1, x0, x0
LBB0_95:                                //  %if.end196
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB0_96:                                //  %if.end196
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
LBB0_97:                                //  %if.end196
	bgtu x4, x0, LBB0_112
LBB0_98:                                //  %if.then198
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x9
	beqz x1, LBB0_315
LBB0_314:                               //  %if.then198
	jalr x0, LBB0_297 ( x0 )
LBB0_315:                               //  %if.then198
LBB0_99:                                //  %if.then202
	bgtu x12, x0, LBB0_6
LBB0_100:                               //  %if.then205
	addi x10, x7, -73
	addi x1, x0, 37
	bgtu x10, x1, LBB0_6
LBB0_101:                               //  %if.then205
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_2 >> 12 & 0xfffff
	ori x28, x0, JTI0_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_102:                               //  %sw.bb206
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 116
	or x11, x1, x28
	call $__match
	beqz x10, LBB0_6
LBB0_103:                               //  %if.then209
	lw x1, 116 ( x2 )
	nop
	addi x1, x1, -1
	sw x1, 116 ( x2 )
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 116
	or x11, x1, x28
	call $__match
	bgtu x10, x0, LBB0_105
LBB0_104:                               //  %if.then213
	lw x1, 116 ( x2 )
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )
LBB0_105:                               //  %if.end215
	lui x1, 2146435072>>12 &0xfffff
	sw x1, 112 ( x2 )
	sw x0, 108 ( x2 )
	jalr x0, LBB0_297 ( x0 )
LBB0_106:                               //  %sw.bb221
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 116
	or x11, x1, x28
	call $__match
	beqz x10, LBB0_6
LBB0_107:                               //  %if.then224
	lw x1, 116 ( x2 )
	nop
	lbu x1, 0 ( x1 )
	nop
	xori x1, x1, 40
	bgtu x1, x0, LBB0_111
LBB0_108:                               //  %land.lhs.true228
	ori x28, x0, $_strtod_r.fpinan & 0xfff
	slli x28, x28, 20
	lui x1, $_strtod_r.fpinan >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 116
	or x11, x1, x28
	addi x12, x2, 88
	call $__hexnan
	xori x1, x10, 5
	bgtu x1, x0, LBB0_111
LBB0_109:                               //  %if.then233
	lw x1, 92 ( x2 )
	lw x3, 88 ( x2 )
	lui x4, 2146435072>>12 &0xfffff
	or x1, x4, x1
LBB0_110:                               //  %ret
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
	jalr x0, LBB0_297 ( x0 )
LBB0_111:                               //  %if.else240
	ori x28, x0, -524288 & 0xfff
	slli x28, x28, 20
	lui x1, -524288 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x3, x0, x0
	jalr x0, LBB0_110 ( x0 )
LBB0_112:                               //  %if.end250
	add x1, x0, x0
	add x3, x0, x4
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	beq x11, x1, LBB0_114
LBB0_113:                               //  %if.end250
	add x3, x0, x11
LBB0_114:                               //  %if.end250
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	add x8, x0, x4
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	bgt x1, x4, LBB0_116
LBB0_115:                               //  %if.end250
	add x8, x0, x1
LBB0_116:                               //  %if.end250
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatunsidf
	add x3, x0, x10
	add x1, x0, x11
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
	slti x4, x8, 10
	bgtu x4, x0, LBB0_118
LBB0_117:                               //  %if.then261
	slli x4, x8, 3
	lui x5, $__mprec_tens-68 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens-68 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	add x5, x5, x4
	lui x7, $__mprec_tens-72 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens-72 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	add x4, x7, x4
	lw x12, 0 ( x4 )
	lw x13, 0 ( x5 )
	add x10, x0, x3
	add x11, x0, x1
	call $__muldf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatunsidf
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x3, x0, x10
	add x1, x0, x11
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
LBB0_118:                               //  %if.end269
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x7, x4, x5
	addi x4, x0, 15
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x9, x4, LBB0_130
LBB0_119:                               //  %land.lhs.true272
	add x5, x0, x0
	bgtu x5, x0, LBB0_130
LBB0_120:                               //  %if.then275
	bgtu x7, x0, LBB0_317
LBB0_316:                               //  %if.then275
	jalr x0, LBB0_297 ( x0 )
LBB0_317:                               //  %if.then275
LBB0_121:                               //  %if.end278
	ble x7, x0, LBB0_128
LBB0_122:                               //  %if.then281
	addi x5, x0, 22
	bgt x7, x5, LBB0_126
LBB0_123:                               //  %if.then284
	slli x4, x7, 3
	lui x5, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	add x5, x5, x4
	lui x7, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	add x4, x7, x4
	lw x10, 0 ( x4 )
	lw x11, 0 ( x5 )
	add x12, x0, x3
	add x13, x0, x1
LBB0_124:                               //  %ret
	call $__muldf3
LBB0_125:                               //  %ret
	sw x11, 112 ( x2 )
	sw x10, 108 ( x2 )
	jalr x0, LBB0_297 ( x0 )
LBB0_126:                               //  %if.end288
	addi x5, x0, 37
	sub x5, x5, x9
	bgt x7, x5, LBB0_130
LBB0_127:                               //  %if.then293
	sub x4, x4, x9
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	slli x4, x4, 3
	lui x5, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	add x5, x5, x4
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x5 )
	lui x5, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x5, x28
	add x4, x8, x4
	lw x11, 0 ( x4 )
	add x12, x0, x3
	add x13, x0, x1
	call $__muldf3
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	slli x1, x1, 3
	add x3, x8, x1
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	lw x12, 0 ( x1 )
	lw x13, 0 ( x3 )
	jalr x0, LBB0_124 ( x0 )
LBB0_128:                               //  %if.else302
	slti x4, x7, -22
	bgtu x4, x0, LBB0_130
LBB0_129:                               //  %if.then305
	slli x4, x7, 3
	lui x5, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	sub x4, x5, x4
	lw x12, 0 ( x4 )
	lw x13, 4 ( x4 )
	add x10, x0, x3
	add x11, x0, x1
	call $__divdf3
	jalr x0, LBB0_125 ( x0 )
LBB0_130:                               //  %if.end311
	sub x4, x9, x8
	add x9, x4, x7
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	ble x9, x0, LBB0_146
LBB0_131:                               //  %if.then316
	andi x4, x9, 15
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	beqz x4, LBB0_133
LBB0_132:                               //  %if.then320
	slli x4, x4, 3
	lui x5, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	add x5, x5, x4
	lui x7, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	add x4, x7, x4
	lw x10, 0 ( x4 )
	lw x11, 0 ( x5 )
	add x12, x0, x3
	add x13, x0, x1
	add x8, x0, x9
	call $__muldf3
	add x9, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	add x1, x0, x11
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
LBB0_133:                               //  %if.end324
	andi x4, x9, -16
	beqz x4, LBB0_166
LBB0_134:                               //  %if.then327
	addi x5, x0, 308
	ble x4, x5, LBB0_136
LBB0_135:                               //  %ovfl.thread1557
	addi x1, x0, 34
	sw x1, 0 ( x8 )
	jalr x0, LBB0_105 ( x0 )
LBB0_136:                               //  %if.end338
	add x5, x0, x0
	sltiu x4, x9, 32
	bgtu x4, x0, LBB0_141
LBB0_137:                               //  %for.body342.preheader
	lui x4, $__mprec_bigtens >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x4, x28
	srli x4, x9, 4
	addi x7, x0, 3
LBB0_138:                               //  %for.body342
                                        //  =>This Inner Loop Header: Depth=1
	add x9, x0, x4
	andi x4, x9, 1
	beqz x4, LBB0_140
LBB0_139:                               //  %if.then345
                                        //    in Loop: Header=BB0_138 Depth=1
	lw x10, 0 ( x8 )
	lw x11, 4 ( x8 )
	add x12, x0, x3
	add x13, x0, x1
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	lw x9, 76 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 3
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	add x1, x0, x11
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
LBB0_140:                               //  %for.inc350
                                        //    in Loop: Header=BB0_138 Depth=1
	addi x8, x8, 8
	srli x4, x9, 1
	addi x5, x5, 1
	bgtu x9, x7, LBB0_138
LBB0_141:                               //  %for.end353
	slli x3, x5, 3
	lui x4, $__mprec_bigtens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x4, x4, x3
	lui x5, $__mprec_bigtens >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	add x3, x5, x3
	lui x5, -55574528 >> 12 & 0xfffff
	ori x28, x0, -55574528 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	add x13, x5, x1
	sw x13, 112 ( x2 )
	lw x10, 0 ( x3 )
	lw x11, 0 ( x4 )
	lw x12, 108 ( x2 )
	nop
	call $__muldf3
	sw x11, 112 ( x2 )
	sw x10, 108 ( x2 )
	lui x1, 2146435072>>12 &0xfffff
	and x1, x1, x11
	lui x3, 2090860544>>12 &0xfffff
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x3, LBB0_135
LBB0_142:                               //  %if.end366
	lui x3, 2089811969 >> 12 & 0xfffff
	ori x28, x0, 2089811969 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_144
LBB0_143:                               //  %if.then369
	lui x1, 2146435071 >> 12 & 0xfffff
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 112 ( x2 )
	not x1, x0
	sw x1, 108 ( x2 )
	add x1, x0, x0
	jalr x0, LBB0_165 ( x0 )
LBB0_144:                               //  %if.else374
	lui x1, 55574528>>12 &0xfffff
	add x1, x1, x11
	sw x1, 112 ( x2 )
	add x1, x0, x0
	jalr x0, LBB0_165 ( x0 )
LBB0_146:                               //  %if.else380
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	bgez x9, LBB0_166
LBB0_147:                               //  %if.then383
	sub x8, x0, x9
	andi x4, x8, 15
	beqz x4, LBB0_149
LBB0_148:                               //  %if.then388
	slli x4, x4, 3
	lui x5, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	add x5, x5, x4
	lui x7, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	add x4, x7, x4
	lw x12, 0 ( x4 )
	lw x13, 0 ( x5 )
	add x10, x0, x3
	add x11, x0, x1
	call $__divdf3
	add x3, x0, x10
	add x1, x0, x11
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
LBB0_149:                               //  %if.end392
	srai x5, x8, 4
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	beqz x5, LBB0_166
LBB0_150:                               //  %if.then395
	addi x4, x0, 31
	bgt x5, x4, LBB0_305
LBB0_151:                               //  %if.end399
	andi x4, x5, 16
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	ble x5, x0, LBB0_156
LBB0_152:                               //  %for.body407.preheader
	lui x4, $tinytens >> 12 & 0xfffff
	ori x28, x0, $tinytens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x4, x28
	add x8, x0, x5
LBB0_153:                               //  %for.body407
                                        //  =>This Inner Loop Header: Depth=1
	andi x4, x8, 1
	beqz x4, LBB0_155
LBB0_154:                               //  %if.then410
                                        //    in Loop: Header=BB0_153 Depth=1
	lw x10, 0 ( x7 )
	lw x11, 4 ( x7 )
	add x12, x0, x3
	add x13, x0, x1
	sw x7, 80 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	add x1, x0, x11
	sw x1, 112 ( x2 )
	sw x3, 108 ( x2 )
LBB0_155:                               //  %for.inc415
                                        //    in Loop: Header=BB0_153 Depth=1
	addi x7, x7, 8
	srli x8, x8, 1
	bgtu x8, x0, LBB0_153
LBB0_156:                               //  %for.end418
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB0_163
LBB0_157:                               //  %land.lhs.true420
	srli x4, x1, 20
	andi x4, x4, 2047
	addi x5, x0, 107
	sub x4, x5, x4
	ble x4, x0, LBB0_163
LBB0_158:                               //  %if.then428
	slti x5, x4, 32
	bgtu x5, x0, LBB0_162
LBB0_159:                               //  %if.then431
	sw x0, 108 ( x2 )
	slti x3, x4, 53
	bgtu x3, x0, LBB0_161
LBB0_160:                               //  %if.then436
	lui x1, 57671680>>12 &0xfffff
	sw x1, 112 ( x2 )
	jalr x0, LBB0_163 ( x0 )
LBB0_161:                               //  %if.else439
	addi x3, x4, -32
	not x4, x0
	sll x3, x4, x3
	and x1, x3, x1
	sw x1, 112 ( x2 )
	jalr x0, LBB0_163 ( x0 )
LBB0_162:                               //  %if.else445
	not x1, x0
	sll x1, x1, x4
	and x1, x1, x3
	sw x1, 108 ( x2 )
LBB0_163:                               //  %if.end451
	lw x10, 108 ( x2 )
	lw x11, 112 ( x2 )
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_305
LBB0_164:
	slli x1, x1, 27
	srai x1, x1, 31
	andi x1, x1, 106
LBB0_165:                               //  %if.end463
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
LBB0_166:                               //  %if.end463
	add x10, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	lw x14, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__s2b
	beqz x10, LBB0_135
LBB0_167:                               //  %for.cond469.preheader
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x11, 4 ( x10 )
	add x10, x0, x8
	call $_Balloc
	bgtu x10, x0, LBB0_171
LBB0_168:                               //  %for.cond469.preheader.ovfl.thread_crit_edge
	add x1, x0, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB0_169:                               //  %ovfl.thread
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
LBB0_170:                               //  %ovfl.thread
	addi x1, x0, 34
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lui x1, 2146435072>>12 &0xfffff
	sw x1, 112 ( x2 )
	sw x0, 108 ( x2 )
	jalr x0, LBB0_296 ( x0 )
LBB0_171:                               //  %if.end474.lr.ph
	add x5, x0, x0
	not x1, x0
	add x4, x0, x5
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_173
LBB0_172:                               //  %if.end474.lr.ph
	sub x4, x0, x3
LBB0_173:                               //  %if.end474.lr.ph
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	bgt x3, x1, LBB0_175
LBB0_174:                               //  %if.end474.lr.ph
	add x3, x0, x5
LBB0_175:                               //  %if.end474.lr.ph
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x3, x1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x4, 12
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
LBB0_176:                               //  %if.end474
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 16 ( x4 )
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	addi x10, x10, 12
	slli x1, x1, 2
	addi x12, x1, 8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x12, 112 ( x2 )
	lw x11, 108 ( x2 )
	add x10, x0, x8
	addi x13, x2, 96
	addi x14, x2, 120
	call $__d2b
	sw x10, 104 ( x2 )
	beqz x10, LBB0_170
LBB0_177:                               //  %if.end484
                                        //    in Loop: Header=BB0_176 Depth=1
	add x10, x0, x8
	slti x11, x0, 1
	call $__i2b
	add x7, x0, x10
	bgtu x7, x0, LBB0_179
LBB0_178:
	add x1, x0, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_170 ( x0 )
LBB0_179:                               //  %if.end489
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x3, 96 ( x2 )
	add x9, x0, x0
	add x1, x0, x9
	not x5, x0
	bgt x3, x5, LBB0_181
LBB0_180:                               //  %if.end489
                                        //    in Loop: Header=BB0_176 Depth=1
	sub x1, x0, x3
LBB0_181:                               //  %if.end489
                                        //    in Loop: Header=BB0_176 Depth=1
	add x4, x0, x3
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	bgt x3, x5, LBB0_183
LBB0_182:                               //  %if.end489
                                        //    in Loop: Header=BB0_176 Depth=1
	add x4, x0, x9
LBB0_183:                               //  %if.end489
                                        //    in Loop: Header=BB0_176 Depth=1
	add x10, x13, x4
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x3, x4
	lw x5, 120 ( x2 )
	addi x3, x0, 54
	sub x3, x3, x5
	add x4, x5, x4
	addi x5, x0, -1022
	ble x4, x5, LBB0_186
LBB0_184:                               //    in Loop: Header=BB0_176 Depth=1
	slti x4, x0, 1
LBB0_185:                               //  %if.end520
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	sw x9, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_189 ( x0 )
LBB0_186:                               //  %if.then509
                                        //    in Loop: Header=BB0_176 Depth=1
	addi x5, x0, -1021
	sub x4, x5, x4
	sub x3, x3, x4
	addi x5, x0, 31
	bgt x4, x5, LBB0_188
LBB0_187:                               //  %if.then514
                                        //    in Loop: Header=BB0_176 Depth=1
	slti x5, x0, 1
	sll x4, x5, x4
	jalr x0, LBB0_185 ( x0 )
LBB0_188:                               //  %if.else516
                                        //    in Loop: Header=BB0_176 Depth=1
	addi x4, x4, -32
	slti x5, x0, 1
	sll x4, x5, x4
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
LBB0_189:                               //  %if.end520
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x4
	add x8, x3, x1
	add x12, x10, x3
	add x3, x0, x12
	bgt x8, x12, LBB0_191
LBB0_190:                               //  %if.end520
                                        //    in Loop: Header=BB0_176 Depth=1
	add x3, x0, x8
LBB0_191:                               //  %if.end520
                                        //    in Loop: Header=BB0_176 Depth=1
	add x1, x0, x10
	bgt x3, x10, LBB0_193
LBB0_192:                               //  %if.end520
                                        //    in Loop: Header=BB0_176 Depth=1
	add x1, x0, x3
LBB0_193:                               //  %if.end520
                                        //    in Loop: Header=BB0_176 Depth=1
	ble x1, x0, LBB0_195
LBB0_194:                               //  %if.then536
                                        //    in Loop: Header=BB0_176 Depth=1
	sub x10, x10, x1
	sub x8, x8, x1
	sub x12, x12, x1
LBB0_195:                               //  %if.end540
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	bgt x13, x0, LBB0_197
LBB0_196:                               //    in Loop: Header=BB0_176 Depth=1
	sw x7, 84 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_200 ( x0 )
LBB0_197:                               //  %if.then543
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x7
	add x12, x0, x13
	call $__pow5mult
	add x1, x0, x10
	beqz x1, LBB0_178
LBB0_198:                               //  %if.end548
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x12, 104 ( x2 )
	add x10, x0, x8
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	call $__multiply
	add x1, x0, x8
	add x8, x0, x10
	beqz x8, LBB0_170
LBB0_199:                               //  %if.end553
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x11, 104 ( x2 )
	add x10, x0, x1
	call $_Bfree
	sw x8, 104 ( x2 )
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_200:                               //  %if.end554
                                        //    in Loop: Header=BB0_176 Depth=1
	ble x12, x0, LBB0_202
LBB0_201:                               //  %if.then557
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x11, 104 ( x2 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__lshift
	sw x10, 104 ( x2 )
	beqz x10, LBB0_170
LBB0_202:                               //  %if.end563
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x12, x0, LBB0_206
LBB0_203:                               //    in Loop: Header=BB0_176 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
LBB0_204:                               //  %if.end572
                                        //    in Loop: Header=BB0_176 Depth=1
	bgt x8, x0, LBB0_208
LBB0_205:                               //    in Loop: Header=BB0_176 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_209 ( x0 )
LBB0_206:                               //  %if.then566
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__pow5mult
	add x3, x0, x10
	bgtu x3, x0, LBB0_204
LBB0_207:
	add x1, x0, x0
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_170 ( x0 )
LBB0_208:                               //  %if.then575
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x3
	add x12, x0, x8
	call $__lshift
	add x3, x0, x10
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB0_207
LBB0_209:                               //  %if.end581
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	bgt x12, x0, LBB0_211
LBB0_210:                               //    in Loop: Header=BB0_176 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_212 ( x0 )
LBB0_211:                               //  %if.then584
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__lshift
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	beqz x1, LBB0_178
LBB0_212:                               //  %if.end590
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x11, 104 ( x2 )
	add x10, x0, x8
	add x12, x0, x3
	call $__mdiff
	bgtu x10, x0, LBB0_214
LBB0_213:
	add x1, x0, x0
	jalr x0, LBB0_169 ( x0 )
LBB0_214:                               //  %if.end595
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x1, 12 ( x10 )
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sw x0, 12 ( x10 )
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mcmp
	bgez x10, LBB0_221
LBB0_215:                               //  %if.then601
	lw x1, 108 ( x2 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x3
	bgtu x1, x0, LBB0_294
LBB0_216:                               //  %lor.lhs.false607
	lw x1, 112 ( x2 )
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x8, 1048575 >> 12 & 0xfffff
	or x3, x8, x28
	and x3, x3, x1
	bgtu x3, x0, LBB0_294
LBB0_217:                               //  %lor.lhs.false607
	lui x3, 2146435072>>12 &0xfffff
	and x1, x3, x1
	lui x3, 112197633 >> 12 & 0xfffff
	ori x28, x0, 112197633 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_294
LBB0_218:                               //  %if.end619
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 20 ( x11 )
	nop
	bgtu x1, x0, LBB0_220
LBB0_219:                               //  %land.lhs.true622
	lw x1, 16 ( x11 )
	nop
	slti x1, x1, 2
	bgtu x1, x0, LBB0_294
LBB0_220:                               //  %if.end627
	slti x12, x0, 1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__lshift
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mcmp
	bgt x10, x0, LBB0_233
	jalr x0, LBB0_294 ( x0 )
LBB0_221:                               //  %if.end634
                                        //    in Loop: Header=BB0_176 Depth=1
	bgtu x10, x0, LBB0_249
LBB0_222:                               //  %if.then637
	lw x1, 112 ( x2 )
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x8, 1048575 >> 12 & 0xfffff
	or x3, x8, x28
	and x3, x3, x1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB0_232
LBB0_223:                               //  %if.then639
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x8, x28
	bne x3, x4, LBB0_238
LBB0_224:                               //  %land.lhs.true645
	lw x3, 108 ( x2 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_226
LBB0_225:
	not x5, x0
	jalr x0, LBB0_228 ( x0 )
LBB0_226:                               //  %land.lhs.true649
	lui x4, 2146435072>>12 &0xfffff
	and x4, x4, x1
	not x5, x0
	lui x7, 111149056>>12 &0xfffff
	bgtu x4, x7, LBB0_228
LBB0_227:                               //  %cond.true655
	srli x4, x4, 20
	addi x5, x0, 107
	sub x4, x5, x4
	not x5, x0
	sll x5, x5, x4
LBB0_228:                               //  %cond.end661
	bne x3, x5, LBB0_238
LBB0_229:                               //  %if.then665
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 2146435071 >> 12 & 0xfffff
	or x4, x4, x28
	bne x1, x4, LBB0_231
LBB0_230:                               //  %if.then665
	xori x3, x3, -1
	beqz x3, LBB0_170
LBB0_231:                               //  %if.end676
	lui x3, 2146435072>>12 &0xfffff
	and x1, x3, x1
	lui x3, 1048576>>12 &0xfffff
	add x1, x3, x1
	sw x1, 112 ( x2 )
	sw x0, 108 ( x2 )
	jalr x0, LBB0_294 ( x0 )
LBB0_232:                               //  %if.else686
	lw x4, 108 ( x2 )
	nop
	or x3, x4, x3
	bgtu x3, x0, LBB0_238
LBB0_233:                               //  %drop_down
	lw x1, 112 ( x2 )
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB0_293
LBB0_234:                               //  %if.then697
	lui x3, 2146435072>>12 &0xfffff
	and x3, x3, x1
	lui x4, 112197632>>12 &0xfffff
	bgtu x3, x4, LBB0_293
LBB0_235:                               //  %if.then703
	lui x1, 57671680>>12 &0xfffff
	bgeu x1, x3, LBB0_247
LBB0_236:                               //  %if.then925
	lw x10, 108 ( x2 )
	lw x11, 112 ( x2 )
	add x12, x0, x0
	lui x13, 961544192>>12 &0xfffff
	call $__muldf3
	sw x11, 112 ( x2 )
	sw x10, 108 ( x2 )
	bgtu x11, x0, LBB0_295
LBB0_237:                               //  %if.then925
	beqz x10, LBB0_248
	jalr x0, LBB0_295 ( x0 )
LBB0_238:                               //  %if.end720
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB0_240
LBB0_239:                               //  %if.else729
	lw x1, 108 ( x2 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_240:                               //  %if.else729
	and x1, x3, x1
	beqz x1, LBB0_294
LBB0_241:                               //  %if.end736
	lw x8, 112 ( x2 )
	lw x10, 108 ( x2 )
	add x11, x0, x8
	call $__ulp
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB0_244
LBB0_242:                               //  %lor.lhs.false.i
	srli x4, x8, 20
	andi x4, x4, 2047
	addi x5, x0, 107
	sub x4, x5, x4
	ble x4, x0, LBB0_244
LBB0_243:                               //  %if.end.i
	slli x4, x4, 20
	lui x5, 1072693248>>12 &0xfffff
	add x13, x5, x4
	add x12, x0, x0
	add x10, x0, x3
	add x11, x0, x1
	call $__muldf3
	add x3, x0, x10
	add x1, x0, x11
LBB0_244:                               //  %sulp.exit
	lw x13, 112 ( x2 )
	lw x12, 108 ( x2 )
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB0_246
LBB0_245:                               //  %if.then738
	add x10, x0, x3
	add x11, x0, x1
	call $__adddf3
	sw x11, 112 ( x2 )
	sw x10, 108 ( x2 )
	jalr x0, LBB0_294 ( x0 )
LBB0_246:                               //  %if.else742
	add x10, x0, x12
	add x11, x0, x13
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	sw x11, 112 ( x2 )
	sw x10, 108 ( x2 )
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_294
LBB0_247:                               //  %undfl
	sw x0, 112 ( x2 )
	sw x0, 108 ( x2 )
LBB0_248:                               //  %if.then942
	addi x1, x0, 34
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	jalr x0, LBB0_296 ( x0 )
LBB0_249:                               //  %if.end752
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ratio
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
	lui x13, 1073741824>>12 &0xfffff
	call $__ledf2
	bgt x10, x0, LBB0_261
LBB0_250:                               //  %if.then756
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x9, 40 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x8
	lui x1, 1072693248>>12 &0xfffff
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x8
	add x5, x0, x1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_265
LBB0_251:                               //  %if.else760
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x1, 112 ( x2 )
	lw x3, 108 ( x2 )
	nop
	bgtu x3, x0, LBB0_258
LBB0_252:                               //  %lor.lhs.false764
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -1074790400 >> 12 & 0xfffff
	or x5, x3, x28
	add x4, x0, x8
	lui x3, 1072693248>>12 &0xfffff
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x8
	bgtu x1, x0, LBB0_265
LBB0_253:                               //  %if.else781
                                        //    in Loop: Header=BB0_176 Depth=1
	add x8, x0, x9
	add x11, x0, x8
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__ltdf2
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	lui x8, 1071644672>>12 &0xfffff
	add x13, x0, x8
	call $__muldf3
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bgt x1, x3, LBB0_255
LBB0_254:                               //  %if.else781
                                        //    in Loop: Header=BB0_176 Depth=1
	add x8, x0, x11
LBB0_255:                               //  %if.else781
                                        //    in Loop: Header=BB0_176 Depth=1
	add x4, x0, x1
	bgt x1, x3, LBB0_257
LBB0_256:                               //  %if.else781
                                        //    in Loop: Header=BB0_176 Depth=1
	add x4, x0, x10
LBB0_257:                               //  %if.else781
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x1, x1, x28
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	xor x5, x1, x8
	add x7, x0, x4
	jalr x0, LBB0_265 ( x0 )
LBB0_258:                               //  %if.then769
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, -1074790400 >> 12 & 0xfffff
	or x5, x4, x28
	add x4, x0, x8
	xori x3, x3, 1
	beqz x3, LBB0_260
LBB0_259:                               //    in Loop: Header=BB0_176 Depth=1
	lui x1, 1072693248>>12 &0xfffff
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x8
	jalr x0, LBB0_265 ( x0 )
LBB0_260:                               //  %if.then769
                                        //    in Loop: Header=BB0_176 Depth=1
	lui x3, 1072693248>>12 &0xfffff
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x8
	beqz x1, LBB0_247
	jalr x0, LBB0_265 ( x0 )
LBB0_261:                               //  %if.else792
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lui x13, 1071644672>>12 &0xfffff
	call $__muldf3
	add x3, x0, x10
	add x10, x0, x8
	add x8, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x11, x1, x28
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	add x13, x0, x8
	call $__subdf3
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x8
	add x8, x0, x0
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_263
LBB0_262:                               //  %if.else792
                                        //    in Loop: Header=BB0_176 Depth=1
	add x5, x0, x11
LBB0_263:                               //  %if.else792
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x0, x4
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_265
LBB0_264:                               //  %if.else792
                                        //    in Loop: Header=BB0_176 Depth=1
	add x7, x0, x10
LBB0_265:                               //  %if.end807
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x1, 112 ( x2 )
	lui x3, 2146435072>>12 &0xfffff
	and x8, x3, x1
	lui x3, 2145386496>>12 &0xfffff
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	bne x8, x3, LBB0_271
LBB0_266:                               //  %if.then813
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -55574528 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -55574528 >> 12 & 0xfffff
	or x3, x3, x28
	add x11, x3, x1
	lw x1, 112 ( x2 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 108 ( x2 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 112 ( x2 )
	lw x10, 108 ( x2 )
	add x8, x0, x7
	call $__ulp
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 108 ( x2 )
	lw x11, 112 ( x2 )
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x4, x0, x10
	sw x11, 112 ( x2 )
	sw x4, 108 ( x2 )
	lui x1, 2145386496>>12 &0xfffff
	and x1, x1, x11
	lui x3, 2090860544>>12 &0xfffff
	bgtu x3, x1, LBB0_270
LBB0_267:                               //  %if.then830
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 2146435071 >> 12 & 0xfffff
	or x1, x4, x28
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xor x1, x1, x3
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	not x3, x3
	or x1, x1, x3
	beqz x1, LBB0_170
LBB0_268:                               //  %if.end841
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	sw x1, 112 ( x2 )
	not x1, x0
	sw x1, 108 ( x2 )
LBB0_269:                               //  %cont
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x11, 104 ( x2 )
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $_Bfree
	add x10, x0, x8
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	add x10, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 4 ( x1 )
	add x10, x0, x8
	call $_Balloc
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_176
	jalr x0, LBB0_207 ( x0 )
LBB0_270:                               //  %if.else846
                                        //    in Loop: Header=BB0_176 Depth=1
	lui x1, 55574528>>12 &0xfffff
	add x11, x1, x11
	sw x11, 112 ( x2 )
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_286 ( x0 )
LBB0_271:                               //  %if.else851
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_285
LBB0_272:                               //  %if.else851
                                        //    in Loop: Header=BB0_176 Depth=1
	lui x1, 111149056>>12 &0xfffff
	bgtu x8, x1, LBB0_285
LBB0_273:                               //  %if.then856
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -4194304 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -4194304 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, 1105199103 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1105199103 >> 12 & 0xfffff
	or x13, x1, x28
	add x10, x0, x4
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__ledf2
	ble x10, x0, LBB0_275
LBB0_274:                               //    in Loop: Header=BB0_176 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_284 ( x0 )
LBB0_275:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__fixunsdfsi
	add x8, x0, x10
	call $__floatunsidf
	lui x1, 1072693248>>12 &0xfffff
	add x4, x0, x1
	add x1, x0, x0
	beq x8, x1, LBB0_277
LBB0_276:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	add x4, x0, x11
LBB0_277:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	add x12, x0, x1
	beq x8, x1, LBB0_279
LBB0_278:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	add x12, x0, x10
LBB0_279:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2147483648 >> 12 & 0xfffff
	or x11, x3, x28
	add x10, x0, x1
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x4
	add x13, x0, x8
	call $__subdf3
	add x1, x0, x0
	add x5, x0, x8
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_281
LBB0_280:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	add x5, x0, x11
LBB0_281:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x0, x4
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_283
LBB0_282:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	add x7, x0, x10
LBB0_283:                               //  %if.then859
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
LBB0_284:                               //  %if.end873
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	lui x1, 112197632>>12 &0xfffff
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	add x5, x5, x1
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
LBB0_285:                               //  %if.end878
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x11, 112 ( x2 )
	lw x10, 108 ( x2 )
	nop
	call $__ulp
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 108 ( x2 )
	lw x11, 112 ( x2 )
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x4, x0, x10
	sw x11, 112 ( x2 )
	sw x4, 108 ( x2 )
LBB0_286:                               //  %if.end885
                                        //    in Loop: Header=BB0_176 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_269
LBB0_287:                               //  %if.end885
                                        //    in Loop: Header=BB0_176 Depth=1
	lui x1, 2146435072>>12 &0xfffff
	and x1, x1, x11
	bne x8, x1, LBB0_269
LBB0_288:                               //  %if.then893
                                        //    in Loop: Header=BB0_176 Depth=1
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	call $__fixdfsi
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_290
LBB0_289:                               //  %lor.lhs.false898
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x3
	beqz x1, LBB0_292
LBB0_290:                               //  %if.then907
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, -1801439851 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1801439851 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, 1071644671 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1071644671 >> 12 & 0xfffff
	or x13, x1, x28
	add x8, x0, x10
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	call $__ltdf2
	bgt x0, x10, LBB0_295
LBB0_291:                               //  %if.then907
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, 900719925 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 900719925 >> 12 & 0xfffff
	or x12, x1, x28
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lui x13, 1071644672>>12 &0xfffff
	call $__gtdf2
	ble x10, x0, LBB0_269
	jalr x0, LBB0_295 ( x0 )
LBB0_292:                               //  %if.else915
                                        //    in Loop: Header=BB0_176 Depth=1
	ori x28, x0, -1801439851 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1801439851 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, 1070596095 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1070596095 >> 12 & 0xfffff
	or x13, x1, x28
	call $__ltdf2
	bgez x10, LBB0_269
	jalr x0, LBB0_295 ( x0 )
LBB0_293:                               //  %if.end709
	lui x3, 2146435072>>12 &0xfffff
	and x1, x3, x1
	lui x3, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	or x1, x3, x1
	sw x1, 112 ( x2 )
	not x1, x0
	sw x1, 108 ( x2 )
LBB0_294:                               //  %for.end923
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_236
LBB0_295:
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
LBB0_296:                               //  %retfree
	lw x11, 104 ( x2 )
	add x10, x0, x8
	call $_Bfree
	add x10, x0, x8
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	add x10, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
LBB0_297:                               //  %ret.loopexit
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_299
LBB0_298:                               //  %if.then947
	add x3, x0, x1
	lw x1, 116 ( x2 )
	nop
	sw x1, 0 ( x3 )
LBB0_299:                               //  %cleanup957
	ori x28, x0, -2147483648 & 0xfff
	lw x8, 108 ( x2 )
	lw x13, 112 ( x2 )
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	add x12, x0, x8
	sw x13, 84 ( x2 )               //  4-byte Folded Spill
	call $__subdf3
	add x3, x0, x0
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x3, LBB0_301
LBB0_300:                               //  %cleanup957
	add x10, x0, x8
LBB0_301:                               //  %cleanup957
	bne x1, x3, LBB0_303
LBB0_302:                               //  %cleanup957
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB0_303:                               //  %cleanup957
	lw x8, 124 ( x2 )               //  4-byte Folded Reload
	lw x1, 132 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 136
$cfi5:
	.cfi_adjust_cfa_offset -136
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_304:
	slti x12, x0, 1
	jalr x0, LBB0_70 ( x0 )
LBB0_305:                               //  %undfl.thread
	sw x0, 112 ( x2 )
	sw x0, 108 ( x2 )
	addi x1, x0, 34
	sw x1, 0 ( x8 )
	jalr x0, LBB0_297 ( x0 )
$func_end0:
	.size	$_strtod_r, ($func_end0)-($_strtod_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_6
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_8
	.long	LBB0_8
	.long	LBB0_8
	.long	LBB0_8
	.long	LBB0_8
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_8
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_9
	.long	LBB0_4
	.long	LBB0_9
	.long	LBB0_3
JTI0_1:
	.long	LBB0_22
	.long	LBB0_21
	.long	LBB0_23
	.long	LBB0_24
	.long	LBB0_22
	.long	LBB0_20
JTI0_2:
	.long	LBB0_102
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_106
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_102
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_6
	.long	LBB0_106

	.text
	.globl	$strtod
	.type	$strtod,@function
$strtod:                                //  @strtod
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $_strtod_r
$func_end1:
	.size	$strtod, ($func_end1)-($strtod)
	.cfi_endproc

	.globl	$strtof
	.type	$strtof,@function
$strtof:                                //  @strtof
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi11:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	add x11, x0, x10
	add x12, x0, x1
	add x10, x0, x3
	call $_strtod_r
	add x8, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__fpclassifyd
	bgtu x10, x0, LBB2_2
LBB2_1:                                 //  %if.then
	add x10, x0, x0
	call $nanf
	jalr x0, LBB2_3 ( x0 )
LBB2_2:                                 //  %if.end
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__truncdfsf2
LBB2_3:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi14:
	.cfi_adjust_cfa_offset -24
$cfi15:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$strtof, ($func_end2)-($strtof)
	.cfi_endproc

	.address_space	0	
	.type	$_strtod_r.fpi,@object  //  @_strtod_r.fpi
	.section	.rodata,"a",@progbits
	.p2align	2
$_strtod_r.fpi:
	.long	53                      //  0x35
	.long	4294966222              //  0xfffffbce
	.long	971                     //  0x3cb
	.long	1                       //  0x1
	.long	0                       //  0x0
	.size	$_strtod_r.fpi, 20

	.address_space	0	
	.type	$_strtod_r.fpinan,@object //  @_strtod_r.fpinan
	.p2align	2
$_strtod_r.fpinan:
	.long	52                      //  0x34
	.long	4294966222              //  0xfffffbce
	.long	971                     //  0x3cb
	.long	1                       //  0x1
	.long	0                       //  0x0
	.size	$_strtod_r.fpinan, 20

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"nf"
	.size	$.str, 3

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"inity"
	.size	$.str.1, 6

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"an"
	.size	$.str.2, 3

	.address_space	0	
	.address_space	0	
	.address_space	0	
	.type	$tinytens,@object       //  @tinytens
	.section	.rodata,"a",@progbits
	.p2align	3
$tinytens:
	.quad	4367597403136100796     //  double 9.9999999999999997E-17
	.quad	4128101167230658355     //  double 1.0000000000000001E-32
	.quad	3649340653511681853     //  double 9.9999999999999997E-65
	.quad	2691949749288605597     //  double 1.0000000000000001E-128
	.quad	1254259266780163907     //  double 8.112963841460668E-225
	.size	$tinytens, 40

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
