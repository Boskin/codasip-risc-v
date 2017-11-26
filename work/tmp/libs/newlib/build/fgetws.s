	.text
	.file	"fgetws.bc"
	.globl	$_fgetws_r
	.type	$_fgetws_r,@function
$_fgetws_r:                             //  @_fgetws_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x13
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lh x3, 12 ( x8 )
	lui x1, 8192>>12 
	and x4, x1, x3
	bgtu x4, x0, LBB0_2
LBB0_1:                                 //  %if.then7
	or x3, x1, x3
	sh x3, 12 ( x8 )
	lw x3, 100 ( x8 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x8 )
LBB0_2:                                 //  %do.end
	bgt x12, x0, LBB0_4
LBB0_3:                                 //  %if.then15
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	add x1, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_4:                                 //  %if.end16
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	lw x1, 4 ( x8 )
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_7
LBB0_5:                                 //  %land.lhs.true
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	add x11, x0, x8
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_7
LBB0_6:
	add x1, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_7:                                 //  %do.body23.preheader
	addi x1, x8, 92
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
LBB0_8:                                 //  %do.body23
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x8 )
	nop
	sw x10, 32 ( x2 )
	lw x12, 4 ( x8 )
	addi x11, x0, 10
	call $memchr
	beqz x10, LBB0_10
LBB0_9:                                 //  %cond.true29
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x1, 0 ( x8 )
	addi x3, x10, 1
	sub x13, x3, x1
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %cond.false31
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x13, 4 ( x8 )
LBB0_11:                                //  %cond.end33
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x14, x1, -1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 32
	lw x15, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $_mbsnrtowcs_r
	add x8, x0, x10
	xori x1, x8, -1
	bgtu x1, x0, LBB0_13
LBB0_12:
	add x1, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_13:                                //  %if.end38
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x1, 32 ( x2 )
	nop
	bgtu x1, x0, LBB0_15
LBB0_14:                                //  %if.then41
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 4 ( x1 )
	lw x10, 0 ( x1 )
	add x11, x0, x0
	call $memchr
	addi x1, x10, 1
	addi x8, x8, 1
	sw x1, 32 ( x2 )
LBB0_15:                                //  %if.end45
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x7 )
	lw x4, 4 ( x7 )
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x9, x9, x8
	slli x5, x8, 1
	add x8, x0, x7
	sub x3, x3, x1
	add x3, x4, x3
	sw x9, 24 ( x2 )                //  4-byte Folded Spill
	slti x4, x9, 2
	sw x3, 4 ( x8 )
	sw x1, 0 ( x8 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x5, x1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB0_19
LBB0_16:                                //  %if.end45
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, -2 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	and x1, x4, x1
	xori x1, x1, 10
	beqz x1, LBB0_19
LBB0_17:                                //  %land.rhs
                                        //    in Loop: Header=BB0_8 Depth=1
	bgt x3, x0, LBB0_8
LBB0_18:                                //  %lor.rhs
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__srefill_r
	beqz x10, LBB0_8
LBB0_19:                                //  %do.end67
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_21
LBB0_20:
	add x1, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_21:                                //  %if.end71
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $mbsinit
	add x1, x0, x0
	beqz x10, LBB0_23
LBB0_22:                                //  %if.end76
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
LBB0_23:                                //  %cleanup
	add x10, x0, x1
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_fgetws_r, ($func_end0)-($_fgetws_r)
	.cfi_endproc

	.globl	$fgetws
	.type	$fgetws,@function
$fgetws:                                //  @fgetws
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi9:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x12
	add x4, x0, x11
	add x5, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	add x10, x0, x8
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
LBB1_3:                                 //  %if.end
	add x10, x0, x8
	add x11, x0, x5
	add x12, x0, x4
	add x13, x0, x3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi12:
	.cfi_adjust_cfa_offset -32
$cfi13:
	.cfi_def_cfa 2, 0
	j $_fgetws_r
$func_end1:
	.size	$fgetws, ($func_end1)-($fgetws)
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
