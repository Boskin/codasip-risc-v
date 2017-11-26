	.text
	.file	"strptime.bc"
	.globl	$strptime
	.type	$strptime,@function
$strptime:                              //  @strptime
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	call $__get_current_time_locale
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x5 )
	nop
	beqz x1, LBB0_188
LBB0_1:                                 //  %for.body.lr.ph
	add x3, x0, x0
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	addi x3, x10, 128
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	addi x3, x10, 100
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	addi x3, x10, 52
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	addi x3, x10, 4
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	addi x3, x10, 168
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x3, x0, 121
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	addi x7, x0, 4
LBB0_2:                                 //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_4 Depth 2
                                        //      Child Loop BB0_60 Depth 2
                                        //      Child Loop BB0_32 Depth 2
                                        //      Child Loop BB0_22 Depth 2
                                        //      Child Loop BB0_115 Depth 2
                                        //      Child Loop BB0_99 Depth 2
                                        //      Child Loop BB0_84 Depth 2
                                        //      Child Loop BB0_26 Depth 2
                                        //      Child Loop BB0_16 Depth 2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	or x3, x3, x28
	lw x4, 0 ( x3 )
	andi x3, x1, 255
	addi x1, x4, 1
	add x4, x3, x1
	lbu x4, 0 ( x4 )
	nop
	andi x4, x4, 8
	beqz x4, LBB0_6
LBB0_3:                                 //  %while.cond.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x3, 0 ( x8 )
	nop
LBB0_4:                                 //  %while.cond.preheader
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x3, x1
	lbu x3, 0 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB0_145
LBB0_5:                                 //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=2
	lbu x3, 1 ( x8 )
	addi x8, x8, 1
	jalr x0, LBB0_4 ( x0 )
LBB0_6:                                 //  %if.else
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x1, x3, 37
	bgtu x1, x0, LBB0_143
LBB0_7:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x9, 1 ( x5 )
	nop
	beqz x9, LBB0_143
LBB0_8:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x1, x9, 79
	beqz x1, LBB0_11
LBB0_9:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x1, x9, 69
	beqz x1, LBB0_11
LBB0_10:                                //    in Loop: Header=BB0_2 Depth=1
	addi x4, x5, 1
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %if.then25
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x4, x5, 2
	lb x9, 2 ( x5 )
	nop
LBB0_12:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	slli x1, x9, 24
	srai x10, x1, 24
	addi x1, x0, 121
	bgtu x10, x1, LBB0_139
LBB0_13:                                //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x0, 4
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 4
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_14:                                //  %sw.bb
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 124 ( x1 )
	nop
	beqz x10, LBB0_127
LBB0_15:                                //  %for.body.i.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x1, x0, x0
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB0_16:                                //  %for.body.i
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	call $strlen
	add x3, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, -4 ( x1 )
	add x10, x0, x8
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	call $strncasecmp
	beqz x10, LBB0_18
LBB0_17:                                //  %for.inc.i
                                        //    in Loop: Header=BB0_16 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	addi x1, x1, 4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	bgtu x10, x0, LBB0_16
	jalr x0, LBB0_127 ( x0 )
LBB0_18:                                //  %match_string.exit
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 4
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB0_127
LBB0_19:                                //  %if.end32
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 24 ( x1 )
	add x8, x4, x8
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 8
	jalr x0, LBB0_38 ( x0 )
LBB0_20:                                //  %sw.bb33
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 96 ( x1 )
	nop
	beqz x10, LBB0_127
LBB0_21:                                //  %for.body.i534.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x1, x0, x0
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB0_22:                                //  %for.body.i534
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	call $strlen
	add x3, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, -4 ( x1 )
	add x10, x0, x8
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	call $strncasecmp
	beqz x10, LBB0_18
LBB0_23:                                //  %for.inc.i540
                                        //    in Loop: Header=BB0_22 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	addi x1, x1, 4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	bgtu x10, x0, LBB0_22
	jalr x0, LBB0_127 ( x0 )
LBB0_24:                                //  %sw.bb42
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 48 ( x1 )
	nop
	beqz x10, LBB0_127
