	.text
	.file	"tzset_r.bc"
	.globl	$_tzset_unlocked_r
	.type	$_tzset_unlocked_r,@function
$_tzset_unlocked_r:                     //  @_tzset_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi2:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	call $__gettzinfo
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $_getenv_r
	add x8, x0, x10
	bgtu x8, x0, LBB0_2
LBB0_1:                                 //  %if.then
	ori x28, x0, $_timezone & 0xfff
	slli x28, x28, 20
	lui x1, $_timezone >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $_daylight & 0xfff
	slli x28, x28, 20
	lui x3, $_daylight >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_tzname & 0xfff
	slli x28, x28, 20
	lui x4, $_tzname >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x5, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	ori x28, x0, $_tzname+4 & 0xfff
	slli x28, x28, 20
	lui x7, $_tzname+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	ori x28, x0, $prev_tzenv & 0xfff
	slli x28, x28, 20
	lui x9, $prev_tzenv >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x9, x28
	lw x10, 0 ( x8 )
	sw x0, 0 ( x1 )
	sw x0, 0 ( x3 )
	sw x5, 0 ( x4 )
	sw x5, 0 ( x7 )
	call $free
	sw x0, 0 ( x8 )
	jalr x0, LBB0_54 ( x0 )
LBB0_2:                                 //  %if.end
	ori x28, x0, $prev_tzenv & 0xfff
	slli x28, x28, 20
	lui x1, $prev_tzenv >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x11, 0 ( x1 )
	nop
	bgtu x11, x0, LBB0_4
LBB0_3:
	add x10, x0, x0
	jalr x0, LBB0_6 ( x0 )
LBB0_4:                                 //  %land.lhs.true
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_54
LBB0_5:                                 //  %land.lhs.true.if.end6_crit_edge
	ori x28, x0, $prev_tzenv & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $prev_tzenv >> 12 & 0xfffff
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
LBB0_6:                                 //  %if.end6
	call $free
	add x10, x0, x8
	call $strlen
	addi x11, x10, 1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_malloc_r
	ori x28, x0, $prev_tzenv & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $prev_tzenv >> 12 & 0xfffff
	or x1, x1, x28
	sw x10, 0 ( x1 )
	beqz x10, LBB0_8
LBB0_7:                                 //  %if.then10
	add x11, x0, x8
	call $strcpy
LBB0_8:                                 //  %if.end12
	lbu x1, 0 ( x8 )
	addi x3, x0, 58
	bne x1, x3, LBB0_10
LBB0_9:
	addi x8, x8, 1
LBB0_10:                                //  %if.end12
	addi x1, x2, 68
	sw x1, 12 ( x2 )
	lui x1, $__tzname_std >> 12 & 0xfffff
	ori x28, x0, $__tzname_std & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lui x1, $.str.2 >> 12 & 0xfffff
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $siscanf
	ble x10, x0, LBB0_54
LBB0_11:                                //  %if.end21
	lw x1, 68 ( x2 )
	nop
	add x8, x1, x8
	slti x4, x0, 1
	lbu x1, 0 ( x8 )
	nop
	xori x3, x1, 43
	beqz x3, LBB0_15
LBB0_12:                                //  %if.end21
	xori x1, x1, 45
	beqz x1, LBB0_14
LBB0_13:
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_17 ( x0 )
LBB0_14:                                //  %if.then25
	not x1, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_16 ( x0 )
LBB0_15:                                //  %if.then30
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
LBB0_16:                                //  %if.end33
	addi x8, x8, 1
LBB0_17:                                //  %if.end33
	sh x0, 80 ( x2 )
	sh x0, 78 ( x2 )
	addi x1, x2, 68
	sw x1, 28 ( x2 )
	addi x3, x2, 78
	sw x3, 24 ( x2 )
	sw x1, 20 ( x2 )
	addi x3, x2, 80
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	addi x1, x2, 82
	sw x1, 8 ( x2 )
	lui x1, $.str.3 >> 12 & 0xfffff
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $siscanf
	ble x10, x0, LBB0_54
