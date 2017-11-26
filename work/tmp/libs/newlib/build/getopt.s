	.text
	.file	"getopt.bc"
	.globl	$getopt
	.type	$getopt,@function
$getopt:                                //  @getopt
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
	ori x28, x0, $optarg & 0xfff
	slli x28, x28, 20
	lui x1, $optarg >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optind & 0xfff
	slli x28, x28, 20
	lui x1, $optind >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $opterr & 0xfff
	slli x28, x28, 20
	lui x1, $opterr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optopt & 0xfff
	slli x28, x28, 20
	lui x1, $optopt >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $optwhere & 0xfff
	slli x28, x28, 20
	lui x1, $optwhere >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x1, x28
	sw x9, 4 ( x2 )                 //  4-byte Folded Spill
	addi x8, x2, 24
	lw x1, 0 ( x3 )
	lw x3, 0 ( x4 )
	lw x4, 0 ( x5 )
	lw x5, 0 ( x7 )
	lw x7, 0 ( x9 )
	sw x1, 24 ( x2 )
	sw x3, 4 ( x8 )
	sw x4, 8 ( x8 )
	sw x5, 12 ( x8 )
	sw x7, 40 ( x2 )
	add x13, x0, x0
	add x14, x0, x13
	add x15, x0, x13
	add x16, x0, x8
	call $getopt_internal
	lw x1, 24 ( x2 )
	lw x3, 4 ( x8 )
	lw x4, 8 ( x8 )
	lw x5, 12 ( x8 )
	lw x7, 40 ( x2 )
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x5, 0 ( x1 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x7, 0 ( x1 )
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
	.size	$getopt, ($func_end0)-($getopt)
	.cfi_endproc

	.type	$getopt_internal,@function
$getopt_internal:                       //  @getopt_internal
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi9:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	not x8, x0
	beqz x3, LBB1_160
LBB1_1:                                 //  %entry
	beqz x11, LBB1_160
LBB1_2:                                 //  %lor.lhs.false2
	bgtu x12, x0, LBB1_4
LBB1_3:                                 //  %lor.lhs.false2
	beqz x13, LBB1_160
LBB1_4:                                 //  %lor.lhs.false5
	lw x1, 4 ( x16 )
	nop
	ble x3, x1, LBB1_160
LBB1_5:                                 //  %lor.lhs.false7
	slli x1, x1, 2
	add x1, x1, x11
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB1_160
LBB1_6:                                 //  %if.end
	sw x15, 44 ( x2 )               //  4-byte Folded Spill
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x13, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x16, 56 ( x2 )               //  4-byte Folded Spill
	call $strcmp
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x13 )
	bgtu x10, x0, LBB1_8
LBB1_7:                                 //  %if.then13
	addi x1, x1, 1
	sw x1, 4 ( x13 )
	jalr x0, LBB1_160 ( x0 )
LBB1_8:                                 //  %if.end15
	bgtu x1, x0, LBB1_10
LBB1_9:                                 //  %if.then18
	slti x1, x0, 1
	sw x1, 16 ( x13 )
	sw x1, 4 ( x13 )
LBB1_10:                                //  %if.end20
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x17, x0, LBB1_15
LBB1_11:                                //  %if.end37.thread710
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	call $getenv
	add x17, x0, x0
	beq x10, x17, LBB1_13
LBB1_12:
	addi x7, x0, 2
	jalr x0, LBB1_14 ( x0 )
LBB1_13:                                //  %if.end37.thread710
	add x7, x0, x17
LBB1_14:                                //  %if.end37.thread710
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	add x9, x0, x17
	jalr x0, LBB1_27 ( x0 )
LBB1_15:                                //  %land.lhs.true22
	lbu x1, 0 ( x17 )
	nop
	xori x3, x1, 45
	beqz x3, LBB1_17
LBB1_16:                                //  %land.lhs.true22
	xori x3, x1, 43
	bgtu x3, x0, LBB1_21
LBB1_17:                                //  %if.end37.thread
	addi x3, x0, 45
	bne x1, x3, LBB1_19
LBB1_18:
	slti x7, x0, 1
	jalr x0, LBB1_20 ( x0 )
LBB1_19:                                //  %if.end37.thread
	addi x7, x0, 2