LBB0_25:                                //  %for.body.i549.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x1, x0, x0
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB0_26:                                //  %for.body.i549
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	call $strlen
	add x3, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, -4 ( x1 )
	add x10, x0, x8
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	call $strncasecmp
	beqz x10, LBB0_28
LBB0_27:                                //  %for.inc.i555
                                        //    in Loop: Header=BB0_26 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	addi x1, x1, 4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	bgtu x10, x0, LBB0_26
	jalr x0, LBB0_127 ( x0 )
LBB0_28:                                //  %match_string.exit557
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 4
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB0_127
LBB0_29:                                //  %if.end48
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x1 )
	add x8, x4, x8
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 2
	jalr x0, LBB0_38 ( x0 )
LBB0_30:                                //  %sw.bb50
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_127
LBB0_31:                                //  %for.body.i564.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x1, x0, x0
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB0_32:                                //  %for.body.i564
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	call $strlen
	add x3, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, -4 ( x1 )
	add x10, x0, x8
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	call $strncasecmp
	beqz x10, LBB0_28
LBB0_33:                                //  %for.inc.i570
                                        //    in Loop: Header=BB0_32 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	addi x1, x1, 4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	bgtu x10, x0, LBB0_32
	jalr x0, LBB0_127 ( x0 )
LBB0_34:                                //  %sw.bb59
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_35:                                //  %if.end64
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x0, 100
	add x8, x0, x1
	call $__mulsi3
	addi x7, x0, 4
	addi x1, x10, -1900
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x3 )
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB0_38 ( x0 )
LBB0_36:                                //  %sw.bb66
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 160 ( x1 )
	add x10, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $strptime
	addi x7, x0, 4
	add x8, x0, x10
	sw x8, 64 ( x2 )
	beqz x8, LBB0_127
LBB0_37:                                //  %if.end71
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 15
LBB0_38:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_39:                                //  %sw.bb73
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
LBB0_40:                                //  %sw.bb73
                                        //    in Loop: Header=BB0_2 Depth=1
	add x10, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $strptime
	addi x7, x0, 4
	add x8, x0, x10
	sw x8, 64 ( x2 )
	beqz x8, LBB0_127
LBB0_41:                                //  %if.end78
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 7
	jalr x0, LBB0_38 ( x0 )
LBB0_42:                                //  %sw.bb80
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_43:                                //  %if.end85
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 12 ( x3 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 1
	jalr x0, LBB0_80 ( x0 )
LBB0_44:                                //  %sw.bb87
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_45:                                //  %if.end92
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 8 ( x3 )
	jalr x0, LBB0_81 ( x0 )
LBB0_46:                                //  %sw.bb93
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_47:                                //  %if.end98
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x3, x0, 12
	bne x10, x3, LBB0_49
LBB0_48:                                //    in Loop: Header=BB0_2 Depth=1
	add x10, x0, x0
LBB0_49:                                //  %if.end98
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 8 ( x3 )
	add x8, x0, x1
	jalr x0, LBB0_146 ( x0 )
LBB0_50:                                //  %sw.bb106
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_51:                                //  %if.end111
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x3, x10, -1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 28 ( x4 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 16
	jalr x0, LBB0_80 ( x0 )
LBB0_52:                                //  %sw.bb114
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_53:                                //  %if.end119
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x3, x10, -1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x4 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 2
	jalr x0, LBB0_80 ( x0 )
LBB0_54:                                //  %sw.bb123
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_55:                                //  %if.end128
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 4 ( x3 )
	jalr x0, LBB0_81 ( x0 )
LBB0_56:                                //  %sw.bb129
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 0 ( x8 )
	nop
	xori x1, x1, 10
	bgtu x1, x0, LBB0_127
LBB0_57:                                //  %if.then133
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x8, x8, 1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_58:                                //  %sw.bb137
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 164 ( x1 )
	nop
	beqz x10, LBB0_127
LBB0_59:                                //  %for.body.i582.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x1, x0, x0
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB0_60:                                //  %for.body.i582
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	call $strlen
	add x3, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, -4 ( x1 )
	add x10, x0, x8
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	call $strncasecmp
	beqz x10, LBB0_62
LBB0_61:                                //  %for.inc.i588
                                        //    in Loop: Header=BB0_60 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	addi x1, x1, 4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	bgtu x10, x0, LBB0_60
	jalr x0, LBB0_127 ( x0 )
LBB0_62:                                //  %match_string.exit590
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 4
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x4, LBB0_127
LBB0_63:                                //  %if.end143
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x3 )
	add x8, x5, x8
	bgtu x1, x0, LBB0_66
LBB0_64:                                //  %if.then147
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x1, x4, 1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_146
LBB0_65:                                //  %if.then150
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x1, x0, 12
	sw x1, 8 ( x3 )
	jalr x0, LBB0_146 ( x0 )
LBB0_66:                                //  %if.else153
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x1, x1, 12
	sw x1, 8 ( x3 )
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_67:                                //  %sw.bb156
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 228 ( x1 )
	add x10, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $strptime
	addi x7, x0, 4
	add x8, x0, x10
	sw x8, 64 ( x2 )
	beqz x8, LBB0_127
LBB0_68:                                //  %if.end161
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_69:                                //  %sw.bb162
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $strptime
	addi x7, x0, 4
	add x8, x0, x10
	sw x8, 64 ( x2 )
	beqz x8, LBB0_127
LBB0_70:                                //  %if.end167
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_71:                                //  %sw.bb168
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_72:                                //  %if.end173
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x3 )
	jalr x0, LBB0_81 ( x0 )