LBB0_18:                                //  %if.end38
	lhu x10, 80 ( x2 )
	addi x11, x0, 60
	call $__mulsi3
	lhu x1, 78 ( x2 )
	nop
	add x1, x1, x10
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lhu x10, 82 ( x2 )
	lui x1, 3600 >> 12 & 0xfffff
	ori x28, x0, 3600 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsi3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x10, x1
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 32 ( x1 )
	lui x1, $_tzname >> 12 & 0xfffff
	ori x28, x0, $_tzname & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__tzname_std & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__tzname_std >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	lw x1, 68 ( x2 )
	addi x3, x2, 68
	sw x3, 12 ( x2 )
	lui x3, $__tzname_dst >> 12 & 0xfffff
	ori x28, x0, $__tzname_dst & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	sw x3, 8 ( x2 )
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 4 ( x2 )
	add x8, x1, x8
	sw x8, 0 ( x2 )
	call $siscanf
	bgt x10, x0, LBB0_20
LBB0_19:                                //  %if.then50
	ori x28, x0, $_tzname & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_tzname >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lui x3, $_tzname+4 >> 12 & 0xfffff
	ori x28, x0, $_tzname+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 0 ( x3 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	lui x3, $_timezone >> 12 & 0xfffff
	ori x28, x0, $_timezone & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 0 ( x3 )
	lui x1, $_daylight >> 12 & 0xfffff
	ori x28, x0, $_daylight & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x0, 0 ( x1 )
	jalr x0, LBB0_54 ( x0 )
LBB0_20:                                //  %if.else54
	lui x1, $_tzname+4 >> 12 & 0xfffff
	ori x28, x0, $_tzname+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__tzname_dst & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__tzname_dst >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	lw x1, 68 ( x2 )
	nop
	add x8, x1, x8
	slti x4, x0, 1
	lbu x1, 0 ( x8 )
	nop
	xori x3, x1, 43
	beqz x3, LBB0_24
LBB0_21:                                //  %if.else54
	xori x1, x1, 45
	beqz x1, LBB0_23
LBB0_22:
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_26 ( x0 )
LBB0_23:                                //  %if.then60
	not x1, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_25 ( x0 )
LBB0_24:                                //  %if.then66
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
LBB0_25:                                //  %if.end69
	addi x8, x8, 1
LBB0_26:                                //  %if.end69
	sh x0, 82 ( x2 )
	sh x0, 80 ( x2 )
	sh x0, 78 ( x2 )
	sw x0, 68 ( x2 )
	addi x1, x2, 68
	sw x1, 28 ( x2 )
	addi x3, x2, 78
	sw x3, 24 ( x2 )
	sw x1, 20 ( x2 )
	addi x3, x2, 80
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	addi x1, x2, 82
	sw x1, 8 ( x2 )
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $siscanf
	bgt x10, x0, LBB0_28
LBB0_27:                                //  %if.then73
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x4 )
	lui x3, -3600 >> 12 & 0xfffff
	ori x28, x0, -3600 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x10, x3, x1
	jalr x0, LBB0_29 ( x0 )
LBB0_28:                                //  %if.else80
	lhu x10, 80 ( x2 )
	addi x11, x0, 60
	call $__mulsi3
	lhu x1, 78 ( x2 )
	nop
	add x1, x1, x10
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lhu x10, 82 ( x2 )
	ori x28, x0, 3600 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 3600 >> 12 & 0xfffff
	or x11, x1, x28
	call $__mulsi3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x10, x1
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_29:                                //  %if.end92
	sw x10, 60 ( x4 )
	lw x1, 68 ( x2 )
	nop
	add x8, x1, x8
	add x1, x0, x0
	addi x3, x4, 12
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x1
LBB0_30:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 0 ( x8 )
	addi x3, x0, 44
	bne x1, x3, LBB0_32
