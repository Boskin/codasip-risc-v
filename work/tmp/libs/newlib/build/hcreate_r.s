	.text
	.file	"hcreate_r.bc"
	.globl	$hcreate_r
	.type	$hcreate_r,@function
$hcreate_r:                             //  @hcreate_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB0_3
LBB0_1:
	addi x8, x0, 22
LBB0_2:                                 //  %cleanup.sink.split
	call $__errno
	sw x8, 0 ( x10 )
	add x10, x0, x0
	jalr x0, LBB0_18 ( x0 )
LBB0_3:                                 //  %if.end
	addi x1, x0, 16
	bgtu x10, x1, LBB0_5
LBB0_4:                                 //  %if.end
	add x10, x0, x1
LBB0_5:                                 //  %if.end
	lui x1, 67108864>>12 &0xfffff
	bgtu x1, x10, LBB0_7
LBB0_6:                                 //  %if.end
	add x10, x0, x1
LBB0_7:                                 //  %if.end
	lui x1, 134217727 >> 12 & 0xfffff
	ori x28, x0, 134217727 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	and x1, x10, x1
	beqz x1, LBB0_13
LBB0_8:                                 //  %for.cond.preheader
	bgtu x10, x0, LBB0_10
LBB0_9:
	add x1, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_10:                                //  %for.body.preheader
	add x1, x0, x0
LBB0_11:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, 1
	srli x10, x10, 1
	bgtu x10, x0, LBB0_11
LBB0_12:                                //  %for.end
	slti x3, x0, 1
	sll x10, x3, x1
LBB0_13:                                //  %if.end10
	sw x10, 4 ( x8 )
	slli x10, x10, 2
	call $malloc
	add x1, x0, x10
	sw x1, 0 ( x8 )
	bgtu x1, x0, LBB0_15
LBB0_14:
	addi x8, x0, 12
	jalr x0, LBB0_2 ( x0 )
LBB0_15:                                //  %for.cond19.preheader
	slti x10, x0, 1
	lw x3, 4 ( x8 )
	nop
	beqz x3, LBB0_18
LBB0_16:                                //  %do.body.preheader
	add x4, x0, x0
LBB0_17:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x1 )
	addi x1, x1, 4
	addi x4, x4, 1
	bgtu x3, x4, LBB0_17
LBB0_18:                                //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$hcreate_r, ($func_end0)-($hcreate_r)
	.cfi_endproc

	.globl	$hdestroy_r
	.type	$hdestroy_r,@function
$hdestroy_r:                            //  @hdestroy_r
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
	lw x10, 0 ( x8 )
	nop
	beqz x10, LBB1_2
LBB1_1:                                 //  %if.end
	call $free
	sw x0, 0 ( x8 )
LBB1_2:                                 //  %return
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
	.size	$hdestroy_r, ($func_end1)-($hdestroy_r)
	.cfi_endproc

	.globl	$hsearch_r
	.type	$hsearch_r,@function
$hsearch_r:                             //  @hsearch_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi16:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x8, 0 ( x10 )
	nop
	add x10, x0, x8
	call $strlen
	add x1, x0, x10
	ori x28, x0, $__default_hash & 0xfff
	slli x28, x28, 20
	lui x3, $__default_hash >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call_reg x3
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	lw x3, 0 ( x3 )
	addi x1, x1, -1
	and x1, x10, x1
	slli x1, x1, 2
	add x1, x1, x3
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB2_3
LBB2_1:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 4 ( x8 )
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $strcmp
	beqz x10, LBB2_9
LBB2_2:                                 //  %if.end
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x8, 0 ( x8 )
	nop
	bgtu x8, x0, LBB2_1
LBB2_3:                                 //  %if.else
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB2_5
LBB2_4:                                 //  %if.then12
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
	add x10, x0, x0
	jalr x0, LBB2_8 ( x0 )
LBB2_5:                                 //  %if.end14
	addi x10, x0, 12
	call $malloc
	beqz x10, LBB2_4
LBB2_6:                                 //  %if.end18
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x10 )
	addi x3, x10, 4
	sw x1, 8 ( x10 )
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x4 )
	nop
	sw x1, 0 ( x10 )
	sw x10, 0 ( x4 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
LBB2_7:                                 //  %cleanup
	slti x10, x0, 1
LBB2_8:                                 //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi19:
	.cfi_adjust_cfa_offset -40
$cfi20:
	.cfi_def_cfa 2, 0
	ret
LBB2_9:                                 //  %if.then9
	addi x1, x8, 4
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB2_7 ( x0 )
$func_end2:
	.size	$hsearch_r, ($func_end2)-($hsearch_r)
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
