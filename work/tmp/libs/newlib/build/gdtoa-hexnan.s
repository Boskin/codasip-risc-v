	.text
	.file	"gdtoa-hexnan.bc"
	.globl	$__match
	.type	$__match,@function
$__match:                               //  @__match
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	lw x4, 0 ( x3 )
	addi x5, x0, 26
	addi x4, x4, 1
	add x10, x0, x0
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lb x7, 0 ( x11 )
	nop
	beqz x7, LBB0_5
LBB0_2:                                 //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	lb x9, 0 ( x4 )
	nop
	addi x12, x9, -65
	andi x12, x12, 255
	bgeu x12, x5, LBB0_4
LBB0_3:                                 //    in Loop: Header=BB0_1 Depth=1
	addi x9, x9, 32
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x4, x4, 1
	addi x11, x11, 1
	beq x9, x7, LBB0_1
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %while.end
	sw x4, 0 ( x3 )
	slti x10, x0, 1
LBB0_6:                                 //  %cleanup
	ret
$func_end0:
	.size	$__match, ($func_end0)-($__match)
	.cfi_endproc

	.globl	$__hexnan
	.type	$__hexnan,@function
$__hexnan:                              //  @__hexnan
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	lw x3, 0 ( x11 )
	add x15, x0, x0
	srai x4, x3, 5
	slli x5, x4, 2
	andi x4, x3, 31
	add x5, x5, x12
	beq x4, x15, LBB1_2
LBB1_1:
	addi x5, x5, 4
LBB1_2:                                 //  %entry
	not x7, x0
	addi x3, x5, -4
	sw x0, -4 ( x5 )
	lw x17, 0 ( x10 )
	add x18, x0, x0
	lui x19, $__hexdig >> 12 & 0xfffff
	addi x9, x0, 32
	addi x20, x0, 8
	slti x21, x0, 1
	add x11, x0, x3
LBB1_3:                                 //  %while.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
                                        //        Child Loop BB1_5 Depth 3
                                        //          Child Loop BB1_17 Depth 4
                                        //          Child Loop BB1_25 Depth 4
                                        //          Child Loop BB1_6 Depth 4
                                        //            Child Loop BB1_12 Depth 5
	add x13, x0, x15
	add x22, x0, x18
LBB1_4:                                 //  %while.cond.outer163
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_5 Depth 3
                                        //          Child Loop BB1_17 Depth 4
                                        //          Child Loop BB1_25 Depth 4
                                        //          Child Loop BB1_6 Depth 4
                                        //            Child Loop BB1_12 Depth 5
	slli x14, x7, 2
	add x16, x14, x5
LBB1_5:                                 //  %while.cond.outer168
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_17 Depth 4
                                        //          Child Loop BB1_25 Depth 4
                                        //          Child Loop BB1_6 Depth 4
                                        //            Child Loop BB1_12 Depth 5
	ble x13, x15, LBB1_15
LBB1_6:                                 //  %while.cond.outer173.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_5 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_12 Depth 5
	add x25, x0, x17
	lbu x23, 1 ( x25 )
	nop
	beqz x23, LBB1_33
LBB1_7:                                 //  %while.body.us.us
                                        //    in Loop: Header=BB1_6 Depth=4
	addi x17, x25, 1
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x24, x19, x28
	add x24, x24, x23
	lbu x24, 0 ( x24 )
	nop
	bgtu x24, x0, LBB1_19
LBB1_8:                                 //  %if.then7.us.us
                                        //    in Loop: Header=BB1_6 Depth=4
	bgtu x23, x9, LBB1_28
LBB1_9:                                 //  %if.then12.us-lcssa.us.us
                                        //    in Loop: Header=BB1_6 Depth=4
	bgeu x16, x11, LBB1_13
LBB1_10:                                //  %if.then12.us-lcssa.us.us
                                        //    in Loop: Header=BB1_6 Depth=4
	slti x23, x22, 8
	beqz x23, LBB1_13
LBB1_11:                                //  %if.then17.us
                                        //    in Loop: Header=BB1_6 Depth=4
	sub x22, x20, x22
	slli x22, x22, 2
	sub x23, x9, x22
	lw x24, 0 ( x16 )
	add x25, x0, x16
LBB1_12:                                //  %do.body.i.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_5 Depth=3
                                        //          Parent Loop BB1_6 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	lw x26, 4 ( x25 )
	nop
	sll x27, x26, x23
	or x24, x24, x27
	sw x24, 0 ( x25 )
	srl x24, x26, x22
	sw x24, 4 ( x25 )
	addi x25, x25, 4
	bgtu x11, x25, LBB1_12
LBB1_13:                                //  %if.end18.us
                                        //    in Loop: Header=BB1_6 Depth=4
	add x22, x0, x20
	bgeu x12, x16, LBB1_6
LBB1_14:                                //  %if.end22
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x7, x7, -1
	slli x11, x7, 2
	add x11, x11, x5
	sw x0, 0 ( x11 )
	add x15, x0, x13
	jalr x0, LBB1_3 ( x0 )
LBB1_15:                                //  %while.cond.outer168.split
                                        //    in Loop: Header=BB1_5 Depth=3
	bgtu x11, x16, LBB1_22
LBB1_16:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB1_5 Depth=3
	addi x17, x17, 1
LBB1_17:                                //  %while.cond
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_5 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lbu x23, 0 ( x17 )
	nop
	beqz x23, LBB1_33
LBB1_18:                                //  %while.body
                                        //    in Loop: Header=BB1_17 Depth=4
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x24, x19, x28
	add x24, x24, x23
	lbu x24, 0 ( x24 )
	nop
	beqz x24, LBB1_26