LBB1_20:                                //  %if.end37.thread
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	addi x17, x17, 1
	jalr x0, LBB1_24 ( x0 )
LBB1_21:                                //  %if.end37
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	call $getenv
	add x7, x0, x0
	beq x10, x7, LBB1_23
LBB1_22:
	addi x7, x0, 2
LBB1_23:                                //  %if.end37
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_24:                                //  %land.lhs.true40
	lbu x1, 0 ( x17 )
	addi x3, x0, 58
	bne x1, x3, LBB1_26
LBB1_25:
	addi x17, x17, 1
LBB1_26:                                //  %land.lhs.true40
	xori x1, x1, 58
	seqz x1, x1
	andi x9, x1, 1
LBB1_27:                                //  %if.end46
	add x14, x0, x0
	lw x1, 16 ( x13 )
	nop
	xori x1, x1, 1
	beqz x1, LBB1_29
LBB1_28:
	add x15, x0, x14
	jalr x0, LBB1_66 ( x0 )
LBB1_29:                                //  %if.then50
	andi x1, x7, 3
	xori x3, x1, 1
	beqz x3, LBB1_53
LBB1_30:                                //  %if.then50
	xori x1, x1, 2
	beqz x1, LBB1_60
LBB1_31:                                //  %sw.bb
	lw x5, 4 ( x13 )
	nop
	slli x3, x5, 2
	add x14, x3, x18
	lw x1, 0 ( x14 )
	nop
	bgtu x1, x0, LBB1_33
LBB1_32:
	add x11, x0, x0
	add x1, x0, x5
	jalr x0, LBB1_42 ( x0 )
LBB1_33:                                //  %lor.lhs.false.i.lr.ph
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB1_38
LBB1_34:                                //  %lor.lhs.false.i.us.preheader
	add x3, x3, x18
	add x11, x0, x0
	addi x3, x3, 4
LBB1_35:                                //  %lor.lhs.false.i.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 0 ( x1 )
	nop
	xori x4, x1, 43
	beqz x4, LBB1_41
LBB1_36:                                //  %lor.lhs.false.i.us
                                        //    in Loop: Header=BB1_35 Depth=1
	xori x1, x1, 45
	beqz x1, LBB1_41
LBB1_37:                                //  %while.body.us
                                        //    in Loop: Header=BB1_35 Depth=1
	add x1, x11, x5
	addi x1, x1, 1
	sw x1, 4 ( x13 )
	addi x4, x3, 4
	addi x11, x11, 1
	lw x1, 0 ( x3 )
	add x3, x0, x4
	bgtu x1, x0, LBB1_35
	jalr x0, LBB1_41 ( x0 )
LBB1_38:                                //  %lor.lhs.false.i.preheader
	add x3, x3, x18
	add x11, x0, x0
	addi x3, x3, 4
LBB1_39:                                //  %lor.lhs.false.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 0 ( x1 )
	nop
	xori x1, x1, 45
	beqz x1, LBB1_41
LBB1_40:                                //  %is_option.exit
                                        //    in Loop: Header=BB1_39 Depth=1
	add x1, x11, x5
	addi x1, x1, 1
	sw x1, 4 ( x13 )
	addi x4, x3, 4
	addi x11, x11, 1
	lw x1, 0 ( x3 )
	add x3, x0, x4
	bgtu x1, x0, LBB1_39
LBB1_41:                                //  %lor.lhs.false.i.us.while.end.loopexit726_crit_edge
	add x1, x11, x5
LBB1_42:                                //  %while.end
	slli x1, x1, 2
	add x1, x1, x18
	lw x10, 0 ( x1 )
	nop
	bgtu x10, x0, LBB1_44
LBB1_43:                                //  %if.then62
	sw x5, 4 ( x13 )
	jalr x0, LBB1_160 ( x0 )
LBB1_44:                                //  %if.else64
	sw x14, 36 ( x2 )               //  4-byte Folded Spill
	sw x17, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x11, x1, x28
	call $strcmp
	beqz x10, LBB1_46
LBB1_45:
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_66 ( x0 )
LBB1_46:                                //  %if.then70
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	srai x1, x11, 1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	ble x1, x0, LBB1_49
LBB1_47:                                //  %for.body.lr.ph.i.i642
	add x3, x10, x11
	slli x3, x3, 2
	add x3, x3, x9
	addi x3, x3, -4
	add x4, x0, x12