LBB0_73:                                //  %sw.bb182
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $strptime
	addi x7, x0, 4
	add x8, x0, x10
	sw x8, 64 ( x2 )
	beqz x8, LBB0_127
LBB0_74:                                //  %if.end187
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_75:                                //  %sw.bb188
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_76:                                //  %if.end193
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x3, x10, -1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 24 ( x4 )
	jalr x0, LBB0_79 ( x0 )
LBB0_77:                                //  %sw.bb197
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_78:                                //  %if.end202
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 24 ( x3 )
LBB0_79:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 8
LBB0_80:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
LBB0_81:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	add x8, x0, x1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_82:                                //  %sw.bb205
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	lw x3, 64 ( x2 )
	nop
	beq x3, x8, LBB0_127
LBB0_83:                                //  %if.end210
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	nop
	addi x8, x1, 1899
	slti x1, x8, 1970
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	addi x10, x0, 4
	bgtu x1, x0, LBB0_91
LBB0_84:                                //  %while.body.i.i623
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x8, 3
	addi x3, x10, 365
	beqz x1, LBB0_86
LBB0_85:                                //    in Loop: Header=BB0_84 Depth=2
	add x1, x0, x0
	jalr x0, LBB0_90 ( x0 )
LBB0_86:                                //  %land.rhs.i.i.i626
                                        //    in Loop: Header=BB0_84 Depth=2
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	add x10, x0, x8
	call $__umodsi3
	beqz x10, LBB0_88
LBB0_87:                                //    in Loop: Header=BB0_84 Depth=2
	slti x1, x0, 1
	jalr x0, LBB0_89 ( x0 )
LBB0_88:                                //  %lor.rhs.i.i.i629
                                        //    in Loop: Header=BB0_84 Depth=2
	addi x11, x0, 400
	add x10, x0, x8
	call $__umodsi3
	seqz x1, x10
LBB0_89:                                //  %is_leap_year.exit.i.i635
                                        //    in Loop: Header=BB0_84 Depth=2
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
LBB0_90:                                //  %is_leap_year.exit.i.i635
                                        //    in Loop: Header=BB0_84 Depth=2
	andi x1, x1, 1
	add x10, x1, x3
	addi x11, x0, 7
	call $__modsi3
	addi x8, x8, -1
	addi x1, x0, 1969
	bgt x8, x1, LBB0_84
LBB0_91:                                //  %first_day.exit.i643
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x0, 7
	add x8, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x4 )
	sub x3, x10, x8
	add x1, x1, x3
	sw x1, 28 ( x4 )
	bgez x1, LBB0_94