LBB1_19:                                //    in Loop: Header=BB1_5 Depth=3
	add x23, x0, x22
	addi x22, x23, 1
	addi x13, x13, 1
	slti x23, x23, 8
	bgtu x23, x0, LBB1_30
LBB1_20:                                //  %if.then35
                                        //    in Loop: Header=BB1_5 Depth=3
	bgeu x12, x16, LBB1_5
LBB1_21:                                //  %if.end39
                                        //    in Loop: Header=BB1_4 Depth=2
	addi x7, x7, -1
	slli x14, x7, 2
	add x14, x14, x5
	sw x0, 0 ( x14 )
	add x14, x0, x18
	add x22, x0, x21
	jalr x0, LBB1_31 ( x0 )
LBB1_22:                                //  %while.cond.us263.preheader
                                        //    in Loop: Header=BB1_5 Depth=3
	addi x17, x17, 1
	jalr x0, LBB1_25 ( x0 )
LBB1_23:                                //  %while.body.us238
                                        //    in Loop: Header=BB1_25 Depth=4
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x24, x19, x28
	add x24, x24, x23
	lbu x24, 0 ( x24 )
	nop
	bgtu x24, x0, LBB1_19
LBB1_24:                                //  %if.then7.us242
                                        //    in Loop: Header=BB1_25 Depth=4
	addi x17, x17, 1
	bgtu x23, x9, LBB1_27
LBB1_25:                                //  %while.cond.us263
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_5 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lbu x23, 0 ( x17 )
	nop
	bgtu x23, x0, LBB1_23
	jalr x0, LBB1_33 ( x0 )
LBB1_26:                                //  %if.then7
                                        //    in Loop: Header=BB1_17 Depth=4
	addi x17, x17, 1
	sltiu x24, x23, 33
	bgtu x24, x0, LBB1_17
LBB1_27:                                //  %if.end25.loopexit582
	addi x25, x17, -2
LBB1_28:                                //  %if.end25
	xori x15, x23, 41
	beqz x15, LBB1_32
LBB1_29:
	addi x10, x0, 4
	ret
LBB1_30:                                //  %if.end41.loopexit
                                        //    in Loop: Header=BB1_4 Depth=2
	lw x14, 0 ( x16 )
LBB1_31:                                //  %if.end41
                                        //    in Loop: Header=BB1_4 Depth=2
	slli x16, x7, 2
	add x16, x16, x5
	andi x23, x24, 15
	slli x14, x14, 4
	or x14, x23, x14
	sw x14, 0 ( x16 )
	jalr x0, LBB1_4 ( x0 )
LBB1_32:                                //  %if.then28
	addi x15, x25, 2
	sw x15, 0 ( x10 )
LBB1_33:                                //  %while.end
	bgtu x13, x0, LBB1_35
LBB1_34:
	addi x10, x0, 4
	ret
LBB1_35:                                //  %if.end45
	bgeu x16, x11, LBB1_39
LBB1_36:                                //  %if.end45
	addi x10, x0, 7
	bgt x22, x10, LBB1_39
LBB1_37:                                //  %if.then51
	addi x10, x0, 8
	sub x10, x10, x22
	slli x10, x10, 2
	sub x13, x9, x10
	lw x15, 0 ( x16 )
	add x17, x0, x16
LBB1_38:                                //  %do.body.i161
                                        //  =>This Inner Loop Header: Depth=1
	lw x18, 4 ( x17 )
	nop
	sll x19, x18, x13
	or x15, x15, x19
	sw x15, 0 ( x17 )
	srl x15, x18, x10
	sw x15, 4 ( x17 )
	addi x17, x17, 4
	bgtu x11, x17, LBB1_38
LBB1_39:                                //  %if.end52
	bgeu x12, x16, LBB1_44
LBB1_40:                                //  %do.body.preheader
	add x5, x14, x5
	addi x7, x7, -1
	add x4, x0, x12
LBB1_41:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x9, 0 ( x5 )
	nop
	sw x9, 0 ( x4 )
	addi x5, x5, 4
	addi x4, x4, 4
	addi x7, x7, 1
	slti x9, x7, -1
	bgtu x9, x0, LBB1_41
LBB1_42:                                //  %do.body60
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x4 )
	addi x4, x4, 4
	bgeu x3, x4, LBB1_42
LBB1_43:                                //  %for.cond.preheaderthread-pre-split
	lw x4, 0 ( x3 )
	jalr x0, LBB1_46 ( x0 )
LBB1_44:                                //  %if.else
	beqz x4, LBB1_43
LBB1_45:                                //  %if.then69
	sub x4, x9, x4
	not x5, x0
	srl x4, x5, x4
	lw x5, 0 ( x3 )
	nop
	and x4, x4, x5
	sw x4, 0 ( x3 )
LBB1_46:                                //  %for.cond.preheader
	addi x10, x0, 5
	bgtu x4, x0, LBB1_50
LBB1_47:                                //  %if.end77
                                        //  =>This Inner Loop Header: Depth=1
	bne x12, x3, LBB1_49
LBB1_48:                                //  %if.then80
	slti x3, x0, 1
	sw x3, 0 ( x12 )
	ret
LBB1_49:                                //  %for.inc
                                        //    in Loop: Header=BB1_47 Depth=1
	addi x4, x3, -4
	lw x5, -4 ( x3 )
	add x3, x0, x4
	beqz x5, LBB1_47
LBB1_50:                                //  %cleanup
	ret
$func_end1:
	.size	$__hexnan, ($func_end1)-($__hexnan)
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
