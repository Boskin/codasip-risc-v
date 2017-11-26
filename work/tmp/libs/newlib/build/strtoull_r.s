	.text
	.file	"strtoull_r.bc"
	.globl	$_strtoull_r
	.type	$_strtoull_r,@function
$_strtoull_r:                           //  @_strtoull_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	addi x4, x1, 1
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x11
LBB0_1:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x8, 0 ( x1 )
	addi x1, x1, 1
	add x3, x8, x4
	lbu x3, 0 ( x3 )
	nop
	andi x3, x3, 8
	bgtu x3, x0, LBB0_1
LBB0_2:                                 //  %do.end
	xori x3, x8, 43
	bgtu x3, x0, LBB0_4
LBB0_3:
	add x3, x0, x0
	jalr x0, LBB0_7 ( x0 )
LBB0_4:                                 //  %do.end
	xori x3, x8, 45
	beqz x3, LBB0_6
LBB0_5:                                 //  %do.end.if.end10_crit_edge
	add x3, x0, x0
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x1
	jalr x0, LBB0_8 ( x0 )
LBB0_6:                                 //  %if.then
	slti x3, x0, 1
LBB0_7:                                 //  %if.end10.sink.split
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x3, x1, 1
	lbu x8, 0 ( x1 )
LBB0_8:                                 //  %if.end10
	ori x1, x13, 16
	xori x1, x1, 16
	bgtu x1, x0, LBB0_13
LBB0_9:                                 //  %if.end10
	xori x1, x8, 48
	bgtu x1, x0, LBB0_13
LBB0_10:                                //  %land.lhs.true17
	lbu x1, 0 ( x3 )
	nop
	ori x1, x1, 32
	xori x1, x1, 120
	beqz x1, LBB0_12
LBB0_11:
	addi x8, x0, 48
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.then25
	addi x13, x0, 16
	addi x1, x3, 2
	lbu x8, 1 ( x3 )
	add x3, x0, x1
LBB0_13:                                //  %if.end29
	addi x1, x0, 48
	bne x8, x1, LBB0_15
LBB0_14:
	addi x1, x0, 8
	jalr x0, LBB0_16 ( x0 )
LBB0_15:                                //  %if.end29
	addi x1, x0, 10
LBB0_16:                                //  %if.end29
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	beq x13, x3, LBB0_18
LBB0_17:                                //  %if.end29
	add x1, x0, x13
LBB0_18:                                //  %if.end29
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	srai x13, x1, 31
	sw x13, 32 ( x2 )               //  4-byte Folded Spill
	not x10, x0
	add x11, x0, x10
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivdi3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	not x10, x0
	add x11, x0, x10
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__umoddi3
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	not x13, x0
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x1, -1
	addi x16, x0, 55
	slti x17, x0, 1
	add x1, x0, x0
	add x3, x0, x1
	add x4, x0, x3
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
LBB0_19:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x0, x4
	add x10, x0, x1
	add x12, x0, x5
	add x1, x8, x7
	lb x1, 0 ( x1 )
	nop
	andi x4, x1, 4
	beqz x4, LBB0_21
LBB0_20:                                //  %if.then44
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x8, x8, -48
	jalr x0, LBB0_25 ( x0 )
LBB0_21:                                //  %if.else45
                                        //    in Loop: Header=BB0_19 Depth=1
	andi x1, x1, 3
	beqz x1, LBB0_40
LBB0_22:                                //  %if.then51
                                        //    in Loop: Header=BB0_19 Depth=1
	add x4, x0, x16
	beq x1, x17, LBB0_24
LBB0_23:                                //  %if.then51
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x4, x0, 87
LBB0_24:                                //  %if.then51
                                        //    in Loop: Header=BB0_19 Depth=1
	sub x8, x8, x4
LBB0_25:                                //  %if.end62
                                        //    in Loop: Header=BB0_19 Depth=1
	ble x9, x8, LBB0_40