LBB1_48:                                //  %for.body.i.i649
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x4 )
	lw x7, 0 ( x3 )
	nop
	sw x7, 0 ( x4 )
	sw x5, 0 ( x3 )
	addi x4, x4, 4
	addi x3, x3, -4
	addi x1, x1, -1
	bgtu x1, x0, LBB1_48
LBB1_49:                                //  %reverse_argv_elements.exit.i653
	addi x1, x11, 1
	srai x1, x1, 1
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	ble x1, x0, LBB1_52
LBB1_50:                                //  %for.body.i27.i661.preheader
	add x3, x10, x11
	slli x3, x3, 2
	add x3, x3, x9
LBB1_51:                                //  %for.body.i27.i661
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 0 ( x12 )
	lw x5, 0 ( x3 )
	nop
	sw x5, 0 ( x12 )
	sw x4, 0 ( x3 )
	addi x12, x12, 4
	addi x3, x3, -4
	addi x1, x1, -1
	bgtu x1, x0, LBB1_51
LBB1_52:                                //  %permute.exit663
	addi x1, x10, 1
	sw x1, 4 ( x7 )
	jalr x0, LBB1_160 ( x0 )
LBB1_53:                                //  %sw.bb74
	lw x1, 4 ( x13 )
	nop
	slli x3, x1, 2
	add x3, x3, x18
	lw x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB1_55
LBB1_54:
	add x15, x0, x14
	jalr x0, LBB1_66 ( x0 )
LBB1_55:                                //  %lor.lhs.false.i632
	lbu x4, 0 ( x3 )
	nop
	xori x5, x4, 45
	bgtu x5, x0, LBB1_57
LBB1_56:
	add x15, x0, x14
	jalr x0, LBB1_66 ( x0 )
LBB1_57:                                //  %is_option.exit638
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x5, LBB1_59
LBB1_58:                                //  %is_option.exit638
	xori x4, x4, 43
	add x15, x0, x14
	beqz x4, LBB1_66
LBB1_59:                                //  %if.then79
	addi x1, x1, 1
	sw x1, 4 ( x13 )
	sw x3, 0 ( x13 )
	slti x8, x0, 1
	sw x8, 12 ( x13 )
	jalr x0, LBB1_160 ( x0 )
LBB1_60:                                //  %sw.bb84
	lw x1, 4 ( x13 )
	nop
	slli x1, x1, 2
	add x1, x1, x18
	lw x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB1_62
LBB1_61:
	add x15, x0, x14
	jalr x0, LBB1_66 ( x0 )
LBB1_62:                                //  %lor.lhs.false.i623
	lbu x1, 0 ( x1 )
	nop
	xori x3, x1, 45
	bgtu x3, x0, LBB1_64
LBB1_63:
	add x15, x0, x14
	jalr x0, LBB1_66 ( x0 )
LBB1_64:                                //  %is_option.exit629
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB1_160
LBB1_65:                                //  %is_option.exit629
	xori x1, x1, 43
	add x15, x0, x14
	bgtu x1, x0, LBB1_160
LBB1_66:                                //  %if.end91
	lw x1, 4 ( x13 )
	nop
	slli x1, x1, 2
	add x1, x1, x18
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB1_160
LBB1_67:                                //  %if.end97
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	not x16, x0
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x15, 20 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_71
LBB1_68:                                //  %land.lhs.true100
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x11, x1, x28
	addi x12, x0, 2
	sw x17, 48 ( x2 )               //  4-byte Folded Spill
	call $memcmp
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB1_74
LBB1_69:                                //  %lor.lhs.false106
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_73
LBB1_70:
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	not x16, x0
LBB1_71:                                //  %if.end209
	bgtu x17, x0, LBB1_96
LBB1_72:
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_135 ( x0 )
LBB1_73:                                //  %land.lhs.true108
	lw x1, 4 ( x13 )
	nop
	slli x1, x1, 2
	add x1, x1, x18
	lw x1, 0 ( x1 )
	nop
	lbu x1, 0 ( x1 )
	nop
	xori x1, x1, 43
	bgtu x1, x0, LBB1_70
LBB1_74:                                //  %land.lhs.true115
	lw x1, 16 ( x13 )
	nop
	xori x1, x1, 1
	bgtu x1, x0, LBB1_70
