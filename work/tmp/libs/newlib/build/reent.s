	.text
	.file	"reent.bc"
	.globl	$cleanup_glue
	.type	$cleanup_glue,@function
$cleanup_glue:                          //  @cleanup_glue
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	add x8, x0, x11
	lw x11, 0 ( x8 )
	nop
	beqz x11, LBB0_2
LBB0_1:                                 //  %if.then
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $cleanup_glue
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_2:                                 //  %if.end
	add x11, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	j $_free_r
$func_end0:
	.size	$cleanup_glue, ($func_end0)-($cleanup_glue)
	.cfi_endproc

	.globl	$_reclaim_reent
	.type	$_reclaim_reent,@function
$_reclaim_reent:                        //  @_reclaim_reent
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	beq x1, x10, LBB1_19
LBB1_1:                                 //  %if.then
	lw x1, 76 ( x10 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_8
LBB1_2:                                 //  %for.body.preheader
	add x3, x0, x0
LBB1_3:                                 //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	slli x3, x3, 2
	add x1, x3, x1
	lw x11, 0 ( x1 )
	nop
	beqz x11, LBB1_5
LBB1_4:                                 //  %while.body
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x8, 0 ( x11 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	bgtu x8, x0, LBB1_4
LBB1_5:                                 //  %while.end
                                        //    in Loop: Header=BB1_3 Depth=1
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x3, 32
	beqz x1, LBB1_7
LBB1_6:                                 //  %while.end.for.body_crit_edge
                                        //    in Loop: Header=BB1_3 Depth=1
	lw x1, 76 ( x10 )
	jalr x0, LBB1_3 ( x0 )
LBB1_7:                                 //  %for.end
	lw x11, 76 ( x10 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_8:                                 //  %if.end
	lw x11, 64 ( x10 )
	nop
	beqz x11, LBB1_10
LBB1_9:                                 //  %if.then7
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_10:                                //  %if.end9
	lw x11, 328 ( x10 )
	nop
	beqz x11, LBB1_14
LBB1_11:                                //  %land.lhs.true
	addi x1, x10, 332
	beq x11, x1, LBB1_14
LBB1_12:                                //  %for.body18.preheader
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
LBB1_13:                                //  %for.body18
                                        //  =>This Inner Loop Header: Depth=1
	lw x8, 0 ( x11 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	bne x8, x1, LBB1_13
LBB1_14:                                //  %if.end21
	lw x11, 84 ( x10 )
	nop
	beqz x11, LBB1_16
LBB1_15:                                //  %if.then23
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_16:                                //  %if.end25
	lw x1, 56 ( x10 )
	nop
	beqz x1, LBB1_19
LBB1_17:                                //  %if.then27
	lw x1, 60 ( x10 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 736 ( x10 )
	nop
	beqz x11, LBB1_19
LBB1_18:                                //  %if.then30
	call $cleanup_glue
LBB1_19:                                //  %if.end35
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_reclaim_reent, ($func_end1)-($_reclaim_reent)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$errno,@object          //  @errno
	.comm	$errno,4,4

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
