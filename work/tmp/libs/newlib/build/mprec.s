	.text
	.file	"mprec.bc"
	.globl	$_Balloc
	.type	$_Balloc,@function
$_Balloc:                               //  @_Balloc
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
	add x8, x0, x10
	add x3, x0, x11
	lw x10, 76 ( x8 )
	nop
	bgtu x10, x0, LBB0_3
LBB0_1:                                 //  %if.then
	addi x11, x0, 4
	addi x12, x0, 33
	add x10, x0, x8
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	call $_calloc_r
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	sw x10, 76 ( x8 )
	bgtu x10, x0, LBB0_3
LBB0_2:
	add x10, x0, x0
	jalr x0, LBB0_9 ( x0 )
LBB0_3:                                 //  %if.end5
	slli x1, x3, 2
	add x1, x1, x10
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_5
LBB0_4:                                 //  %if.then8
	lw x3, 0 ( x10 )
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB0_8 ( x0 )
LBB0_5:                                 //  %if.else
	slti x11, x0, 1
	sll x1, x11, x3
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	slli x1, x1, 2
	addi x12, x1, 20
	add x10, x0, x8
	add x8, x0, x3
	call $_calloc_r
	bgtu x10, x0, LBB0_7
LBB0_6:
	add x10, x0, x0
	jalr x0, LBB0_9 ( x0 )
LBB0_7:                                 //  %if.end14
	sw x8, 4 ( x10 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 8 ( x10 )
LBB0_8:                                 //  %if.end15
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB0_9:                                 //  %cleanup
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
	.size	$_Balloc, ($func_end0)-($_Balloc)
	.cfi_endproc

	.globl	$_Bfree
	.type	$_Bfree,@function
$_Bfree:                                //  @_Bfree
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	beqz x11, LBB1_2
LBB1_1:                                 //  %if.then
	lw x3, 4 ( x11 )
	lw x4, 76 ( x10 )
	slli x3, x3, 2
	add x3, x3, x4
	lw x4, 0 ( x3 )
	nop
	sw x4, 0 ( x11 )
	sw x11, 0 ( x3 )
LBB1_2:                                 //  %if.end
	ret
$func_end1:
	.size	$_Bfree, ($func_end1)-($_Bfree)
	.cfi_endproc

	.globl	$__multadd
	.type	$__multadd,@function
$__multadd:                             //  @__multadd
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi11:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x0
	addi x8, x0, 20
	lw x5, 16 ( x11 )
	nop
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
LBB2_1:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x13, 36 ( x2 )               //  4-byte Folded Spill
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	add x1, x8, x11
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	lw x3, 0 ( x1 )
	nop
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	and x10, x1, x3
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 16
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x10
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x4, 16
	add x1, x10, x1
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x4
	slli x4, x1, 16
	or x3, x3, x4
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x7 )
	addi x8, x8, 4
	srli x13, x1, 16
	bgt x5, x4, LBB2_1
LBB2_2:                                 //  %do.end
	bgtu x13, x0, LBB2_4
LBB2_3:
	add x10, x0, x11
	jalr x0, LBB2_17 ( x0 )
LBB2_4:                                 //  %if.then
	lw x1, 8 ( x11 )
	nop
	ble x1, x5, LBB2_6
LBB2_5:
	add x10, x0, x11
	jalr x0, LBB2_16 ( x0 )
LBB2_6:                                 //  %if.then8
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x10, 76 ( x1 )
	lw x8, 4 ( x11 )
	sw x13, 36 ( x2 )               //  4-byte Folded Spill
	bgtu x10, x0, LBB2_9
LBB2_7:                                 //  %if.then.i
	addi x11, x0, 4
	addi x12, x0, 33
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_calloc_r
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x10, 76 ( x1 )
	bgtu x10, x0, LBB2_9
LBB2_8:
	add x10, x0, x0
	jalr x0, LBB2_15 ( x0 )
LBB2_9:                                 //  %if.end5.i
	addi x8, x8, 1
	slli x1, x8, 2
	add x1, x1, x10
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB2_11
LBB2_10:                                //  %if.then8.i
	lw x3, 0 ( x10 )
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB2_14 ( x0 )
LBB2_11:                                //  %if.else.i
	slti x11, x0, 1
	sll x1, x11, x8
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 2
	addi x12, x1, 20
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_calloc_r
	bgtu x10, x0, LBB2_13