LBB0_92:                                //  %if.then.i644
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x8, 24 ( x4 )
LBB0_93:                                //  %set_week_number_sun.exit
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x0, 28 ( x4 )
LBB0_94:                                //  %set_week_number_sun.exit
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 4
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_95:                                //  %sw.bb212
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	lw x3, 64 ( x2 )
	nop
	beq x3, x8, LBB0_127
LBB0_96:                                //  %if.end217
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	nop
	addi x8, x1, 1899
	slti x1, x8, 1970
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_98
LBB0_97:                                //    in Loop: Header=BB0_2 Depth=1
	addi x3, x0, 3
	jalr x0, LBB0_107 ( x0 )
LBB0_98:                                //  %while.body.i.i653.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	addi x10, x0, 4
LBB0_99:                                //  %while.body.i.i653
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x8, 3
	addi x3, x10, 365
	beqz x1, LBB0_101
LBB0_100:                               //    in Loop: Header=BB0_99 Depth=2
	add x1, x0, x0
	jalr x0, LBB0_105 ( x0 )
LBB0_101:                               //  %land.rhs.i.i.i656
                                        //    in Loop: Header=BB0_99 Depth=2
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	add x10, x0, x8
	call $__umodsi3
	beqz x10, LBB0_103
LBB0_102:                               //    in Loop: Header=BB0_99 Depth=2
	slti x1, x0, 1
	jalr x0, LBB0_104 ( x0 )
LBB0_103:                               //  %lor.rhs.i.i.i659
                                        //    in Loop: Header=BB0_99 Depth=2
	addi x11, x0, 400
	add x10, x0, x8
	call $__umodsi3
	seqz x1, x10
LBB0_104:                               //  %is_leap_year.exit.i.i665
                                        //    in Loop: Header=BB0_99 Depth=2
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
LBB0_105:                               //  %is_leap_year.exit.i.i665
                                        //    in Loop: Header=BB0_99 Depth=2
	andi x1, x1, 1
	add x10, x1, x3
	addi x11, x0, 7
	call $__modsi3
	addi x8, x8, -1
	addi x1, x0, 1969
	bgt x8, x1, LBB0_99
LBB0_106:                               //  %first_day.exit.loopexit.i667
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10, x10, 6
	addi x11, x0, 7
	call $__modsi3
	add x3, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
LBB0_107:                               //  %first_day.exit.i674
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x1, x0, 4
	addi x11, x0, 7
	add x8, x0, x11
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	bgt x1, x3, LBB0_109
LBB0_108:                               //  %first_day.exit.i674
                                        //    in Loop: Header=BB0_2 Depth=1
	add x8, x0, x0
LBB0_109:                               //  %first_day.exit.i674
                                        //    in Loop: Header=BB0_2 Depth=1
	call $__mulsi3
	addi x1, x10, -7
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x5
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 24 ( x4 )
	nop
	add x1, x3, x1
	add x1, x8, x1
	sw x1, 28 ( x4 )
	bgez x1, LBB0_94
LBB0_110:                               //  %if.then8.i
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x5, 24 ( x4 )
	jalr x0, LBB0_93 ( x0 )
LBB0_111:                               //  %sw.bb219
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	lw x3, 64 ( x2 )
	nop
	beq x3, x8, LBB0_127
LBB0_112:                               //  %if.end224
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	nop
	addi x8, x1, 1899
	slti x1, x8, 1970
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_114
LBB0_113:                               //    in Loop: Header=BB0_2 Depth=1
	addi x1, x0, 3
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_123 ( x0 )
LBB0_114:                               //  %while.body.i.i.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x10, x0, 4
LBB0_115:                               //  %while.body.i.i
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x8, 3
	addi x3, x10, 365
	beqz x1, LBB0_117
LBB0_116:                               //    in Loop: Header=BB0_115 Depth=2
	add x1, x0, x0
	jalr x0, LBB0_121 ( x0 )
LBB0_117:                               //  %land.rhs.i.i.i
                                        //    in Loop: Header=BB0_115 Depth=2
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	add x10, x0, x8
	call $__umodsi3
	beqz x10, LBB0_119
LBB0_118:                               //    in Loop: Header=BB0_115 Depth=2
	slti x1, x0, 1
	jalr x0, LBB0_120 ( x0 )