LBB0_31:                                //    in Loop: Header=BB0_30 Depth=1
	addi x8, x8, 1
LBB0_32:                                //  %for.body
                                        //    in Loop: Header=BB0_30 Depth=1
	lbu x3, 0 ( x8 )
	nop
	xori x1, x3, 77
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_38
LBB0_33:                                //  %if.then105
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x2, 68
	sw x1, 28 ( x2 )
	addi x3, x2, 72
	sw x3, 24 ( x2 )
	sw x1, 20 ( x2 )
	addi x3, x2, 74
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	addi x1, x2, 76
	sw x1, 8 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $siscanf
	xori x1, x10, 3
	bgtu x1, x0, LBB0_54
LBB0_34:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_30 Depth=1
	lhu x1, 76 ( x2 )
	nop
	addi x3, x1, -1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	and x3, x4, x3
	addi x4, x0, 11
	bgtu x3, x4, LBB0_54
LBB0_35:                                //  %lor.lhs.false116
                                        //    in Loop: Header=BB0_30 Depth=1
	lhu x3, 74 ( x2 )
	nop
	addi x4, x3, -1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x5, 65535 >> 12 & 0xfffff
	or x5, x5, x28
	and x4, x5, x4
	addi x5, x0, 4
	bgtu x4, x5, LBB0_54
LBB0_36:                                //  %lor.lhs.false116
                                        //    in Loop: Header=BB0_30 Depth=1
	lhu x4, 72 ( x2 )
	addi x5, x0, 6
	bgtu x4, x5, LBB0_54
LBB0_37:                                //  %if.end129
                                        //    in Loop: Header=BB0_30 Depth=1
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 77
	sb x7, -4 ( x5 )
	sw x1, 0 ( x5 )
	sw x3, 4 ( x5 )
	sw x4, 8 ( x5 )
	lw x1, 68 ( x2 )
	nop
	add x8, x1, x8
	add x3, x0, x0
	jalr x0, LBB0_50 ( x0 )
LBB0_38:                                //  %if.else146
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x0, 74
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	bne x3, x1, LBB0_40
LBB0_39:                                //    in Loop: Header=BB0_30 Depth=1
	addi x8, x8, 1
LBB0_40:                                //  %if.else146
                                        //    in Loop: Header=BB0_30 Depth=1
	add x10, x0, x8
	addi x11, x2, 64
	addi x12, x0, 10
	call $strtoul
	sh x10, 72 ( x2 )
	lw x1, 64 ( x2 )
	nop
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	bne x1, x8, LBB0_46
LBB0_41:                                //  %if.then158
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x0, 2
	add x3, x0, x1
	add x1, x0, x0
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x1, LBB0_43
LBB0_42:                                //  %if.then158
                                        //    in Loop: Header=BB0_30 Depth=1
	slti x3, x0, 1
LBB0_43:                                //  %if.then158
                                        //    in Loop: Header=BB0_30 Depth=1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	addi x3, x0, 3
	beq x4, x1, LBB0_45
LBB0_44:                                //  %if.then158
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x0, 11
	add x3, x0, x1