LBB0_26:                                //  %if.end66
                                        //    in Loop: Header=BB0_19 Depth=1
	bne x11, x15, LBB0_28
LBB0_27:                                //    in Loop: Header=BB0_19 Depth=1
	sltu x1, x14, x10
	jalr x0, LBB0_29 ( x0 )
LBB0_28:                                //  %if.end66
                                        //    in Loop: Header=BB0_19 Depth=1
	sltu x1, x15, x11
LBB0_29:                                //  %if.end66
                                        //    in Loop: Header=BB0_19 Depth=1
	beqz x1, LBB0_31
LBB0_30:                                //    in Loop: Header=BB0_19 Depth=1
	add x1, x0, x10
	add x4, x0, x11
	add x3, x0, x13
	jalr x0, LBB0_39 ( x0 )
LBB0_31:                                //  %if.end66
                                        //    in Loop: Header=BB0_19 Depth=1
	bgt x0, x3, LBB0_30
LBB0_32:                                //  %lor.lhs.false72
                                        //    in Loop: Header=BB0_19 Depth=1
	xor x1, x14, x10
	xor x3, x15, x11
	or x1, x3, x1
	bgtu x1, x0, LBB0_34
LBB0_33:                                //  %lor.lhs.false72
                                        //    in Loop: Header=BB0_19 Depth=1
	add x1, x0, x14
	add x4, x0, x15
	add x3, x0, x13
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x8, x5, LBB0_39
LBB0_34:                                //  %if.else79
                                        //    in Loop: Header=BB0_19 Depth=1
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x9
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldi3
	slti x17, x0, 1
	add x4, x0, x0
	add x1, x10, x8
	add x3, x0, x17
	bgtu x8, x1, LBB0_36
LBB0_35:                                //  %if.else79
                                        //    in Loop: Header=BB0_19 Depth=1
	add x3, x0, x4
LBB0_36:                                //  %if.else79
                                        //    in Loop: Header=BB0_19 Depth=1
	add x4, x0, x17
	bgtu x10, x1, LBB0_38
LBB0_37:                                //  %if.else79
                                        //    in Loop: Header=BB0_19 Depth=1
	add x4, x0, x3
LBB0_38:                                //  %if.else79
                                        //    in Loop: Header=BB0_19 Depth=1
	srai x3, x8, 31
	add x3, x11, x3
	add x4, x4, x3
	add x3, x0, x17
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	not x13, x0
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	addi x16, x0, 55
LBB0_39:                                //  %for.inc
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x5, x12, 1
	lbu x8, 1 ( x12 )
	jalr x0, LBB0_19 ( x0 )
LBB0_40:                                //  %for.end
	bgez x3, LBB0_42
LBB0_41:                                //  %if.then87
	addi x1, x0, 34
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	not x1, x0
	add x11, x0, x1
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_49 ( x0 )
LBB0_42:                                //  %if.else88
	add x4, x0, x0
	add x1, x0, x10
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beq x9, x4, LBB0_44
LBB0_43:                                //  %if.else88
	sub x1, x0, x10
LBB0_44:                                //  %if.else88
	beq x10, x4, LBB0_46
LBB0_45:
	slti x5, x0, 1
	jalr x0, LBB0_47 ( x0 )
LBB0_46:                                //  %if.else88
	add x5, x0, x4
LBB0_47:                                //  %if.else88
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	beq x9, x4, LBB0_49
LBB0_48:                                //  %if.else88
	sub x4, x0, x11
	sub x11, x4, x5
LBB0_49:                                //  %if.end93
	beqz x7, LBB0_53
LBB0_50:                                //  %if.then96
	add x4, x0, x0
	bne x3, x4, LBB0_52
LBB0_51:                                //  %if.then96
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_52:                                //  %if.then96
	sw x12, 0 ( x7 )
LBB0_53:                                //  %if.end100
	add x10, x0, x1
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_strtoull_r, ($func_end0)-($_strtoull_r)
	.cfi_endproc

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