LBB0_119:                               //  %lor.rhs.i.i.i
                                        //    in Loop: Header=BB0_115 Depth=2
	addi x11, x0, 400
	add x10, x0, x8
	call $__umodsi3
	seqz x1, x10
LBB0_120:                               //  %is_leap_year.exit.i.i
                                        //    in Loop: Header=BB0_115 Depth=2
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
LBB0_121:                               //  %is_leap_year.exit.i.i
                                        //    in Loop: Header=BB0_115 Depth=2
	andi x1, x1, 1
	add x10, x1, x3
	addi x11, x0, 7
	call $__modsi3
	addi x8, x8, -1
	addi x1, x0, 1969
	bgt x8, x1, LBB0_115
LBB0_122:                               //  %first_day.exit.loopexit.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10, x10, 6
	addi x11, x0, 7
	call $__modsi3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_123:                               //  %first_day.exit.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x0, 7
	call $__mulsi3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x8 )
	addi x11, x0, 7
	addi x10, x1, 6
	call $__modsi3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	add x1, x1, x10
	sw x1, 28 ( x8 )
	bgez x1, LBB0_94
LBB0_124:                               //  %if.then.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10, x3, 1
	addi x11, x0, 7
	call $__modsi3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 24 ( x1 )
	sw x0, 28 ( x1 )
	jalr x0, LBB0_94 ( x0 )
LBB0_125:                               //  %sw.bb226
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 156 ( x1 )
	jalr x0, LBB0_40 ( x0 )
LBB0_126:                               //  %sw.bb174
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 0 ( x8 )
	nop
	xori x1, x1, 9
	beqz x1, LBB0_57
LBB0_127:                               //  %cleanup.thread
	add x8, x0, x0
	jalr x0, LBB0_188 ( x0 )
LBB0_128:                               //  %sw.bb233
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 152 ( x1 )
	add x10, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $strptime
	addi x7, x0, 4
	add x8, x0, x10
	sw x8, 64 ( x2 )
	beqz x8, LBB0_127
LBB0_129:                               //  %if.end238
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_146 ( x0 )
LBB0_130:                               //  %sw.bb239
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_131:                               //  %if.end244
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x3, x0, 70
	ble x3, x10, LBB0_133
LBB0_132:                               //    in Loop: Header=BB0_2 Depth=1
	addi x10, x10, 100
