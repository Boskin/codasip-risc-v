	.text
	.file	"setenv_r.bc"
	.globl	$_setenv_r
	.type	$_setenv_r,@function
$_setenv_r:                             //  @_setenv_r
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
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	addi x11, x0, 61
	add x10, x0, x8
	call $strchr
	beqz x10, LBB0_2
LBB0_1:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x10, x0
	jalr x0, LBB0_33 ( x0 )
LBB0_2:                                 //  %if.end
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__env_lock
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $strlen
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	addi x12, x2, 32
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $_findenv_r
	add x8, x0, x10
	beqz x8, LBB0_8
LBB0_3:                                 //  %if.then5
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then7
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_32 ( x0 )
LBB0_5:                                 //  %if.end8
	add x10, x0, x8
	call $strlen
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x5, x10, LBB0_18
LBB0_6:                                 //  %while.cond.preheader
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_7:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 0 ( x4 )
	addi x3, x8, 1
	addi x4, x4, 1
	sb x1, 0 ( x8 )
	add x8, x0, x3
	bgtu x1, x0, LBB0_7
	jalr x0, LBB0_4 ( x0 )
LBB0_8:                                 //  %if.else
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x11, 0 ( x1 )
	nop
	lw x1, 0 ( x11 )
	nop
	bgtu x1, x0, LBB0_10
LBB0_9:
	add x8, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_10:                                //  %for.inc.preheader
	add x8, x0, x0
	addi x1, x11, 4
LBB0_11:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	addi x1, x1, 4
	addi x8, x8, 1
	bgtu x3, x0, LBB0_11
LBB0_12:                                //  %for.end
	ori x28, x0, $_setenv_r.alloced & 0xfff
	slli x28, x28, 20
	lui x1, $_setenv_r.alloced >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	lbu x3, 0 ( x3 )
	nop
	xori x3, x3, 1
	bgtu x3, x0, LBB0_15
LBB0_13:                                //  %if.then18
	slli x1, x8, 2
	addi x12, x1, 8
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $_realloc_r
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	or x1, x1, x28
	sw x10, 0 ( x1 )
	bgtu x10, x0, LBB0_17
LBB0_14:                                //  %if.then21
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_24 ( x0 )
LBB0_15:                                //  %if.else23
	ori x28, x0, $_setenv_r.alloced & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	slti x3, x0, 1
	sb x3, 0 ( x1 )
	slli x1, x8, 2
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	addi x11, x1, 8
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $_malloc_r
	beqz x10, LBB0_14
LBB0_16:                                //  %if.end29
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	lw x11, 0 ( x1 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
LBB0_17:                                //  %if.end32
	slli x1, x8, 2
	add x1, x1, x10
	sw x0, 4 ( x1 )
	sw x8, 32 ( x2 )
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
LBB0_18:                                //  %for.cond36.preheader
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
LBB0_19:                                //  %for.cond36
                                        //  =>This Inner Loop Header: Depth=1
	lbu x3, 0 ( x1 )
	nop
	beqz x3, LBB0_22
LBB0_20:                                //  %for.cond36
                                        //    in Loop: Header=BB0_19 Depth=1
	xori x3, x3, 61
	beqz x3, LBB0_22
LBB0_21:                                //  %for.inc43
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x1, x1, 1
	jalr x0, LBB0_19 ( x0 )
LBB0_22:                                //  %for.end45
	addi x3, x0, 2
	sub x3, x3, x4
	add x3, x5, x3
	add x11, x1, x3
	add x10, x0, x8
	call $_malloc_r
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	lw x4, 32 ( x2 )
	lw x5, 0 ( x3 )
	slli x3, x4, 2
	add x4, x3, x5
	sw x10, 0 ( x4 )
	bgtu x10, x0, LBB0_25
LBB0_23:                                //  %if.then51
	add x10, x0, x8
LBB0_24:                                //  %cleanup76
	call $__env_unlock
	not x10, x0
	jalr x0, LBB0_33 ( x0 )
LBB0_25:                                //  %if.end52
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	add x1, x3, x1
	lw x1, 0 ( x1 )
	nop
	addi x1, x1, 1
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	addi x5, x0, 61
LBB0_26:                                //  %for.cond54
                                        //  =>This Inner Loop Header: Depth=1
	lbu x3, 0 ( x4 )
	nop
	sb x3, -1 ( x1 )
	beqz x3, LBB0_29
LBB0_27:                                //  %for.cond54
                                        //    in Loop: Header=BB0_26 Depth=1
	xori x3, x3, 61
	beqz x3, LBB0_29
LBB0_28:                                //  %for.inc64
                                        //    in Loop: Header=BB0_26 Depth=1
	addi x1, x1, 1
	addi x4, x4, 1
	jalr x0, LBB0_26 ( x0 )
LBB0_29:                                //  %for.end66
	sb x5, -1 ( x1 )
	add x3, x0, x0
LBB0_30:                                //  %for.cond68
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x3, x7
	lbu x4, 0 ( x4 )
	add x5, x3, x1
	addi x3, x3, 1
	sb x4, 0 ( x5 )
	bgtu x4, x0, LBB0_30
LBB0_31:                                //  %for.end75
	add x10, x0, x8
LBB0_32:                                //  %cleanup76
	call $__env_unlock
	add x10, x0, x0
LBB0_33:                                //  %cleanup76
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
	.size	$_setenv_r, ($func_end0)-($_setenv_r)
	.cfi_endproc

	.globl	$_unsetenv_r
	.type	$_unsetenv_r,@function
$_unsetenv_r:                           //  @_unsetenv_r
	.cfi_startproc
  .codasip_retval_regs 10
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
	add x8, x0, x11
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_3
LBB1_1:                                 //  %lor.lhs.false
	lbu x1, 0 ( x8 )
	nop
	beqz x1, LBB1_3
LBB1_2:                                 //  %lor.lhs.false3
	addi x11, x0, 61
	add x10, x0, x8
	call $strchr
	beqz x10, LBB1_4
LBB1_3:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x10, x0
	jalr x0, LBB1_7 ( x0 )
LBB1_4:                                 //  %if.end
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__env_lock
	addi x12, x2, 8
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
LBB1_5:                                 //  %if.end
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_9 Depth 2
	call $_findenv_r
	bgtu x10, x0, LBB1_8
LBB1_6:                                 //  %while.end
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__env_unlock
	add x10, x0, x0
LBB1_7:                                 //  %cleanup
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
LBB1_8:                                 //  %while.body
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 8 ( x2 )
	lw x1, 0 ( x1 )
	slli x3, x3, 2
	add x1, x3, x1
	addi x1, x1, 4
LBB1_9:                                 //  %for.cond
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x3, 0 ( x1 )
	addi x4, x1, 4
	sw x3, -4 ( x1 )
	add x1, x0, x4
	bgtu x3, x0, LBB1_9
LBB1_10:                                //  %while.cond.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 8
	jalr x0, LBB1_5 ( x0 )
$func_end1:
	.size	$_unsetenv_r, ($func_end1)-($_unsetenv_r)
	.cfi_endproc

	.address_space	0	
	.type	$_setenv_r.alloced,@object //  @_setenv_r.alloced
	.local	$_setenv_r.alloced
	.comm	$_setenv_r.alloced,1,4
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