LBB1_75:                                //  %if.then119
	lw x1, 4 ( x13 )
	nop
	slli x1, x1, 2
	add x1, x1, x18
	lw x10, 0 ( x1 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x11, x1, x28
	addi x12, x0, 2
	add x8, x0, x13
	call $memcmp
	beqz x10, LBB1_77
LBB1_76:                                //  %if.then119.if.end127_crit_edge
	lw x3, 16 ( x8 )
	jalr x0, LBB1_78 ( x0 )
LBB1_77:                                //  %if.then125
	addi x3, x0, 2
	sw x3, 16 ( x8 )
LBB1_78:                                //  %if.end127
	lw x1, 4 ( x8 )
	nop
	slli x1, x1, 2
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	lw x1, 0 ( x1 )
	nop
	add x10, x3, x1
	addi x11, x0, 61
	call $strchr
	add x18, x0, x8
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x10
	lw x1, 4 ( x13 )
	nop
	slli x3, x1, 2
	add x3, x3, x18
	bgtu x4, x0, LBB1_80
LBB1_79:                                //  %if.then135
	lw x10, 0 ( x3 )
	nop
	call $strlen
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x13 )
	nop
	slli x3, x1, 2
	add x3, x3, x18
	lw x3, 0 ( x3 )
	nop
	add x4, x10, x3
	jalr x0, LBB1_81 ( x0 )
LBB1_80:                                //  %if.else143
	lw x3, 0 ( x3 )
	nop
	sub x10, x4, x3
LBB1_81:                                //  %if.end148
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x3 )
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	not x16, x0
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	beqz x11, LBB1_71
LBB1_82:                                //  %for.body.preheader
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	lw x3, 16 ( x13 )
	nop
	sub x12, x10, x3
	add x8, x0, x0
	not x4, x0
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
LBB1_83:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x1, x1, 2
	add x1, x1, x18
	lw x1, 0 ( x1 )
	nop
	add x10, x3, x1
	call $memcmp
	beqz x10, LBB1_87
LBB1_84:                                //    in Loop: Header=BB1_83 Depth=1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
LBB1_85:                                //  %for.inc
                                        //    in Loop: Header=BB1_83 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x1 )
	nop
	bgtu x11, x0, LBB1_95
LBB1_86:
	add x16, x0, x4
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_89 ( x0 )
LBB1_87:                                //  %if.then161
                                        //    in Loop: Header=BB1_83 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	nop
	call $strlen
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	nop
	bne x12, x10, LBB1_91
LBB1_88:
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	add x16, x0, x8
LBB1_89:                                //  %for.end
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	bgt x0, x16, LBB1_71
LBB1_90:                                //  %if.end209.thread
	slli x1, x16, 4
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	add x3, x0, x0
	lw x1, 4 ( x1 )
	add x10, x0, x3
	jalr x0, LBB1_111 ( x0 )
LBB1_91:                                //  %if.else168
                                        //    in Loop: Header=BB1_83 Depth=1
	add x4, x0, x8
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB1_85
LBB1_92:                                //  %if.else172
	lw x1, 8 ( x13 )
	nop
	beqz x1, LBB1_94
LBB1_93:                                //  %if.then174
	lui x1, $_impure_ptr >> 12 & 0xfffff
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lw x10, 0 ( x18 )
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	call $fputs
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.2 >> 12 & 0xfffff
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 0 ( x1 )
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	nop
	call $fputs
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.3 >> 12 & 0xfffff
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 4
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 0 ( x1 )
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	nop
	call $fputs
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.4 >> 12 & 0xfffff
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	nop
	call $fputs
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
LBB1_94:                                //  %if.end197
	addi x8, x0, 63
	sw x8, 12 ( x13 )
	jalr x0, LBB1_160 ( x0 )
LBB1_95:                                //  %for.inc.for.body_crit_edge
                                        //    in Loop: Header=BB1_83 Depth=1
	addi x8, x8, 1
	addi x1, x1, 16
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x3, 16 ( x13 )
	lw x1, 4 ( x13 )
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_83 ( x0 )
LBB1_96:                                //  %if.end209
	bgt x0, x16, LBB1_98