LBB0_133:                               //  %if.end244
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 20 ( x3 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 4
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x1
	jalr x0, LBB0_146 ( x0 )
LBB0_134:                               //  %sw.bb254
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11, x2, 64
	addi x12, x0, 10
	add x10, x0, x8
	call $strtol
	addi x7, x0, 4
	lw x1, 64 ( x2 )
	nop
	beq x1, x8, LBB0_127
LBB0_135:                               //  %if.end259
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x3, x10, -1900
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 20 ( x4 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 4
	jalr x0, LBB0_80 ( x0 )
LBB0_136:                               //  %sw.bb263
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x4, x4, -1
LBB0_137:                               //  %sw.bb265
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 0 ( x8 )
	nop
	xori x1, x1, 37
	bgtu x1, x0, LBB0_127
LBB0_138:                               //  %if.then269
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x8, x8, 1
	jalr x0, LBB0_146 ( x0 )
LBB0_139:                               //  %sw.default
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 0 ( x8 )
	nop
	xori x1, x1, 37
	beqz x1, LBB0_142
LBB0_140:                               //  %lor.lhs.false276
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 1 ( x8 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 255
	bne x1, x3, LBB0_127
LBB0_141:                               //    in Loop: Header=BB0_2 Depth=1
	addi x8, x8, 1
LBB0_142:                               //  %if.then282
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x8, x8, 1
	jalr x0, LBB0_146 ( x0 )
LBB0_143:                               //  %if.else286
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 0 ( x8 )
	nop
	bne x1, x3, LBB0_127
LBB0_144:                               //  %if.then291
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x8, x8, 1
LBB0_145:                               //  %for.inc.loopexit
                                        //    in Loop: Header=BB0_2 Depth=1
	add x4, x0, x5
LBB0_146:                               //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x1, 1 ( x4 )
	addi x5, x4, 1
	bgtu x1, x0, LBB0_2
LBB0_147:                               //  %for.end
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 7
	xori x1, x1, 7
	bgtu x1, x0, LBB0_154
LBB0_148:                               //  %if.then302
	andi x1, x3, 16
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_181
LBB0_149:                               //  %if.then305
	lw x7, 16 ( x5 )
	ori x28, x0, $_DAYS_BEFORE_MONTH & 0xfff
	slli x28, x28, 20
	lui x1, $_DAYS_BEFORE_MONTH >> 12 & 0xfffff
	srli x28, x28, 20
	slli x3, x7, 2
	or x1, x1, x28
	add x1, x1, x3
	lw x3, 20 ( x5 )
	lw x1, 0 ( x1 )
	lw x4, 12 ( x5 )
	addi x10, x3, 1900
	andi x3, x10, 3
	add x9, x1, x4
	sw x9, 28 ( x5 )
	bgtu x3, x0, LBB0_152
LBB0_150:                               //  %land.rhs.i605
	addi x11, x0, 100
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x7, 60 ( x2 )                //  4-byte Folded Spill
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 400
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__modsi3
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	sltu x3, x0, x10
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	and x1, x1, x3
	bgtu x1, x0, LBB0_152
LBB0_151:                               //  %land.rhs.i605
	slti x1, x0, 1
	bgt x4, x1, LBB0_153
LBB0_152:                               //  %if.then319
	addi x1, x9, -1
	sw x1, 28 ( x5 )
LBB0_153:                               //  %if.end321
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 16
	jalr x0, LBB0_181 ( x0 )
LBB0_154:                               //  %if.else324
	andi x1, x3, 20
	xori x1, x1, 20
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_181
LBB0_155:                               //  %if.then328
	andi x1, x3, 2
	bgtu x1, x0, LBB0_175
LBB0_156:                               //  %if.then331
	lw x4, 28 ( x5 )
	nop
	slti x1, x4, 31
	beqz x1, LBB0_158
LBB0_157:
	add x7, x0, x0
	jalr x0, LBB0_174 ( x0 )
LBB0_158:                               //  %if.else337
	lw x1, 20 ( x5 )
	nop
	addi x3, x1, 1900
	andi x1, x3, 3
	beqz x1, LBB0_160
LBB0_159:
	add x1, x0, x0
	jalr x0, LBB0_164 ( x0 )
LBB0_160:                               //  %land.rhs.i595
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	call $__modsi3
	beqz x10, LBB0_162
LBB0_161:
	slti x1, x0, 1
	jalr x0, LBB0_163 ( x0 )
LBB0_162:                               //  %lor.rhs.i598
	addi x11, x0, 400
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__modsi3
	seqz x1, x10
LBB0_163:                               //  %is_leap_year.exit600
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 4
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
LBB0_164:                               //  %is_leap_year.exit600
	beqz x1, LBB0_166
LBB0_165:
	addi x3, x0, 60
	jalr x0, LBB0_167 ( x0 )
LBB0_166:                               //  %is_leap_year.exit600
	addi x3, x0, 59
LBB0_167:                               //  %is_leap_year.exit600
	ble x3, x4, LBB0_169
LBB0_168:
	slti x7, x0, 1
	jalr x0, LBB0_174 ( x0 )
LBB0_169:                               //  %for.inc352
	beqz x1, LBB0_171
LBB0_170:
	addi x3, x0, 91
	jalr x0, LBB0_172 ( x0 )
LBB0_171:                               //  %for.inc352
	addi x3, x0, 90
LBB0_172:                               //  %for.inc352
	ble x3, x4, LBB0_189
LBB0_173:
	addi x7, x0, 2
LBB0_174:                               //  %if.end357.sink.split
	sw x7, 16 ( x5 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_175:                               //  %if.end357
	andi x1, x3, 1
	bgtu x1, x0, LBB0_181
LBB0_176:                               //  %if.then360
	lw x7, 16 ( x5 )
	ori x28, x0, $_DAYS_BEFORE_MONTH & 0xfff
	slli x28, x28, 20
	lui x1, $_DAYS_BEFORE_MONTH >> 12 & 0xfffff
	srli x28, x28, 20
	slli x3, x7, 2
	or x1, x1, x28
	add x1, x1, x3
	lw x3, 20 ( x5 )
	lw x1, 0 ( x1 )
	lw x4, 28 ( x5 )
	addi x10, x3, 1900
	andi x3, x10, 3
	sub x9, x4, x1
	sw x9, 12 ( x5 )
	bgtu x3, x0, LBB0_179
LBB0_177:                               //  %land.rhs.i
	addi x11, x0, 100
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x7, 60 ( x2 )                //  4-byte Folded Spill
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 400
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__modsi3
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	sltu x3, x0, x10
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	and x1, x1, x3
	bgtu x1, x0, LBB0_179
LBB0_178:                               //  %land.rhs.i
	slti x1, x0, 1
	bgt x4, x1, LBB0_180
LBB0_179:                               //  %if.then374
	addi x1, x9, 1
	sw x1, 12 ( x5 )
LBB0_180:                               //  %if.end380
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_181:                               //  %if.end380
	andi x1, x3, 28
	xori x1, x1, 20
	bgtu x1, x0, LBB0_188
LBB0_182:                               //  %if.then384
	lw x1, 20 ( x5 )
	nop
	addi x3, x1, 1899
	addi x10, x0, 4
	slti x1, x3, 1970
	bgtu x1, x0, LBB0_187
LBB0_183:                               //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	andi x3, x3, 3
	addi x4, x10, 365
	add x1, x0, x0
	bgtu x3, x0, LBB0_186
LBB0_184:                               //  %land.rhs.i.i
                                        //    in Loop: Header=BB0_183 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 100
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	call $__umodsi3
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	slti x1, x0, 1
	bgtu x10, x0, LBB0_186
LBB0_185:                               //  %lor.rhs.i.i
                                        //    in Loop: Header=BB0_183 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 400
	call $__umodsi3
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	seqz x1, x10
LBB0_186:                               //  %is_leap_year.exit.i
                                        //    in Loop: Header=BB0_183 Depth=1
	andi x1, x1, 1
	add x10, x1, x4
	addi x11, x0, 7
	call $__modsi3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	add x3, x0, x1
	addi x1, x0, 1969
	bgt x3, x1, LBB0_183
LBB0_187:                               //  %first_day.exit
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x1 )
	nop
	add x10, x10, x1
	addi x11, x0, 7
	call $__modsi3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 24 ( x1 )
LBB0_188:                               //  %cleanup392
	add x10, x0, x8
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
LBB0_189:                               //  %for.inc352.1
	bgtu x1, x0, LBB0_191
LBB0_190:                               //  %for.inc352.1
	addi x3, x0, 120
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
LBB0_191:                               //  %for.inc352.1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	ble x3, x4, LBB0_193
LBB0_192:
	addi x7, x0, 3
	jalr x0, LBB0_174 ( x0 )
LBB0_193:                               //  %for.inc352.2
	beqz x1, LBB0_195
LBB0_194:
	addi x3, x0, 152
	jalr x0, LBB0_196 ( x0 )
LBB0_195:                               //  %for.inc352.2
	addi x3, x0, 151
LBB0_196:                               //  %for.inc352.2
	bgt x3, x4, LBB0_174
LBB0_197:                               //  %for.inc352.3
	beqz x1, LBB0_199
LBB0_198:
	addi x3, x0, 182
	jalr x0, LBB0_200 ( x0 )
LBB0_199:                               //  %for.inc352.3
	addi x3, x0, 181
LBB0_200:                               //  %for.inc352.3
	ble x3, x4, LBB0_202
LBB0_201:
	addi x7, x0, 5
	jalr x0, LBB0_174 ( x0 )
LBB0_202:                               //  %for.inc352.4
	beqz x1, LBB0_204
LBB0_203:
	addi x3, x0, 213
	jalr x0, LBB0_205 ( x0 )
LBB0_204:                               //  %for.inc352.4
	addi x3, x0, 212
LBB0_205:                               //  %for.inc352.4
	ble x3, x4, LBB0_207
LBB0_206:
	addi x7, x0, 6
	jalr x0, LBB0_174 ( x0 )
LBB0_207:                               //  %for.inc352.5
	beqz x1, LBB0_209
LBB0_208:
	addi x3, x0, 244
	jalr x0, LBB0_210 ( x0 )
LBB0_209:                               //  %for.inc352.5
	addi x3, x0, 243
LBB0_210:                               //  %for.inc352.5
	ble x3, x4, LBB0_212
LBB0_211:
	addi x7, x0, 7
	jalr x0, LBB0_174 ( x0 )
LBB0_212:                               //  %for.inc352.6
	beqz x1, LBB0_214
LBB0_213:
	addi x3, x0, 274
	jalr x0, LBB0_215 ( x0 )
LBB0_214:                               //  %for.inc352.6
	addi x3, x0, 273
LBB0_215:                               //  %for.inc352.6
	ble x3, x4, LBB0_217
LBB0_216:
	addi x7, x0, 8
	jalr x0, LBB0_174 ( x0 )
LBB0_217:                               //  %for.inc352.7
	beqz x1, LBB0_219
LBB0_218:
	addi x3, x0, 305
	jalr x0, LBB0_220 ( x0 )
LBB0_219:                               //  %for.inc352.7
	addi x3, x0, 304
LBB0_220:                               //  %for.inc352.7
	ble x3, x4, LBB0_222
LBB0_221:
	addi x7, x0, 9
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_174 ( x0 )
LBB0_222:                               //  %for.inc352.8
	beqz x1, LBB0_224
LBB0_223:
	addi x1, x0, 335
	jalr x0, LBB0_225 ( x0 )
LBB0_224:                               //  %for.inc352.8
	addi x1, x0, 334
LBB0_225:                               //  %for.inc352.8
	ble x1, x4, LBB0_227
LBB0_226:
	addi x7, x0, 10
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_174 ( x0 )
LBB0_227:                               //  %for.inc352.8
	addi x7, x0, 11
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_174 ( x0 )
$func_end0:
	.size	$strptime, ($func_end0)-($strptime)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_136
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_137
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_14
	.long	LBB0_24
	.long	LBB0_34
	.long	LBB0_39
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_44
	.long	LBB0_46
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_54
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_69
	.long	LBB0_71
	.long	LBB0_73
	.long	LBB0_82
	.long	LBB0_95
	.long	LBB0_111
	.long	LBB0_128
	.long	LBB0_134
	.long	LBB0_146
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_20
	.long	LBB0_30
	.long	LBB0_36
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_139
	.long	LBB0_139
	.long	LBB0_30
	.long	LBB0_139
	.long	LBB0_50
	.long	LBB0_44
	.long	LBB0_46
	.long	LBB0_52
	.long	LBB0_56
	.long	LBB0_139
	.long	LBB0_58
	.long	LBB0_139
	.long	LBB0_67
	.long	LBB0_139
	.long	LBB0_126
	.long	LBB0_75
	.long	LBB0_139
	.long	LBB0_77
	.long	LBB0_125
	.long	LBB0_130

	.address_space	0	
	.type	$tm_year_base,@object   //  @tm_year_base
	.globl	$tm_year_base
	.p2align	2
$tm_year_base:
	.long	1900                    //  0x76c
	.size	$tm_year_base, 4

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"%m/%d/%y"
	.size	$.str, 9

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"%H:%M"
	.size	$.str.1, 6

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"%H:%M:%S"
	.size	$.str.2, 9

	.address_space	0	
	.type	$_DAYS_BEFORE_MONTH,@object //  @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	2
$_DAYS_BEFORE_MONTH:
	.long	0                       //  0x0
	.long	31                      //  0x1f
	.long	59                      //  0x3b
	.long	90                      //  0x5a
	.long	120                     //  0x78
	.long	151                     //  0x97
	.long	181                     //  0xb5
	.long	212                     //  0xd4
	.long	243                     //  0xf3
	.long	273                     //  0x111
	.long	304                     //  0x130
	.long	334                     //  0x14e
	.size	$_DAYS_BEFORE_MONTH, 48


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