LBB0_45:                                //  %if.then158
                                        //    in Loop: Header=BB0_30 Depth=1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	sltu x1, x0, x4
	andi x10, x1, 1
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 28
	add x11, x0, x1
	call $__mulsi3
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x8
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x3, x0, 77
	sb x3, 8 ( x1 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 12 ( x1 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x1 )
	addi x11, x0, 28
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_49 ( x0 )
LBB0_46:                                //  %if.else188
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x0, 74
	add x3, x0, x1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB0_48
LBB0_47:                                //  %if.else188
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x0, 68
LBB0_48:                                //  %if.else188
                                        //    in Loop: Header=BB0_30 Depth=1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sb x1, -4 ( x3 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x10
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	addi x11, x0, 28
LBB0_49:                                //  %if.end197
                                        //    in Loop: Header=BB0_30 Depth=1
	call $__mulsi3
	add x1, x10, x8
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 20 ( x1 )
	add x3, x0, x0
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB0_50:                                //  %if.end198
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x0, 2
	add x5, x0, x1
	sh x5, 82 ( x2 )
	sh x0, 80 ( x2 )
	sh x0, 78 ( x2 )
	sw x0, 68 ( x2 )
	lbu x1, 0 ( x8 )
	nop
	xori x4, x1, 47
	add x7, x0, x3
	add x1, x0, x3
	bgtu x4, x0, LBB0_52
LBB0_51:                                //  %if.then202
                                        //    in Loop: Header=BB0_30 Depth=1
	addi x1, x2, 68
	sw x1, 28 ( x2 )
	addi x3, x2, 78
	sw x3, 24 ( x2 )
	sw x1, 20 ( x2 )
	addi x3, x2, 80
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	addi x1, x2, 82
	sw x1, 8 ( x2 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $siscanf
	lw x7, 68 ( x2 )
	lh x5, 82 ( x2 )
	lh x1, 80 ( x2 )
	lh x3, 78 ( x2 )
LBB0_52:                                //  %if.end204
                                        //    in Loop: Header=BB0_30 Depth=1
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	or x8, x4, x28
	and x3, x8, x3
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	and x10, x8, x1
	addi x11, x0, 60
	call $__mulsi3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x8, x1
	ori x28, x0, 3600 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 3600 >> 12 & 0xfffff
	or x11, x1, x28
	call $__mulsi3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 12 ( x3 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x4, x1
	addi x3, x3, 28
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	slti x1, x4, 2
	bgtu x1, x0, LBB0_30
LBB0_53:                                //  %for.end
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 4 ( x8 )
	nop
	call $__tzcalc_limits
	lw x1, 32 ( x8 )
	lui x3, $_timezone >> 12 & 0xfffff
	ori x28, x0, $_timezone & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 0 ( x3 )
	lw x3, 60 ( x8 )
	nop
	xor x1, x3, x1
	sltu x1, x0, x1
	andi x1, x1, 1
	lui x3, $_daylight >> 12 & 0xfffff
	ori x28, x0, $_daylight & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 0 ( x3 )
LBB0_54:                                //  %cleanup
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi5:
	.cfi_adjust_cfa_offset -96
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_tzset_unlocked_r, ($func_end0)-($_tzset_unlocked_r)
	.cfi_endproc

	.globl	$_tzset_r
	.type	$_tzset_r,@function
$_tzset_r:                              //  @_tzset_r
	.cfi_startproc
  .codasip_retval_regs
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
	add x8, x0, x10
	call $__tz_lock
	add x10, x0, x8
	call $_tzset_unlocked_r
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi12:
	.cfi_adjust_cfa_offset -16
$cfi13:
	.cfi_def_cfa 2, 0
	j $__tz_unlock
$func_end1:
	.size	$_tzset_r, ($func_end1)-($_tzset_r)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"TZ"
	.size	$.str, 3

	.address_space	0	
	.address_space	0	
	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"GMT"
	.size	$.str.1, 4

	.address_space	0	
	.address_space	0	
	.type	$prev_tzenv,@object     //  @prev_tzenv
	.local	$prev_tzenv
	.comm	$prev_tzenv,4,4
	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"%10[^0-9,+-]%n"
	.size	$.str.2, 15

	.address_space	0	
	.type	$__tzname_std,@object   //  @__tzname_std
	.local	$__tzname_std
	.comm	$__tzname_std,11,1
	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"%hu%n:%hu%n:%hu%n"
	.size	$.str.3, 18

	.address_space	0	
	.type	$__tzname_dst,@object   //  @__tzname_dst
	.local	$__tzname_dst
	.comm	$__tzname_dst,11,1
	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"M%hu%n.%hu%n.%hu%n"
	.size	$.str.4, 19

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"/%hu%n:%hu%n:%hu%n"
	.size	$.str.5, 19


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