LBB1_97:
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_135 ( x0 )
LBB1_98:                                //  %if.then215
	sw x16, 48 ( x2 )               //  4-byte Folded Spill
	lw x1, 4 ( x13 )
	nop
	slli x1, x1, 2
	add x1, x1, x18
	lw x1, 0 ( x1 )
	lw x3, 16 ( x13 )
	nop
	add x1, x3, x1
	lb x11, 0 ( x1 )
	add x10, x0, x17
	add x8, x0, x13
	call $strchr
	bgtu x10, x0, LBB1_104
LBB1_99:                                //  %if.then224
	lw x1, 8 ( x8 )
	add x5, x0, x8
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_101
LBB1_100:                               //  %if.then227
	lui x1, $_impure_ptr >> 12 & 0xfffff
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lw x10, 0 ( x7 )
	nop
	call $fputs
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.6 >> 12 & 0xfffff
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x1, 0 ( x1 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 16 ( x3 )
	nop
	add x1, x3, x1
	lb x10, 0 ( x1 )
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	nop
	call $fputc
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.7 >> 12 & 0xfffff
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_101:                               //  %if.end242
	lw x1, 16 ( x5 )
	nop
	addi x3, x1, 1
	sw x3, 16 ( x5 )
	lw x1, 4 ( x5 )
	nop
	slli x4, x1, 2
	add x4, x4, x7
	lw x4, 0 ( x4 )
	nop
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB1_103
LBB1_102:                               //  %if.then252
	addi x1, x1, 1
	sw x1, 4 ( x5 )
	slti x1, x0, 1
	sw x1, 16 ( x5 )
LBB1_103:                               //  %if.end256
	addi x8, x0, 63
	sw x8, 12 ( x5 )
	jalr x0, LBB1_160 ( x0 )
LBB1_104:                               //  %if.end258
	lbu x1, 1 ( x10 )
	nop
	xori x1, x1, 58
	beqz x1, LBB1_106
LBB1_105:
	add x1, x0, x0
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB1_110 ( x0 )
LBB1_106:                               //  %cond.true
	lbu x1, 2 ( x10 )
	addi x3, x0, 58
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	bne x1, x3, LBB1_108
LBB1_107:
	addi x1, x0, 2
	jalr x0, LBB1_109 ( x0 )
LBB1_108:                               //  %cond.true
	slti x1, x0, 1
LBB1_109:                               //  %cond.true
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	lw x18, 52 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
LBB1_110:                               //  %cond.end
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	lw x16, 48 ( x2 )               //  4-byte Folded Reload
	lw x3, 4 ( x13 )
	nop
	slli x3, x3, 2
	add x3, x3, x18
	lw x3, 0 ( x3 )
	lb x4, 0 ( x10 )
	lw x5, 16 ( x13 )
	sw x4, 12 ( x13 )
	add x4, x5, x3
	slti x3, x0, 1
	addi x5, x4, 1
LBB1_111:                               //  %if.end276
	xori x4, x1, 1
	beqz x4, LBB1_118
LBB1_112:                               //  %if.end276
	xori x1, x1, 2
	bgtu x1, x0, LBB1_134
LBB1_113:                               //  %sw.bb277
	lbu x1, 0 ( x5 )
	addi x3, x0, 61
	bne x1, x3, LBB1_115
LBB1_114:
	addi x5, x5, 1
LBB1_115:                               //  %sw.bb277
	lbu x3, 0 ( x5 )
	add x1, x0, x0
	bne x3, x1, LBB1_117
LBB1_116:                               //  %sw.bb277
	add x5, x0, x1
LBB1_117:                               //  %sw.bb277
	sw x5, 0 ( x13 )
	slti x3, x0, 1
	sw x3, 16 ( x13 )
	jalr x0, LBB1_139 ( x0 )
LBB1_118:                               //  %sw.bb293
	lbu x1, 0 ( x5 )
	addi x3, x0, 61
	bne x1, x3, LBB1_120
LBB1_119:
	addi x5, x5, 1
LBB1_120:                               //  %sw.bb293
	lbu x1, 0 ( x5 )
	nop
	beqz x1, LBB1_122
LBB1_121:                               //  %if.then303
	sw x5, 0 ( x13 )
	slti x3, x0, 1
	sw x3, 16 ( x13 )
	jalr x0, LBB1_138 ( x0 )
LBB1_122:                               //  %if.else306
	lw x1, 4 ( x13 )
	nop
	addi x3, x1, 1
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x3, LBB1_133
LBB1_123:                               //  %if.then311
	lw x3, 8 ( x13 )
	nop
	beqz x3, LBB1_130
LBB1_124:                               //  %if.then314
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x18 )
	lui x1, $_impure_ptr >> 12 & 0xfffff
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	sw x16, 48 ( x2 )               //  4-byte Folded Spill
	call $fputs
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.8 >> 12 & 0xfffff
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB1_128
LBB1_125:                               //  %if.then322
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x8, x1, x28
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	addi x10, x0, 45
	call $fputc
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 4
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 0 ( x1 )
	lw x1, 0 ( x8 )
	nop
	lw x11, 12 ( x1 )
	nop
	call $fputs
	add x1, x0, x0
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_127
LBB1_126:
	addi x1, x0, 58
	jalr x0, LBB1_129 ( x0 )