LBB2_12:
	add x10, x0, x0
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_15 ( x0 )
LBB2_13:                                //  %if.end14.i
	sw x8, 4 ( x10 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 8 ( x10 )
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
LBB2_14:                                //  %if.end15.i
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB2_15:                                //  %_Bfree.exit
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x1, 16 ( x11 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x3, 12
	add x8, x0, x11
	addi x11, x8, 12
	slli x1, x1, 2
	addi x12, x1, 8
	call $memcpy
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x1, 4 ( x8 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x3, 76 ( x3 )
	slli x1, x1, 2
	add x1, x1, x3
	lw x3, 0 ( x1 )
	nop
	sw x3, 0 ( x8 )
	sw x8, 0 ( x1 )
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
LBB2_16:                                //  %if.end
	slli x1, x5, 2
	add x1, x1, x10
	addi x3, x5, 1
	sw x13, 20 ( x1 )
	sw x3, 16 ( x10 )
LBB2_17:                                //  %if.end18
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi14:
	.cfi_adjust_cfa_offset -56
$cfi15:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$__multadd, ($func_end2)-($__multadd)
	.cfi_endproc

	.globl	$__s2b
	.type	$__s2b,@function
$__s2b:                                 //  @__s2b
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi18:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi19:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	addi x8, x13, 8
	addi x11, x0, 9
	add x10, x0, x8
	call $__divsi3
	slti x1, x8, 18
	beqz x1, LBB3_2
LBB3_1:
	add x8, x0, x0
	jalr x0, LBB3_4 ( x0 )
LBB3_2:                                 //  %for.inc.preheader
	add x8, x0, x0
	slti x1, x0, 1
LBB3_3:                                 //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	slli x1, x1, 1
	addi x8, x8, 1
	bgt x10, x1, LBB3_3
LBB3_4:                                 //  %for.end
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 76 ( x5 )
	nop
	bgtu x10, x0, LBB3_8
LBB3_5:                                 //  %if.then.i
	addi x11, x0, 4
	addi x12, x0, 33
	add x10, x0, x5
	call $_calloc_r
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 76 ( x5 )
	bgtu x10, x0, LBB3_8
LBB3_6:
	add x1, x0, x0
LBB3_7:                                 //  %_Balloc.exit
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_14 ( x0 )
LBB3_8:                                 //  %if.end5.i
	slli x1, x8, 2
	add x3, x1, x10
	lw x1, 0 ( x3 )
	nop
	beqz x1, LBB3_10
LBB3_9:                                 //  %if.then8.i
	lw x4, 0 ( x1 )
	nop
	sw x4, 0 ( x3 )
	jalr x0, LBB3_13 ( x0 )
LBB3_10:                                //  %if.else.i
	slti x11, x0, 1
	sll x1, x11, x8
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	slli x1, x1, 2
	addi x12, x1, 20
	add x10, x0, x5
	call $_calloc_r
	add x1, x0, x10
	bgtu x1, x0, LBB3_12
LBB3_11:
	add x1, x0, x0
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_7 ( x0 )
LBB3_12:                                //  %if.end14.i
	sw x8, 4 ( x1 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
LBB3_13:                                //  %if.end15.i
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	sw x0, 16 ( x1 )
	sw x0, 12 ( x1 )
LBB3_14:                                //  %_Balloc.exit
	slti x3, x0, 1
	slti x4, x7, 10
	sw x9, 20 ( x1 )
	sw x3, 16 ( x1 )
	bgtu x4, x0, LBB3_18
LBB3_15:                                //  %if.then
	addi x4, x7, -9
	addi x3, x7, -1
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x3, 9
LBB3_16:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	lb x3, 0 ( x8 )
	add x10, x0, x5
	add x11, x0, x1
	addi x13, x3, -48
	addi x12, x0, 10
	call $__multadd
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	addi x4, x4, -1
	addi x8, x8, 1
	bgtu x4, x0, LBB3_16
LBB3_17:                                //  %do.end
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x3, x4, x3
	addi x7, x3, 2
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_19 ( x0 )
LBB3_18:                                //  %if.else
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x7, x3, 10
	addi x4, x0, 9
LBB3_19:                                //  %for.cond8.preheader
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	ble x3, x4, LBB3_22
LBB3_20:                                //  %for.body11.preheader
	sub x8, x3, x4
LBB3_21:                                //  %for.body11
                                        //  =>This Inner Loop Header: Depth=1
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	lb x3, 0 ( x7 )
	add x10, x0, x5
	add x11, x0, x1
	addi x13, x3, -48
	addi x12, x0, 10
	call $__multadd
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	addi x8, x8, -1
	addi x7, x7, 1
	bgtu x8, x0, LBB3_21
LBB3_22:                                //  %for.end18
	add x10, x0, x1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi21:
	.cfi_adjust_cfa_offset -40
$cfi22:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$__s2b, ($func_end3)-($__s2b)
	.cfi_endproc

	.globl	$__hi0bits
	.type	$__hi0bits,@function
$__hi0bits:                             //  @__hi0bits
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi23:
	.cfi_def_cfa 2, 0
$cfi24:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	bgeu x4, x3, LBB4_2
LBB4_1:
	add x10, x0, x0
	jalr x0, LBB4_3 ( x0 )
LBB4_2:                                 //  %entry
	addi x10, x0, 16
LBB4_3:                                 //  %entry
	bgtu x3, x4, LBB4_5
LBB4_4:                                 //  %entry
	slli x3, x3, 16
LBB4_5:                                 //  %entry
	lui x4, 16777215 >> 12 & 0xfffff
	ori x28, x0, 16777215 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x3, x4, LBB4_7
LBB4_6:                                 //  %entry
	ori x10, x10, 8
LBB4_7:                                 //  %entry
	bgtu x3, x4, LBB4_9
LBB4_8:                                 //  %entry
	slli x3, x3, 8
LBB4_9:                                 //  %entry
	lui x4, 268435455 >> 12 & 0xfffff
	ori x28, x0, 268435455 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x3, x4, LBB4_11
LBB4_10:                                //  %entry
	ori x10, x10, 4
LBB4_11:                                //  %entry
	bgtu x3, x4, LBB4_13
LBB4_12:                                //  %entry
	slli x3, x3, 4
LBB4_13:                                //  %entry
	lui x4, 1073741823 >> 12 & 0xfffff
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x3, x4, LBB4_15
LBB4_14:                                //  %entry
	ori x10, x10, 2
LBB4_15:                                //  %entry
	bgtu x3, x4, LBB4_17
LBB4_16:                                //  %entry
	slli x3, x3, 2
LBB4_17:                                //  %entry
	bgt x0, x3, LBB4_21
LBB4_18:                                //  %if.then20
	lui x4, 1073741824>>12 &0xfffff
	and x3, x4, x3
	bgtu x3, x0, LBB4_20
LBB4_19:
	addi x10, x0, 32
	ret
LBB4_20:
	addi x10, x10, 1
LBB4_21:                                //  %cleanup
	ret
$func_end4:
	.size	$__hi0bits, ($func_end4)-($__hi0bits)
	.cfi_endproc

	.globl	$__lo0bits
	.type	$__lo0bits,@function
$__lo0bits:                             //  @__lo0bits
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi25:
	.cfi_def_cfa 2, 0
$cfi26:
	.cfi_val_offset 2, 0
	lw x4, 0 ( x10 )
	nop
	andi x3, x4, 7
	beqz x3, LBB5_6
LBB5_1:                                 //  %if.then
	andi x3, x4, 1
	beqz x3, LBB5_3
LBB5_2:
	add x3, x0, x0
	add x10, x0, x3
	ret
LBB5_3:                                 //  %if.end
	andi x3, x4, 2
	beqz x3, LBB5_5
LBB5_4:                                 //  %if.then6
	srli x3, x4, 1
	sw x3, 0 ( x10 )
	slti x3, x0, 1
	add x10, x0, x3
	ret
LBB5_5:                                 //  %if.end7
	srli x3, x4, 2
	sw x3, 0 ( x10 )
	addi x3, x0, 2
	add x10, x0, x3
	ret
LBB5_6:                                 //  %if.end9
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x4
	add x5, x0, x0
	bne x3, x5, LBB5_8
LBB5_7:
	srli x4, x4, 16
LBB5_8:                                 //  %if.end9
	bne x3, x5, LBB5_10
LBB5_9:
	addi x3, x0, 16
	jalr x0, LBB5_11 ( x0 )
LBB5_10:                                //  %if.end9
	add x3, x0, x5
LBB5_11:                                //  %if.end9
	andi x7, x4, 255
	bne x7, x5, LBB5_13
LBB5_12:
	ori x3, x3, 8
LBB5_13:                                //  %if.end9
	bne x7, x5, LBB5_15
LBB5_14:
	srli x4, x4, 8
LBB5_15:                                //  %if.end9
	andi x7, x4, 15
	bne x7, x5, LBB5_17
LBB5_16:
	srli x4, x4, 4
LBB5_17:                                //  %if.end9
	bne x7, x5, LBB5_19
LBB5_18:
	ori x3, x3, 4
LBB5_19:                                //  %if.end9
	andi x7, x4, 3
	bne x7, x5, LBB5_21
LBB5_20:
	ori x3, x3, 2
LBB5_21:                                //  %if.end9
	bne x7, x5, LBB5_23
LBB5_22:
	srli x4, x4, 2
LBB5_23:                                //  %if.end9
	andi x5, x4, 1
	bgtu x5, x0, LBB5_27
LBB5_24:                                //  %if.then34
	srli x4, x4, 1
	bgtu x4, x0, LBB5_26
LBB5_25:
	addi x3, x0, 32
	add x10, x0, x3
	ret
LBB5_26:
	addi x3, x3, 1
LBB5_27:                                //  %if.end41
	sw x4, 0 ( x10 )
	add x10, x0, x3
	ret
$func_end5:
	.size	$__lo0bits, ($func_end5)-($__lo0bits)
	.cfi_endproc

	.globl	$__i2b
	.type	$__i2b,@function
$__i2b:                                 //  @__i2b
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi27:
	.cfi_def_cfa 2, 0
$cfi28:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi29:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi30:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 76 ( x8 )
	nop
	bgtu x1, x0, LBB6_3
LBB6_1:                                 //  %if.then.i
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	addi x12, x0, 33
	add x10, x0, x8
	call $_calloc_r
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	sw x1, 76 ( x8 )
	bgtu x1, x0, LBB6_3
LBB6_2:
	add x10, x0, x0
	jalr x0, LBB6_9 ( x0 )
LBB6_3:                                 //  %if.end5.i
	lw x10, 4 ( x1 )
	nop
	beqz x10, LBB6_5
LBB6_4:                                 //  %if.then8.i
	lw x3, 0 ( x10 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB6_8 ( x0 )
LBB6_5:                                 //  %if.else.i
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	addi x12, x0, 28
	add x10, x0, x8
	add x8, x0, x1
	add x11, x0, x8
	call $_calloc_r
	bgtu x10, x0, LBB6_7
LBB6_6:
	add x10, x0, x0
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB6_9 ( x0 )
LBB6_7:                                 //  %if.end14.i
	addi x1, x0, 2
	sw x8, 4 ( x10 )
	sw x1, 8 ( x10 )
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB6_8:                                 //  %if.end15.i
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB6_9:                                 //  %_Balloc.exit
	slti x1, x0, 1
	sw x11, 20 ( x10 )
	sw x1, 16 ( x10 )
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi31:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi32:
	.cfi_adjust_cfa_offset -24
$cfi33:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$__i2b, ($func_end6)-($__i2b)
	.cfi_endproc

	.globl	$__multiply
	.type	$__multiply,@function
$__multiply:                            //  @__multiply
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi34:
	.cfi_def_cfa 2, 0
$cfi35:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi36:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi37:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x10
	lw x1, 16 ( x12 )
	lw x3, 16 ( x11 )
	add x7, x0, x11
	bgt x1, x3, LBB7_2
LBB7_1:                                 //  %entry
	add x7, x0, x12
LBB7_2:                                 //  %entry
	bgt x1, x3, LBB7_4
LBB7_3:                                 //  %entry
	add x12, x0, x11
LBB7_4:                                 //  %entry
	lw x5, 16 ( x12 )
	lw x9, 16 ( x7 )
	nop
	add x8, x5, x9
	lw x1, 8 ( x12 )
	lw x3, 4 ( x12 )
	lw x10, 76 ( x4 )
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x0, LBB7_7
LBB7_5:                                 //  %if.then.i
	addi x11, x0, 4
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	addi x12, x0, 33
	add x10, x0, x4
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	sw x5, 60 ( x2 )                //  4-byte Folded Spill
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	call $_calloc_r
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	sw x10, 76 ( x4 )
	bgtu x10, x0, LBB7_7
LBB7_6:
	add x10, x0, x0
	jalr x0, LBB7_13 ( x0 )
LBB7_7:                                 //  %if.end5.i
	slt x1, x1, x8
	andi x1, x1, 1
	add x13, x3, x1
	slli x1, x13, 2
	add x1, x1, x10
	lw x3, 0 ( x1 )
	nop
	beqz x3, LBB7_9
LBB7_8:                                 //  %if.then8.i
	add x4, x0, x3
	lw x3, 0 ( x4 )
	nop
	sw x3, 0 ( x1 )
	add x10, x0, x4
	jalr x0, LBB7_12 ( x0 )
LBB7_9:                                 //  %if.else.i
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	sw x5, 60 ( x2 )                //  4-byte Folded Spill
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	slti x11, x0, 1
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	sll x1, x11, x13
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 2
	addi x12, x1, 20
	add x10, x0, x4
	call $_calloc_r
	bgtu x10, x0, LBB7_11
LBB7_10:
	add x10, x0, x0
	add x12, x0, x8
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB7_13 ( x0 )
LBB7_11:                                //  %if.end14.i
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x10 )
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 8 ( x10 )
	add x12, x0, x8
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
LBB7_12:                                //  %if.end15.i
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB7_13:                                //  %_Balloc.exit
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x4, x10, 20
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x1, 2
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	ble x1, x0, LBB7_16
LBB7_14:                                //  %for.body.preheader
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x1, x1, x4
	add x3, x0, x4
LBB7_15:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x3 )
	addi x3, x3, 4
	bgtu x1, x3, LBB7_15
LBB7_16:                                //  %for.end
	ble x9, x0, LBB7_27
LBB7_17:                                //  %for.body18.preheader
	slli x1, x9, 2
	add x1, x1, x7
	addi x1, x1, 20
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	slli x1, x5, 2
	addi x3, x12, 20
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x3
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	addi x5, x12, 20
	addi x7, x7, 20
	lui x3, 65535 >> 12 & 0xfffff
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
LBB7_18:                                //  %for.body18
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB7_20 Depth 2
                                        //      Child Loop BB7_24 Depth 2
	lw x1, 0 ( x7 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x1
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB7_22
LBB7_19:                                //  %do.body.preheader
                                        //    in Loop: Header=BB7_18 Depth=1
	add x1, x0, x0
	add x8, x0, x1
	add x7, x0, x1
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
LBB7_20:                                //  %do.body
                                        //    Parent Loop BB7_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x8, x5
	lw x3, 0 ( x1 )
	nop
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x1, x8, x4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x1 )
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	srli x10, x3, 16
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 16
	add x1, x1, x10
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x1, x3
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x7, x1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	add x1, x10, x1
	srli x3, x1, 16
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	and x1, x7, x1
	slli x4, x3, 16
	or x1, x1, x4
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x7 )
	addi x8, x8, 4
	add x1, x8, x5
	srli x7, x3, 16
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB7_20
LBB7_21:                                //  %do.end
                                        //    in Loop: Header=BB7_18 Depth=1
	add x1, x8, x4
	sw x7, 0 ( x1 )
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x7 )
	nop
LBB7_22:                                //  %if.end35
                                        //    in Loop: Header=BB7_18 Depth=1
	srli x3, x1, 16
	beqz x3, LBB7_26
LBB7_23:                                //  %if.then38
                                        //    in Loop: Header=BB7_18 Depth=1
	lw x7, 0 ( x4 )
	add x1, x0, x0
	add x9, x0, x1
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x7
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB7_24:                                //  %do.body39
                                        //    Parent Loop BB7_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	lhu x10, 0 ( x5 )
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x7
	call $__mulsi3
	srli x1, x8, 16
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	add x4, x10, x1
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	slli x3, x4, 16
	or x1, x1, x3
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x10, 2 ( x1 )
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	lw x7, 4 ( x8 )
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x7
	add x1, x1, x10
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	srli x3, x3, 16
	add x4, x3, x1
	addi x8, x8, 4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	srli x9, x4, 16
	addi x5, x5, 4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x5, LBB7_24
LBB7_25:                                //  %do.end59
                                        //    in Loop: Header=BB7_18 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x1 )
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
LBB7_26:                                //  %for.inc61
                                        //    in Loop: Header=BB7_18 Depth=1
	addi x4, x4, 4
	addi x7, x7, 4
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lui x3, 65535 >> 12 & 0xfffff
	bgtu x1, x7, LBB7_18
LBB7_27:                                //  %for.cond68.preheader
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	ble x5, x0, LBB7_32
LBB7_28:                                //  %land.rhs.preheader
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x1, x1, 16
	slti x3, x0, 1
LBB7_29:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x0, x5
	lw x5, 0 ( x1 )
	nop
	beqz x5, LBB7_31
LBB7_30:
	add x5, x0, x4
	jalr x0, LBB7_32 ( x0 )
LBB7_31:                                //  %for.inc72
                                        //    in Loop: Header=BB7_29 Depth=1
	addi x1, x1, -4
	addi x5, x4, -1
	bgt x4, x3, LBB7_29
LBB7_32:                                //  %for.end73
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 16 ( x10 )
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi38:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi39:
	.cfi_adjust_cfa_offset -80
$cfi40:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$__multiply, ($func_end7)-($__multiply)
	.cfi_endproc

	.globl	$__pow5mult
	.type	$__pow5mult,@function
$__pow5mult:                            //  @__pow5mult
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi41:
	.cfi_def_cfa 2, 0
$cfi42:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi43:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi44:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	andi x1, x8, 3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB8_2
LBB8_1:
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB8_3 ( x0 )
LBB8_2:                                 //  %if.then
	ori x28, x0, $__pow5mult.p05-4 & 0xfff
	slli x28, x28, 20
	lui x3, $__pow5mult.p05-4 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x1, x1, 2
	or x3, x3, x28
	add x1, x3, x1
	lw x12, 0 ( x1 )
	add x13, x0, x0
	call $__multadd
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
LBB8_3:                                 //  %if.end
	srai x4, x8, 2
	beqz x4, LBB8_23
LBB8_4:                                 //  %if.end2
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 72 ( x1 )
	nop
	bgtu x10, x0, LBB8_16
LBB8_5:                                 //  %if.then4
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 76 ( x1 )
	nop
	bgtu x1, x0, LBB8_8
LBB8_6:                                 //  %if.then.i.i
	addi x11, x0, 4
	addi x12, x0, 33
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	call $_calloc_r
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	sw x1, 76 ( x8 )
	bgtu x1, x0, LBB8_8
LBB8_7:
	add x10, x0, x0
	jalr x0, LBB8_14 ( x0 )
LBB8_8:                                 //  %if.end5.i.i
	lw x10, 4 ( x1 )
	nop
	beqz x10, LBB8_10
LBB8_9:                                 //  %if.then8.i.i
	lw x3, 0 ( x10 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB8_13 ( x0 )
LBB8_10:                                //  %if.else.i.i
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	slti x11, x0, 1
	addi x12, x0, 28
	call $_calloc_r
	bgtu x10, x0, LBB8_12
LBB8_11:
	add x10, x0, x0
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB8_14 ( x0 )
LBB8_12:                                //  %if.end14.i.i
	addi x1, x0, 2
	slti x3, x0, 1
	sw x3, 4 ( x10 )
	sw x1, 8 ( x10 )
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
LBB8_13:                                //  %if.end15.i.i
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB8_14:                                //  %__i2b.exit
	addi x1, x0, 625
	slti x3, x0, 1
	sw x1, 20 ( x10 )
	sw x3, 16 ( x10 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 72 ( x1 )
LBB8_15:                                //  %for.cond
	sw x0, 0 ( x10 )
LBB8_16:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x0, x10
	andi x1, x4, 1
	beqz x1, LBB8_20
LBB8_17:                                //  %if.then10
                                        //    in Loop: Header=BB8_16 Depth=1
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	add x12, x0, x3
	call $__multiply
	beqz x8, LBB8_19
LBB8_18:                                //  %if.then.i
                                        //    in Loop: Header=BB8_16 Depth=1
	lw x1, 4 ( x8 )
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 76 ( x4 )
	slli x1, x1, 2
	add x1, x1, x3
	lw x3, 0 ( x1 )
	nop
	sw x3, 0 ( x8 )
	sw x8, 0 ( x1 )
LBB8_19:                                //  %if.end12
                                        //    in Loop: Header=BB8_16 Depth=1
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
LBB8_20:                                //  %if.end12
                                        //    in Loop: Header=BB8_16 Depth=1
	srai x4, x4, 1
	beqz x4, LBB8_23
LBB8_21:                                //  %if.end16
                                        //    in Loop: Header=BB8_16 Depth=1
	lw x10, 0 ( x3 )
	nop
	bgtu x10, x0, LBB8_16
LBB8_22:                                //  %if.then19
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x3
	add x8, x0, x3
	add x12, x0, x8
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	call $__multiply
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	sw x10, 0 ( x8 )
	jalr x0, LBB8_15 ( x0 )
LBB8_23:
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi45:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi46:
	.cfi_adjust_cfa_offset -32
$cfi47:
	.cfi_def_cfa 2, 0
	ret
$func_end8:
	.size	$__pow5mult, ($func_end8)-($__pow5mult)
	.cfi_endproc

	.globl	$__lshift
	.type	$__lshift,@function
$__lshift:                              //  @__lshift
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi48:
	.cfi_def_cfa 2, 0
$cfi49:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi50:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi51:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x15, x0, x11
	add x16, x0, x10
	lw x3, 16 ( x15 )
	lw x1, 8 ( x15 )
	srai x4, x12, 5
	lw x8, 4 ( x15 )
	add x17, x4, x3
	bgt x1, x17, LBB9_2
LBB9_1:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x1, x1, 1
	addi x8, x8, 1
	ble x1, x17, LBB9_1
LBB9_2:                                 //  %for.end
	lw x10, 76 ( x16 )
	nop
	bgtu x10, x0, LBB9_5
LBB9_3:                                 //  %if.then.i
	addi x11, x0, 4
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	addi x12, x0, 33
	add x10, x0, x16
	sw x15, 24 ( x2 )               //  4-byte Folded Spill
	sw x16, 20 ( x2 )               //  4-byte Folded Spill
	sw x17, 16 ( x2 )               //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	call $_calloc_r
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x17, 16 ( x2 )               //  4-byte Folded Reload
	lw x16, 20 ( x2 )               //  4-byte Folded Reload
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	sw x10, 76 ( x16 )
	bgtu x10, x0, LBB9_5
LBB9_4:
	add x10, x0, x0
	jalr x0, LBB9_11 ( x0 )
LBB9_5:                                 //  %if.end5.i
	slli x1, x8, 2
	add x1, x1, x10
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB9_7
LBB9_6:                                 //  %if.then8.i
	lw x3, 0 ( x10 )
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB9_10 ( x0 )
LBB9_7:                                 //  %if.else.i
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x17, 16 ( x2 )               //  4-byte Folded Spill
	sw x15, 24 ( x2 )               //  4-byte Folded Spill
	slti x11, x0, 1
	sll x1, x11, x8
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	slli x1, x1, 2
	addi x12, x1, 20
	sw x16, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x16
	call $_calloc_r
	bgtu x10, x0, LBB9_9
LBB9_8:
	add x10, x0, x0
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	lw x16, 20 ( x2 )               //  4-byte Folded Reload
	lw x17, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB9_11 ( x0 )
LBB9_9:                                 //  %if.end14.i
	sw x8, 4 ( x10 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 8 ( x10 )
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	lw x16, 20 ( x2 )               //  4-byte Folded Reload
	lw x17, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
LBB9_10:                                //  %if.end15.i
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB9_11:                                //  %_Balloc.exit
	addi x3, x10, 20
	bgt x4, x0, LBB9_13
LBB9_12:
	add x1, x0, x3
	jalr x0, LBB9_15 ( x0 )
LBB9_13:                                //  %for.body4.preheader
	slli x1, x4, 2
	add x1, x1, x10
	addi x1, x1, 20
LBB9_14:                                //  %for.body4
                                        //  =>This Inner Loop Header: Depth=1
	addi x4, x4, -1
	sw x0, 0 ( x3 )
	addi x3, x3, 4
	bgtu x4, x0, LBB9_14
LBB9_15:                                //  %for.end7
	lw x5, 16 ( x15 )
	addi x4, x15, 20
	andi x7, x12, 31
	addi x3, x17, 1
	slli x5, x5, 2
	add x5, x5, x4
	beqz x7, LBB9_21
LBB9_16:                                //  %if.then
	addi x9, x0, 32
	sub x11, x9, x7
	add x9, x0, x0
LBB9_17:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 0 ( x4 )
	addi x14, x4, 4
	addi x12, x1, 4
	sll x13, x13, x7
	or x9, x9, x13
	sw x9, 0 ( x1 )
	lw x1, 0 ( x4 )
	nop
	srl x9, x1, x11
	add x4, x0, x14
	add x1, x0, x12
	bgtu x5, x14, LBB9_17
LBB9_18:                                //  %do.end
	add x1, x0, x0
	beq x9, x1, LBB9_20
LBB9_19:                                //  %do.end
	addi x3, x17, 2
LBB9_20:                                //  %do.end
	sw x9, 0 ( x12 )
	jalr x0, LBB9_22 ( x0 )
LBB9_21:                                //  %do.body19
                                        //  =>This Inner Loop Header: Depth=1
	lw x7, 0 ( x4 )
	nop
	sw x7, 0 ( x1 )
	addi x1, x1, 4
	addi x4, x4, 4
	bgtu x5, x4, LBB9_21
LBB9_22:                                //  %if.end25
	addi x1, x3, -1
	sw x1, 16 ( x10 )
	beqz x15, LBB9_24
LBB9_23:                                //  %if.then.i69
	lw x1, 4 ( x15 )
	lw x3, 76 ( x16 )
	slli x1, x1, 2
	add x1, x1, x3
	lw x3, 0 ( x1 )
	nop
	sw x3, 0 ( x15 )
	sw x15, 0 ( x1 )
LBB9_24:                                //  %_Bfree.exit
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi52:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi53:
	.cfi_adjust_cfa_offset -40
$cfi54:
	.cfi_def_cfa 2, 0
	ret
$func_end9:
	.size	$__lshift, ($func_end9)-($__lshift)
	.cfi_endproc

	.globl	$__mcmp
	.type	$__mcmp,@function
$__mcmp:                                //  @__mcmp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi55:
	.cfi_def_cfa 2, 0
$cfi56:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	lw x4, 16 ( x11 )
	lw x5, 16 ( x3 )
	nop
	sub x10, x5, x4
	bgtu x10, x0, LBB10_7
LBB10_1:                                //  %if.end
	slli x5, x4, 2
	add x4, x5, x11
	addi x3, x3, 20
	addi x4, x4, 16
	add x5, x5, x3
	add x10, x0, x0
LBB10_2:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x7, 0 ( x4 )
	lw x9, -4 ( x5 )
	nop
	beq x9, x7, LBB10_6
LBB10_3:                                //  %if.then6
	bgeu x9, x7, LBB10_5
LBB10_4:
	not x10, x0
	ret
LBB10_5:                                //  %if.then6
	slti x10, x0, 1
	ret
LBB10_6:                                //  %if.end8
                                        //    in Loop: Header=BB10_2 Depth=1
	addi x5, x5, -4
	addi x4, x4, -4
	bgtu x5, x3, LBB10_2
LBB10_7:                                //  %cleanup
	ret
$func_end10:
	.size	$__mcmp, ($func_end10)-($__mcmp)
	.cfi_endproc

	.globl	$__mdiff
	.type	$__mdiff,@function
$__mdiff:                               //  @__mdiff
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi57:
	.cfi_def_cfa 2, 0
$cfi58:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi59:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi60:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x16, x0, x12
	add x9, x0, x10
	lw x1, 16 ( x16 )
	lw x3, 16 ( x11 )
	nop
	sub x3, x3, x1
	bgtu x3, x0, LBB11_6
LBB11_1:                                //  %if.end.i
	slli x4, x1, 2
	add x3, x4, x16
	addi x1, x11, 20
	addi x3, x3, 16
	add x4, x4, x1
LBB11_2:                                //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x3 )
	lw x7, -4 ( x4 )
	nop
	beq x7, x5, LBB11_14
LBB11_3:                                //  %if.then6.i
	bgeu x7, x5, LBB11_5
LBB11_4:
	not x3, x0
	jalr x0, LBB11_6 ( x0 )
LBB11_5:                                //  %if.then6.i
	slti x3, x0, 1
LBB11_6:                                //  %if.end
	add x8, x0, x0
	add x4, x0, x11
	bgt x8, x3, LBB11_8
LBB11_7:                                //  %if.end
	add x4, x0, x16
LBB11_8:                                //  %if.end
	bgt x8, x3, LBB11_10
LBB11_9:                                //  %if.end
	add x16, x0, x11
LBB11_10:                               //  %if.end
	lw x5, 4 ( x16 )
	lw x10, 76 ( x9 )
	nop
	bgtu x10, x0, LBB11_12
LBB11_11:                               //  %if.then.i
	addi x11, x0, 4
	addi x12, x0, 33
	add x10, x0, x9
	sw x16, 24 ( x2 )               //  4-byte Folded Spill
	sw x9, 12 ( x2 )                //  4-byte Folded Spill
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	call $_calloc_r
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
	lw x16, 24 ( x2 )               //  4-byte Folded Reload
	sw x10, 76 ( x9 )
LBB11_12:                               //  %if.end5.i
	slt x7, x3, x0
	slli x1, x5, 2
	add x1, x1, x10
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB11_21
LBB11_13:                               //  %if.then8.i
	lw x3, 0 ( x10 )
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB11_22 ( x0 )
LBB11_14:                               //  %if.end8.i
                                        //    in Loop: Header=BB11_2 Depth=1
	addi x4, x4, -4
	addi x3, x3, -4
	bgtu x4, x1, LBB11_2
LBB11_15:                               //  %if.then
	lw x1, 76 ( x9 )
	nop
	bgtu x1, x0, LBB11_17
LBB11_16:                               //  %if.then.i110
	addi x11, x0, 4
	addi x12, x0, 33
	add x10, x0, x9
	add x8, x0, x9
	call $_calloc_r
	add x9, x0, x8
	add x1, x0, x10
	sw x1, 76 ( x9 )
LBB11_17:                               //  %if.end5.i112
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB11_19
LBB11_18:                               //  %if.then8.i113
	lw x3, 0 ( x10 )
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB11_20 ( x0 )
LBB11_19:                               //  %if.else.i116
	slti x8, x0, 1
	addi x12, x0, 24
	add x10, x0, x9
	add x11, x0, x8
	call $_calloc_r
	sw x0, 4 ( x10 )
	sw x8, 8 ( x10 )
LBB11_20:                               //  %if.end15.i123
	slti x1, x0, 1
	sw x0, 12 ( x10 )
	sw x1, 16 ( x10 )
	sw x0, 20 ( x10 )
	jalr x0, LBB11_32 ( x0 )
LBB11_21:                               //  %if.else.i
	slti x11, x0, 1
	sll x1, x11, x5
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	slli x1, x1, 2
	addi x12, x1, 20
	add x10, x0, x9
	sw x16, 24 ( x2 )               //  4-byte Folded Spill
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	call $_calloc_r
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x16, 24 ( x2 )               //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x10 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 8 ( x10 )
LBB11_22:                               //  %if.end15.i
	sw x0, 16 ( x10 )
	sw x7, 12 ( x10 )
	lw x1, 16 ( x16 )
	nop
	slli x3, x1, 2
	add x3, x3, x16
	addi x7, x10, 20
	addi x9, x4, 20
	lw x4, 16 ( x4 )
	nop
	slli x4, x4, 2
	add x11, x4, x9
	addi x3, x3, 20
	lui x4, 65535 >> 12 & 0xfffff
	add x5, x0, x8
LBB11_23:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x8, x16
	lw x12, 20 ( x12 )
	add x13, x8, x9
	lw x13, 0 ( x13 )
	nop
	srli x14, x13, 16
	srli x15, x12, 16
	sub x14, x15, x14
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x15, x4, x28
	and x13, x15, x13
	and x12, x15, x12
	sub x12, x12, x13
	add x5, x5, x12
	srai x12, x5, 16
	add x12, x14, x12
	and x5, x15, x5
	slli x13, x12, 16
	or x5, x5, x13
	add x13, x8, x7
	sw x5, 0 ( x13 )
	addi x8, x8, 4
	add x13, x8, x9
	srai x5, x12, 16
	bgtu x11, x13, LBB11_23
LBB11_24:                               //  %while.cond.preheader
	add x9, x8, x16
	add x7, x8, x10
	addi x11, x9, 20
	bgtu x3, x11, LBB11_26
LBB11_25:
	addi x3, x7, 20
	jalr x0, LBB11_29 ( x0 )
LBB11_26:                               //  %while.body.preheader
	add x11, x0, x0
	addi x12, x7, 20
LBB11_27:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x11, x9
	lw x14, 20 ( x13 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x15, x4, x28
	and x16, x15, x14
	add x16, x5, x16
	srai x16, x16, 16
	srli x17, x14, 16
	add x16, x17, x16
	add x5, x5, x14
	and x5, x15, x5
	slli x14, x16, 16
	or x5, x5, x14
	add x14, x11, x12
	sw x5, 0 ( x14 )
	addi x11, x11, 4
	srai x5, x16, 16
	addi x13, x13, 24
	bgtu x3, x13, LBB11_27
LBB11_28:                               //  %while.cond35.preheader.loopexit
	add x3, x11, x7
	addi x3, x3, 20
LBB11_29:                               //  %while.cond35.preheader
	addi x3, x3, -4
	addi x1, x1, 1
LBB11_30:                               //  %while.cond35
                                        //  =>This Inner Loop Header: Depth=1
	addi x4, x3, -4
	addi x1, x1, -1
	lw x5, 0 ( x3 )
	add x3, x0, x4
	beqz x5, LBB11_30
LBB11_31:                               //  %while.end39
	sw x1, 16 ( x10 )
LBB11_32:                               //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi61:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi62:
	.cfi_adjust_cfa_offset -40
$cfi63:
	.cfi_def_cfa 2, 0
	ret
$func_end11:
	.size	$__mdiff, ($func_end11)-($__mdiff)
	.cfi_endproc

	.globl	$__ulp
	.type	$__ulp,@function
$__ulp:                                 //  @__ulp
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi64:
	.cfi_def_cfa 2, 0
$cfi65:
	.cfi_val_offset 2, 0
	ori x28, x0, 54525953 & 0xfff
	slli x28, x28, 20
	lui x3, 2146435072>>12 &0xfffff
	lui x5, 54525953 >> 12 & 0xfffff
	srli x28, x28, 20
	and x4, x3, x11
	or x3, x5, x28
	bgtu x3, x4, LBB12_2
LBB12_1:                                //  %if.then
	ori x28, x0, -54525952 & 0xfff
	slli x28, x28, 20
	lui x3, -54525952 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x3, x28
	add x3, x0, x0
	add x4, x5, x4
	add x5, x0, x3
	jalr x0, LBB12_8 ( x0 )
LBB12_2:                                //  %if.else
	ori x28, x0, 20971519 & 0xfff
	slli x28, x28, 20
	lui x3, 54525952>>12 &0xfffff
	lui x5, 20971519 >> 12 & 0xfffff
	srli x28, x28, 20
	sub x3, x3, x4
	or x5, x5, x28
	srai x4, x3, 20
	bgt x3, x5, LBB12_4
LBB12_3:                                //  %if.then7
	lui x5, 524288>>12 
	add x3, x0, x0
	srl x4, x5, x4
	add x5, x0, x3
	jalr x0, LBB12_8 ( x0 )
LBB12_4:                                //  %if.else13
	addi x3, x4, -20
	addi x5, x0, 30
	ble x3, x5, LBB12_6
LBB12_5:
	add x3, x0, x0
	slti x5, x0, 1
	jalr x0, LBB12_7 ( x0 )
LBB12_6:                                //  %cond.false
	addi x3, x0, 51
	sub x4, x3, x4
	slti x5, x0, 1
	add x3, x0, x0
	sll x5, x5, x4
LBB12_7:                                //  %if.end21
	add x4, x0, x3
LBB12_8:                                //  %if.end21
	or x10, x3, x5
	or x11, x4, x3
	ret
$func_end12:
	.size	$__ulp, ($func_end12)-($__ulp)
	.cfi_endproc

	.globl	$__b2d
	.type	$__b2d,@function
$__b2d:                                 //  @__b2d
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi66:
	.cfi_def_cfa 2, 0
$cfi67:
	.cfi_val_offset 2, 0
	lw x3, 16 ( x10 )
	addi x4, x10, 20
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	slli x3, x3, 2
	add x7, x3, x4
	lw x3, -4 ( x7 )
	lui x5, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x5, x28
	bgeu x10, x3, LBB13_2
LBB13_1:
	add x5, x0, x0
	jalr x0, LBB13_3 ( x0 )
LBB13_2:                                //  %entry
	addi x5, x0, 16
LBB13_3:                                //  %entry
	add x9, x0, x3
	bgtu x3, x10, LBB13_5
LBB13_4:                                //  %entry
	slli x9, x3, 16
LBB13_5:                                //  %entry
	lui x10, 16777215 >> 12 & 0xfffff
	ori x28, x0, 16777215 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x10, x28
	bgtu x9, x10, LBB13_7
LBB13_6:                                //  %entry
	ori x5, x5, 8
LBB13_7:                                //  %entry
	bgtu x9, x10, LBB13_9
LBB13_8:                                //  %entry
	slli x9, x9, 8
LBB13_9:                                //  %entry
	lui x10, 268435455 >> 12 & 0xfffff
	ori x28, x0, 268435455 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x10, x28
	bgtu x9, x10, LBB13_11
LBB13_10:                               //  %entry
	ori x5, x5, 4
LBB13_11:                               //  %entry
	bgtu x9, x10, LBB13_13
LBB13_12:                               //  %entry
	slli x9, x9, 4
LBB13_13:                               //  %entry
	lui x10, 1073741823 >> 12 & 0xfffff
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x10, x28
	bgtu x9, x10, LBB13_15
LBB13_14:                               //  %entry
	ori x5, x5, 2
LBB13_15:                               //  %entry
	bgtu x9, x10, LBB13_17
LBB13_16:                               //  %entry
	slli x9, x9, 2
LBB13_17:                               //  %entry
	addi x12, x7, -4
	bgt x0, x9, LBB13_20
LBB13_18:                               //  %if.then20.i
	lui x10, 1073741824>>12 &0xfffff
	and x9, x10, x9
	beqz x9, LBB13_25
LBB13_19:
	addi x5, x5, 1
LBB13_20:                               //  %__hi0bits.exit
	addi x9, x0, 32
	sub x9, x9, x5
	sw x9, 0 ( x11 )
	addi x9, x0, 10
	bgt x5, x9, LBB13_26
LBB13_21:                               //  %if.then
	addi x9, x0, 11
	sub x9, x9, x5
	bgtu x12, x4, LBB13_23
LBB13_22:
	add x7, x0, x0
	jalr x0, LBB13_24 ( x0 )
LBB13_23:                               //  %cond.true
	lw x7, -8 ( x7 )
LBB13_24:                               //  %cond.end
	srl x4, x3, x9
	addi x5, x5, 21
	sll x3, x3, x5
	srl x5, x7, x9
	or x10, x3, x5
	jalr x0, LBB13_35 ( x0 )
LBB13_25:                               //  %__hi0bits.exit.thread
	sw x0, 0 ( x11 )
	addi x5, x0, 32
LBB13_26:                               //  %if.end
	bgtu x12, x4, LBB13_28
LBB13_27:
	add x10, x0, x0
	jalr x0, LBB13_29 ( x0 )
LBB13_28:                               //  %cond.true10
	addi x12, x7, -8
	lw x10, -8 ( x7 )
LBB13_29:                               //  %cond.end13
	addi x7, x5, -11
	bgtu x7, x0, LBB13_31
LBB13_30:
	add x4, x0, x3
	jalr x0, LBB13_35 ( x0 )
LBB13_31:                               //  %if.then16
	sll x9, x3, x7
	addi x3, x0, 43
	sub x3, x3, x5
	srl x5, x10, x3
	bgtu x12, x4, LBB13_33
LBB13_32:
	add x11, x0, x0
	jalr x0, LBB13_34 ( x0 )
LBB13_33:                               //  %cond.true25
	lw x11, -4 ( x12 )
LBB13_34:                               //  %cond.end28
	or x4, x9, x5
	sll x5, x10, x7
	srl x3, x11, x3
	or x10, x5, x3
LBB13_35:                               //  %ret_d
	lui x3, 1072693248>>12 &0xfffff
	or x11, x3, x4
	ret
$func_end13:
	.size	$__b2d, ($func_end13)-($__b2d)
	.cfi_endproc

	.globl	$__d2b
	.type	$__d2b,@function
$__d2b:                                 //  @__d2b
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi68:
	.cfi_def_cfa 2, 0
$cfi69:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi70:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi71:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	add x5, x0, x12
	add x12, x0, x11
	lw x1, 76 ( x8 )
	nop
	bgtu x1, x0, LBB14_3
LBB14_1:                                //  %if.then.i
	addi x11, x0, 4
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	addi x12, x0, 33
	add x10, x0, x8
	sw x14, 16 ( x2 )               //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x5, 4 ( x2 )                 //  4-byte Folded Spill
	call $_calloc_r
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	lw x14, 16 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x10
	sw x1, 76 ( x8 )
	bgtu x1, x0, LBB14_3
LBB14_2:
	add x10, x0, x0
	jalr x0, LBB14_9 ( x0 )
LBB14_3:                                //  %if.end5.i
	lw x10, 4 ( x1 )
	nop
	beqz x10, LBB14_5
LBB14_4:                                //  %if.then8.i
	lw x3, 0 ( x10 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB14_8 ( x0 )
LBB14_5:                                //  %if.else.i
	sw x5, 4 ( x2 )                 //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x14, 16 ( x2 )               //  4-byte Folded Spill
	slti x1, x0, 1
	addi x12, x0, 28
	add x10, x0, x8
	add x8, x0, x1
	add x11, x0, x8
	call $_calloc_r
	bgtu x10, x0, LBB14_7
LBB14_6:
	add x10, x0, x0
	lw x14, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB14_9 ( x0 )
LBB14_7:                                //  %if.end14.i
	addi x1, x0, 2
	sw x8, 4 ( x10 )
	sw x1, 8 ( x10 )
	lw x14, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
LBB14_8:                                //  %if.end15.i
	sw x0, 16 ( x10 )
	sw x0, 12 ( x10 )
LBB14_9:                                //  %_Balloc.exit
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x1, x5, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	andi x1, x1, 2047
	add x4, x0, x0
	and x3, x3, x5
	beq x1, x4, LBB14_11
LBB14_10:
	lui x5, 1048576>>12 &0xfffff
	or x3, x5, x3
LBB14_11:                               //  %_Balloc.exit
	beqz x12, LBB14_46
LBB14_12:                               //  %if.then11
	andi x5, x12, 7
	beqz x5, LBB14_17
LBB14_13:                               //  %if.then.i80
	andi x5, x12, 1
	bgtu x5, x0, LBB14_41
LBB14_14:                               //  %if.end.i
	andi x5, x12, 2
	beqz x5, LBB14_16
LBB14_15:                               //  %if.then6.i
	slti x5, x0, 1
	srli x12, x12, 1
	jalr x0, LBB14_40 ( x0 )
LBB14_16:                               //  %if.end7.i
	addi x5, x0, 2
	srli x12, x12, 2
	jalr x0, LBB14_40 ( x0 )
LBB14_17:                               //  %if.end9.i
	lui x5, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	and x5, x5, x12
	add x9, x0, x0
	bne x5, x9, LBB14_19
LBB14_18:
	srli x7, x12, 16
	jalr x0, LBB14_20 ( x0 )
LBB14_19:                               //  %if.end9.i
	add x7, x0, x12
LBB14_20:                               //  %if.end9.i
	bne x5, x9, LBB14_22
LBB14_21:
	addi x5, x0, 16
	jalr x0, LBB14_23 ( x0 )
LBB14_22:                               //  %if.end9.i
	add x5, x0, x9
LBB14_23:                               //  %if.end9.i
	andi x11, x7, 255
	bne x11, x9, LBB14_25
LBB14_24:
	ori x5, x5, 8
LBB14_25:                               //  %if.end9.i
	bne x11, x9, LBB14_27
LBB14_26:
	srli x7, x7, 8
LBB14_27:                               //  %if.end9.i
	andi x11, x7, 15
	bne x11, x9, LBB14_29
LBB14_28:
	srli x7, x7, 4
LBB14_29:                               //  %if.end9.i
	bne x11, x9, LBB14_31
LBB14_30:
	ori x5, x5, 4
LBB14_31:                               //  %if.end9.i
	andi x11, x7, 3
	bne x11, x9, LBB14_33
LBB14_32:
	ori x5, x5, 2
LBB14_33:                               //  %if.end9.i
	bne x11, x9, LBB14_35
LBB14_34:
	srli x7, x7, 2
LBB14_35:                               //  %if.end9.i
	andi x9, x7, 1
	bgtu x9, x0, LBB14_39
LBB14_36:                               //  %if.then34.i
	srli x7, x7, 1
	bgtu x7, x0, LBB14_38
LBB14_37:
	addi x5, x0, 32
	jalr x0, LBB14_40 ( x0 )
LBB14_38:
	addi x5, x5, 1
LBB14_39:                               //  %__lo0bits.exit
	add x12, x0, x7
	beqz x5, LBB14_41
LBB14_40:                               //  %if.then16
	addi x7, x0, 32
	sub x7, x7, x5
	sll x7, x3, x7
	or x7, x12, x7
	sw x7, 20 ( x10 )
	srl x3, x3, x5
	jalr x0, LBB14_42 ( x0 )
LBB14_41:                               //  %if.else
	sw x12, 20 ( x10 )
	add x5, x0, x4
LBB14_42:                               //  %if.end21
	beq x3, x4, LBB14_44
LBB14_43:
	addi x4, x0, 2
	jalr x0, LBB14_45 ( x0 )
LBB14_44:                               //  %if.end21
	slti x4, x0, 1
LBB14_45:                               //  %if.end21
	sw x3, 24 ( x10 )
	sw x4, 16 ( x10 )
	jalr x0, LBB14_76 ( x0 )
LBB14_46:                               //  %if.else24
	andi x4, x3, 7
	beqz x4, LBB14_52
LBB14_47:                               //  %if.then.i86
	andi x4, x3, 1
	beqz x4, LBB14_49
LBB14_48:
	add x5, x0, x0
	jalr x0, LBB14_75 ( x0 )
LBB14_49:                               //  %if.end.i89
	andi x4, x3, 2
	beqz x4, LBB14_51
LBB14_50:                               //  %if.then6.i91
	slti x5, x0, 1
	srli x3, x3, 1
	jalr x0, LBB14_75 ( x0 )
LBB14_51:                               //  %if.end7.i93
	addi x5, x0, 2
	srli x3, x3, 2
	jalr x0, LBB14_75 ( x0 )
LBB14_52:                               //  %if.end9.i119
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	and x5, x4, x3
	add x7, x0, x0
	bne x5, x7, LBB14_54
LBB14_53:
	srli x4, x3, 16
	jalr x0, LBB14_55 ( x0 )
LBB14_54:                               //  %if.end9.i119
	add x4, x0, x3
LBB14_55:                               //  %if.end9.i119
	bne x5, x7, LBB14_57
LBB14_56:
	addi x5, x0, 16
	jalr x0, LBB14_58 ( x0 )
LBB14_57:                               //  %if.end9.i119
	add x5, x0, x7
LBB14_58:                               //  %if.end9.i119
	andi x9, x4, 255
	bne x9, x7, LBB14_60
LBB14_59:
	ori x5, x5, 8
LBB14_60:                               //  %if.end9.i119
	bne x9, x7, LBB14_62
LBB14_61:
	srli x4, x4, 8
LBB14_62:                               //  %if.end9.i119
	andi x9, x4, 15
	bne x9, x7, LBB14_64
LBB14_63:
	srli x4, x4, 4
LBB14_64:                               //  %if.end9.i119
	bne x9, x7, LBB14_66
LBB14_65:
	ori x5, x5, 4
LBB14_66:                               //  %if.end9.i119
	andi x9, x4, 3
	bne x9, x7, LBB14_68
LBB14_67:
	ori x5, x5, 2
LBB14_68:                               //  %if.end9.i119
	bne x9, x7, LBB14_70
LBB14_69:
	srli x4, x4, 2
LBB14_70:                               //  %if.end9.i119
	andi x7, x4, 1
	bgtu x7, x0, LBB14_74
LBB14_71:                               //  %if.then34.i123
	srli x4, x4, 1
	bgtu x4, x0, LBB14_73
LBB14_72:
	addi x5, x0, 32
	jalr x0, LBB14_75 ( x0 )
LBB14_73:
	addi x5, x5, 1
LBB14_74:                               //  %if.end41.i126
	add x3, x0, x4
LBB14_75:                               //  %__lo0bits.exit128
	sw x3, 20 ( x10 )
	slti x4, x0, 1
	sw x4, 16 ( x10 )
	addi x5, x5, 32
LBB14_76:                               //  %if.end28
	beqz x1, LBB14_78
LBB14_77:                               //  %if.then30
	add x1, x5, x1
	addi x1, x1, -1075
	sw x1, 0 ( x13 )
	addi x1, x0, 53
	sub x1, x1, x5
	jalr x0, LBB14_100 ( x0 )
LBB14_78:                               //  %if.else35
	addi x1, x5, -1074
	sw x1, 0 ( x13 )
	slli x1, x4, 2
	add x1, x1, x10
	lw x3, 16 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x1, x28
	bgeu x5, x3, LBB14_80
LBB14_79:
	add x1, x0, x0
	jalr x0, LBB14_81 ( x0 )
LBB14_80:                               //  %if.else35
	addi x1, x0, 16
LBB14_81:                               //  %if.else35
	bgtu x3, x5, LBB14_83
LBB14_82:                               //  %if.else35
	slli x3, x3, 16
LBB14_83:                               //  %if.else35
	lui x5, 16777215 >> 12 & 0xfffff
	ori x28, x0, 16777215 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	bgtu x3, x5, LBB14_85
LBB14_84:                               //  %if.else35
	ori x1, x1, 8
LBB14_85:                               //  %if.else35
	bgtu x3, x5, LBB14_87
LBB14_86:                               //  %if.else35
	slli x3, x3, 8
LBB14_87:                               //  %if.else35
	lui x5, 268435455 >> 12 & 0xfffff
	ori x28, x0, 268435455 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	bgtu x3, x5, LBB14_89
LBB14_88:                               //  %if.else35
	ori x1, x1, 4
LBB14_89:                               //  %if.else35
	bgtu x3, x5, LBB14_91
LBB14_90:                               //  %if.else35
	slli x3, x3, 4
LBB14_91:                               //  %if.else35
	lui x5, 1073741823 >> 12 & 0xfffff
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	bgtu x3, x5, LBB14_93
LBB14_92:                               //  %if.else35
	ori x1, x1, 2
LBB14_93:                               //  %if.else35
	bgtu x3, x5, LBB14_95
LBB14_94:                               //  %if.else35
	slli x3, x3, 2
LBB14_95:                               //  %if.else35
	slli x4, x4, 5
	bgt x0, x3, LBB14_99
LBB14_96:                               //  %if.then20.i
	lui x5, 1073741824>>12 &0xfffff
	and x3, x5, x3
	bgtu x3, x0, LBB14_98
LBB14_97:
	addi x1, x0, 32
	jalr x0, LBB14_99 ( x0 )
LBB14_98:
	addi x1, x1, 1
LBB14_99:                               //  %__hi0bits.exit
	sub x1, x4, x1
LBB14_100:                              //  %if.end44
	sw x1, 0 ( x14 )
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi72:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi73:
	.cfi_adjust_cfa_offset -32
$cfi74:
	.cfi_def_cfa 2, 0
	ret
$func_end14:
	.size	$__d2b, ($func_end14)-($__d2b)
	.cfi_endproc

	.globl	$__ratio
	.type	$__ratio,@function
$__ratio:                               //  @__ratio
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi75:
	.cfi_def_cfa 2, 0
$cfi76:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi77:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi78:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x11, x2, 24
	call $__b2d
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x10, 36 ( x2 )
	addi x11, x2, 20
	add x10, x0, x8
	call $__b2d
	add x1, x0, x11
	add x3, x0, x10
	lw x4, 16 ( x8 )
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x5, 16 ( x5 )
	lw x7, 20 ( x2 )
	lw x9, 24 ( x2 )
	add x10, x0, x0
	sub x4, x5, x4
	slli x4, x4, 5
	sub x5, x9, x7
	add x4, x5, x4
	sw x1, 32 ( x2 )
	sw x3, 28 ( x2 )
	ble x4, x10, LBB15_2
LBB15_1:
	addi x5, x2, 36
	jalr x0, LBB15_3 ( x0 )
LBB15_2:                                //  %entry
	addi x5, x2, 28
LBB15_3:                                //  %entry
	srai x7, x4, 31
	add x4, x7, x4
	xor x4, x7, x4
	slli x4, x4, 20
	lw x7, 4 ( x5 )
	nop
	add x4, x7, x4
	sw x4, 4 ( x5 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__divdf3
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi79:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi80:
	.cfi_adjust_cfa_offset -56
$cfi81:
	.cfi_def_cfa 2, 0
	ret
$func_end15:
	.size	$__ratio, ($func_end15)-($__ratio)
	.cfi_endproc

	.globl	$_mprec_log10
	.type	$_mprec_log10,@function
$_mprec_log10:                          //  @_mprec_log10
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi82:
	.cfi_def_cfa 2, 0
$cfi83:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi84:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi85:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	slti x1, x10, 24
	bgtu x1, x0, LBB16_4
LBB16_1:                                //  %while.body.preheader
	lui x11, 1072693248>>12 &0xfffff
	add x1, x0, x0
	addi x8, x10, 1
	add x10, x0, x1
LBB16_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12, x0, x0
	lui x13, 1076101120>>12 &0xfffff
	call $__muldf3
	addi x8, x8, -1
	slti x1, x0, 1
	bgt x8, x1, LBB16_2
LBB16_3:                                //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi86:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi87:
	.cfi_adjust_cfa_offset -16
$cfi88:
	.cfi_def_cfa 2, 0
	ret
LBB16_4:                                //  %if.then
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	lui x1, $__mprec_tens >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	lui x3, $__mprec_tens+4 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x10, 3
	or x3, x3, x28
	add x1, x1, x4
	add x3, x3, x4
	lw x11, 0 ( x3 )
	lw x10, 0 ( x1 )
	jalr x0, LBB16_3 ( x0 )
$func_end16:
	.size	$_mprec_log10, ($func_end16)-($_mprec_log10)
	.cfi_endproc

	.globl	$__copybits
	.type	$__copybits,@function
$__copybits:                            //  @__copybits
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi89:
	.cfi_def_cfa 2, 0
$cfi90:
	.cfi_val_offset 2, 0
	addi x3, x11, -1
	lw x5, 16 ( x12 )
	srai x3, x3, 5
	slli x3, x3, 2
	add x3, x3, x10
	addi x4, x3, 4
	bgt x5, x0, LBB17_6
LBB17_1:
	add x9, x0, x10
LBB17_2:                                //  %while.cond4.preheader
	bgeu x9, x4, LBB17_5
LBB17_3:                                //  %while.body6.preheader
	addi x4, x9, -4
LBB17_4:                                //  %while.body6
                                        //  =>This Inner Loop Header: Depth=1
	addi x5, x4, 4
	sw x0, 4 ( x4 )
	add x4, x0, x5
	bgtu x3, x5, LBB17_4
LBB17_5:                                //  %while.end8
	ret
LBB17_6:                                //  %while.body.preheader
	slli x5, x5, 2
	add x5, x5, x12
	addi x5, x5, 20
	addi x7, x12, 20
LBB17_7:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x7 )
	addi x7, x7, 4
	addi x9, x10, 4
	sw x11, 0 ( x10 )
	add x10, x0, x9
	bgtu x5, x7, LBB17_7
	jalr x0, LBB17_2 ( x0 )
$func_end17:
	.size	$__copybits, ($func_end17)-($__copybits)
	.cfi_endproc

	.globl	$__any_on
	.type	$__any_on,@function
$__any_on:                              //  @__any_on
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi91:
	.cfi_def_cfa 2, 0
$cfi92:
	.cfi_val_offset 2, 0
	lw x4, 16 ( x10 )
	srai x3, x11, 5
	ble x3, x4, LBB18_6
LBB18_1:
	add x3, x0, x4
LBB18_2:                                //  %if.end7
	slli x3, x3, 2
	add x4, x3, x10
	addi x3, x10, 20
	addi x4, x4, 20
	add x10, x0, x0
	slti x5, x0, 1
LBB18_3:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x3, x4, LBB18_10
LBB18_4:                                //  %while.body
                                        //    in Loop: Header=BB18_3 Depth=1
	lw x7, -4 ( x4 )
	addi x4, x4, -4
	beqz x7, LBB18_3
LBB18_5:
	add x10, x0, x5
	ret
LBB18_6:                                //  %if.else
	ble x4, x3, LBB18_2
LBB18_7:                                //  %land.lhs.true
	andi x4, x11, 31
	beqz x4, LBB18_2
LBB18_8:                                //  %if.then2
	slli x5, x3, 2
	add x5, x5, x10
	lw x5, 20 ( x5 )
	nop
	srl x7, x5, x4
	sll x4, x7, x4
	beq x4, x5, LBB18_2
LBB18_9:
	slti x10, x0, 1
LBB18_10:                               //  %cleanup
	ret
$func_end18:
	.size	$__any_on, ($func_end18)-($__any_on)
	.cfi_endproc

	.address_space	0	
	.type	$__pow5mult.p05,@object //  @__pow5mult.p05
	.section	.rodata,"a",@progbits
	.p2align	2
$__pow5mult.p05:
	.long	5                       //  0x5
	.long	25                      //  0x19
	.long	125                     //  0x7d
	.size	$__pow5mult.p05, 12

	.address_space	0	
	.type	$__mprec_tens,@object   //  @__mprec_tens
	.globl	$__mprec_tens
	.p2align	3
$__mprec_tens:
	.quad	4607182418800017408     //  double 1
	.quad	4621819117588971520     //  double 10
	.quad	4636737291354636288     //  double 100
	.quad	4652007308841189376     //  double 1000
	.quad	4666723172467343360     //  double 1.0E+4
	.quad	4681608360884174848     //  double 1.0E+5
	.quad	4696837146684686336     //  double 1.0E+6
	.quad	4711630319722168320     //  double 1.0E+7
	.quad	4726483295884279808     //  double 1.0E+8
	.quad	4741671816366391296     //  double 1.0E+9
	.quad	4756540486875873280     //  double 1.0E+10
	.quad	4771362005757984768     //  double 1.0E+11
	.quad	4786511204640096256     //  double 1.0E+12
	.quad	4801453603149578240     //  double 1.0E+13
	.quad	4816244402031689728     //  double 1.0E+14
	.quad	4831355200913801216     //  double 1.0E+15
	.quad	4846369599423283200     //  double 1.0E+16
	.quad	4861130398305394688     //  double 1.0E+17
	.quad	4876203697187506176     //  double 1.0E+18
	.quad	4891288408196988160     //  double 1.0E+19
	.quad	4906019910204099648     //  double 1.0E+20
	.quad	4921056587992461136     //  double 1.0E+21
	.quad	4936209963552724370     //  double 1.0E+22
	.quad	4950912855330343670     //  double 9.9999999999999991E+22
	.quad	4965913770331839924     //  double 9.9999999999999998E+23
	.size	$__mprec_tens, 200

	.address_space	0	
	.type	$__mprec_bigtens,@object //  @__mprec_bigtens
	.globl	$__mprec_bigtens
	.p2align	3
$__mprec_bigtens:
	.quad	4846369599423283200     //  double 1.0E+16
	.quad	5085611494797045271     //  double 1.0000000000000001E+32
	.quad	5564284217833028085     //  double 1.0E+64
	.quad	6521906365687930162     //  double 1.0000000000000001E+128
	.quad	8436737289693151036     //  double 1.0E+256
	.size	$__mprec_bigtens, 40

	.address_space	0	
	.type	$__mprec_tinytens,@object //  @__mprec_tinytens
	.globl	$__mprec_tinytens
	.p2align	3
$__mprec_tinytens:
	.quad	4367597403136100796     //  double 9.9999999999999997E-17
	.quad	4128101167230658355     //  double 1.0000000000000001E-32
	.quad	3649340653511681853     //  double 9.9999999999999997E-65
	.quad	2691949749288605597     //  double 1.0000000000000001E-128
	.quad	776877706278891331      //  double 9.9999999999999997E-257
	.size	$__mprec_tinytens, 40


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