LBB1_127:                               //  %if.then322
	addi x1, x0, 63
	jalr x0, LBB1_129 ( x0 )
LBB1_128:                               //  %if.else332
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	lw x11, 12 ( x1 )
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lb x10, 0 ( x8 )
	nop
	call $fputc
	lb x1, 0 ( x8 )
LBB1_129:                               //  %if.end338
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	lui x4, $_impure_ptr >> 12 & 0xfffff
	sw x1, 12 ( x3 )
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	lw x1, 0 ( x1 )
	nop
	lw x11, 12 ( x1 )
	lui x1, $.str.7 >> 12 & 0xfffff
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $fputs
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x13 )
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
LBB1_130:                               //  %if.end341
	add x3, x0, x0
	beq x9, x3, LBB1_132
LBB1_131:
	addi x8, x0, 58
	jalr x0, LBB1_7 ( x0 )
LBB1_132:                               //  %if.end341
	addi x8, x0, 63
	jalr x0, LBB1_7 ( x0 )
LBB1_133:                               //  %if.else346
	slli x1, x3, 2
	add x1, x1, x18
	lw x1, 0 ( x1 )
	nop
	sw x1, 0 ( x13 )
	slti x3, x0, 1
	sw x3, 16 ( x13 )
	add x1, x0, x3
	jalr x0, LBB1_139 ( x0 )
LBB1_134:                               //  %sw.bb355
	xori x1, x3, 1
	bgtu x1, x0, LBB1_136
LBB1_135:                               //  %if.then358
	lw x1, 16 ( x13 )
	nop
	addi x3, x1, 1
	sw x3, 16 ( x13 )
	lw x1, 4 ( x13 )
	nop
	slli x1, x1, 2
	add x1, x1, x18
	lw x1, 0 ( x1 )
	nop
	add x1, x3, x1
	lbu x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB1_137
LBB1_136:                               //  %if.end373.sink.split
	slti x3, x0, 1
	sw x3, 16 ( x13 )
LBB1_137:                               //  %if.end373
	sw x0, 0 ( x13 )
LBB1_138:                               //  %sw.epilog375
	add x1, x0, x0
LBB1_139:                               //  %sw.epilog375
	bgtu x7, x0, LBB1_151
LBB1_140:                               //  %land.lhs.true378
	beqz x15, LBB1_151
LBB1_141:                               //  %land.lhs.true378
	xori x4, x3, 1
	bgtu x4, x0, LBB1_151
LBB1_142:                               //  %if.then385
	slli x3, x14, 2
	add x4, x3, x18
	addi x3, x1, 1
	srai x5, x15, 1
	ble x5, x0, LBB1_145
LBB1_143:                               //  %for.body.lr.ph.i.i
	add x7, x14, x15
	slli x7, x7, 2
	add x7, x7, x18
	addi x7, x7, -4
	add x9, x0, x4
LBB1_144:                               //  %for.body.i.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x9 )
	lw x11, 0 ( x7 )
	nop
	sw x11, 0 ( x9 )
	sw x10, 0 ( x7 )
	addi x9, x9, 4
	addi x7, x7, -4
	addi x5, x5, -1
	bgtu x5, x0, LBB1_144
LBB1_145:                               //  %reverse_argv_elements.exit.i
	add x5, x15, x3
	srai x5, x5, 1
	ble x5, x0, LBB1_148
LBB1_146:                               //  %for.body.lr.ph.i20.i
	add x7, x14, x15
	add x7, x1, x7
	slli x7, x7, 2
	add x7, x7, x18
	add x9, x0, x4
LBB1_147:                               //  %for.body.i27.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x9 )
	lw x11, 0 ( x7 )
	nop
	sw x11, 0 ( x9 )
	sw x10, 0 ( x7 )
	addi x9, x9, 4
	addi x7, x7, -4
	addi x5, x5, -1
	bgtu x5, x0, LBB1_147
LBB1_148:                               //  %reverse_argv_elements.exit28.i
	srli x5, x3, 1
	beqz x5, LBB1_153
LBB1_149:                               //  %for.body.i15.i.preheader
	add x1, x1, x14
	slli x1, x1, 2
	add x1, x1, x18
LBB1_150:                               //  %for.body.i15.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x7, 0 ( x4 )
	lw x9, 0 ( x1 )
	nop
	sw x9, 0 ( x4 )
	sw x7, 0 ( x1 )
	addi x4, x4, 4
	addi x1, x1, -4
	addi x5, x5, -1
	bgtu x5, x0, LBB1_150
	jalr x0, LBB1_153 ( x0 )
LBB1_151:                               //  %if.else391
	xori x3, x3, 1
	bgtu x3, x0, LBB1_154
LBB1_152:                               //  %if.then395
	addi x3, x1, 1
	lw x14, 4 ( x13 )
	nop
LBB1_153:                               //  %if.end401.sink.split
	add x1, x14, x3
	sw x1, 4 ( x13 )
LBB1_154:                               //  %if.end401
	bgt x0, x16, LBB1_159
LBB1_155:                               //  %if.then404
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_157
LBB1_156:                               //  %if.then407
	sw x16, 0 ( x1 )
LBB1_157:                               //  %if.end408
	slli x1, x16, 4
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x8, 12 ( x1 )
	lw x1, 8 ( x1 )
	nop
	beqz x1, LBB1_160
LBB1_158:                               //  %if.then412
	sw x8, 0 ( x1 )
	add x8, x0, x0
	jalr x0, LBB1_160 ( x0 )
LBB1_159:                               //  %if.else419
	lw x8, 12 ( x13 )
	nop
LBB1_160:                               //  %cleanup
	add x10, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi12:
	.cfi_adjust_cfa_offset -72
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$getopt_internal, ($func_end1)-($getopt_internal)
	.cfi_endproc

	.globl	$getopt_long
	.type	$getopt_long,@function
$getopt_long:                           //  @getopt_long
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
	ori x28, x0, $optarg & 0xfff
	slli x28, x28, 20
	lui x1, $optarg >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optind & 0xfff
	slli x28, x28, 20
	lui x1, $optind >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $opterr & 0xfff
	slli x28, x28, 20
	lui x1, $opterr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optopt & 0xfff
	slli x28, x28, 20
	lui x1, $optopt >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $optwhere & 0xfff
	slli x28, x28, 20
	lui x1, $optwhere >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x1, x28
	sw x9, 4 ( x2 )                 //  4-byte Folded Spill
	addi x8, x2, 24
	lw x1, 0 ( x3 )
	lw x3, 0 ( x4 )
	lw x4, 0 ( x5 )
	lw x5, 0 ( x7 )
	lw x7, 0 ( x9 )
	sw x1, 24 ( x2 )
	sw x3, 4 ( x8 )
	sw x4, 8 ( x8 )
	sw x5, 12 ( x8 )
	sw x7, 40 ( x2 )
	add x15, x0, x0
	add x16, x0, x8
	call $getopt_internal
	lw x1, 24 ( x2 )
	lw x3, 4 ( x8 )
	lw x4, 8 ( x8 )
	lw x5, 12 ( x8 )
	lw x7, 40 ( x2 )
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x5, 0 ( x1 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x7, 0 ( x1 )
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
	.size	$getopt_long, ($func_end2)-($getopt_long)
	.cfi_endproc

	.globl	$getopt_long_only
	.type	$getopt_long_only,@function
$getopt_long_only:                      //  @getopt_long_only
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi23:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optarg & 0xfff
	slli x28, x28, 20
	lui x1, $optarg >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optind & 0xfff
	slli x28, x28, 20
	lui x1, $optind >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $opterr & 0xfff
	slli x28, x28, 20
	lui x1, $opterr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $optopt & 0xfff
	slli x28, x28, 20
	lui x1, $optopt >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $optwhere & 0xfff
	slli x28, x28, 20
	lui x1, $optwhere >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x1, x28
	sw x9, 4 ( x2 )                 //  4-byte Folded Spill
	addi x8, x2, 24
	lw x1, 0 ( x3 )
	lw x3, 0 ( x4 )
	lw x4, 0 ( x5 )
	lw x5, 0 ( x7 )
	lw x7, 0 ( x9 )
	sw x1, 24 ( x2 )
	sw x3, 4 ( x8 )
	sw x4, 8 ( x8 )
	sw x5, 12 ( x8 )
	sw x7, 40 ( x2 )
	slti x15, x0, 1
	add x16, x0, x8
	call $getopt_internal
	lw x1, 24 ( x2 )
	lw x3, 4 ( x8 )
	lw x4, 8 ( x8 )
	lw x5, 12 ( x8 )
	lw x7, 40 ( x2 )
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x5, 0 ( x1 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x7, 0 ( x1 )
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi26:
	.cfi_adjust_cfa_offset -56
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$getopt_long_only, ($func_end3)-($getopt_long_only)
	.cfi_endproc

	.globl	$__getopt_r
	.type	$__getopt_r,@function
$__getopt_r:                            //  @__getopt_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	add x3, x0, x13
	add x13, x0, x0
	add x14, x0, x13
	add x15, x0, x13
	add x16, x0, x3
	j $getopt_internal
$func_end4:
	.size	$__getopt_r, ($func_end4)-($__getopt_r)
	.cfi_endproc

	.globl	$__getopt_long_r
	.type	$__getopt_long_r,@function
$__getopt_long_r:                       //  @__getopt_long_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi30:
	.cfi_def_cfa 2, 0
$cfi31:
	.cfi_val_offset 2, 0
	add x3, x0, x15
	add x15, x0, x0
	add x16, x0, x3
	j $getopt_internal
$func_end5:
	.size	$__getopt_long_r, ($func_end5)-($__getopt_long_r)
	.cfi_endproc

	.globl	$__getopt_long_only_r
	.type	$__getopt_long_only_r,@function
$__getopt_long_only_r:                  //  @__getopt_long_only_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi32:
	.cfi_def_cfa 2, 0
$cfi33:
	.cfi_val_offset 2, 0
	add x3, x0, x15
	slti x15, x0, 1
	add x16, x0, x3
	j $getopt_internal
$func_end6:
	.size	$__getopt_long_only_r, ($func_end6)-($__getopt_long_only_r)
	.cfi_endproc

	.address_space	0	
	.type	$optarg,@object         //  @optarg
	.bss
	.globl	$optarg
	.p2align	2
$optarg:
	.long	0
	.size	$optarg, 4

	.address_space	0	
	.type	$optind,@object         //  @optind
	.globl	$optind
	.p2align	2
$optind:
	.long	0                       //  0x0
	.size	$optind, 4

	.address_space	0	
	.type	$opterr,@object         //  @opterr
	.data
	.globl	$opterr
	.p2align	2
$opterr:
	.long	1                       //  0x1
	.size	$opterr, 4

	.address_space	0	
	.type	$optopt,@object         //  @optopt
	.globl	$optopt
	.p2align	2
$optopt:
	.long	63                      //  0x3f
	.size	$optopt, 4

	.address_space	0	
	.type	$optwhere,@object       //  @optwhere
	.local	$optwhere
	.comm	$optwhere,4,4
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"--"
	.size	$.str, 3

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"POSIXLY_CORRECT"
	.size	$.str.1, 16

	.address_space	0	
	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	": option `"
	.size	$.str.2, 11

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"' is ambiguous (could be `--"
	.size	$.str.3, 29

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"' or `--"
	.size	$.str.4, 9

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"')\n"
	.size	$.str.5, 4

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	": invalid option -- `-"
	.size	$.str.6, 23

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"'\n"
	.size	$.str.7, 3

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	": argument required for option `-"
	.size	$.str.8, 34


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
