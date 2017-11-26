	.text
	.file	"findfp.bc"
	.globl	$__sfmoreglue
	.type	$__sfmoreglue,@function
$__sfmoreglue:                          //  @__sfmoreglue
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
	add x1, x0, x11
	add x8, x0, x10
	addi x11, x0, 104
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x1
	call $__mulsi3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	addi x11, x10, 12
	add x10, x0, x8
	call $_malloc_r
	add x8, x0, x10
	bgtu x8, x0, LBB0_2
LBB0_1:
	add x8, x0, x0
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.end
	addi x10, x8, 12
	sw x0, 0 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 4 ( x8 )
	sw x10, 8 ( x8 )
	add x11, x0, x0
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $memset
LBB0_3:                                 //  %cleanup
	add x10, x0, x8
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
	.size	$__sfmoreglue, ($func_end0)-($__sfmoreglue)
	.cfi_endproc

	.globl	$__sfp
	.type	$__sfp,@function
$__sfp:                                 //  @__sfp
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
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_global_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_global_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_2
LBB1_1:                                 //  %if.then
	add x10, x0, x8
	call $__sinit
LBB1_2:                                 //  %if.end
	addi x8, x8, 736
LBB1_3:                                 //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
                                        //        Child Loop BB1_6 Depth 3
	slti x4, x0, 1
LBB1_4:                                 //  %for.cond
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_6 Depth 3
	add x5, x0, x8
	lw x1, 4 ( x5 )
	nop
	ble x1, x0, LBB1_8
LBB1_5:                                 //  %for.body.preheader
                                        //    in Loop: Header=BB1_4 Depth=2
	addi x1, x1, 1
	lw x8, 8 ( x5 )
	nop
LBB1_6:                                 //  %for.body
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lhu x3, 12 ( x8 )
	nop
	beqz x3, LBB1_12
LBB1_7:                                 //  %for.inc
                                        //    in Loop: Header=BB1_6 Depth=3
	addi x1, x1, -1
	addi x8, x8, 104
	bgt x1, x4, LBB1_6
LBB1_8:                                 //  %for.end
                                        //    in Loop: Header=BB1_4 Depth=2
	lw x8, 0 ( x5 )
	nop
	bgtu x8, x0, LBB1_4
LBB1_9:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB1_3 Depth=1
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	addi x11, x0, 428
	call $_malloc_r
	add x8, x0, x10
	bgtu x8, x0, LBB1_11
LBB1_10:                                //  %__sfmoreglue.exit.thread
	addi x1, x0, 12
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x0, 0 ( x3 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	add x10, x0, x0
	jalr x0, LBB1_13 ( x0 )
LBB1_11:                                //  %__sfmoreglue.exit
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x10, x8, 12
	sw x0, 0 ( x8 )
	addi x1, x0, 4
	sw x1, 4 ( x8 )
	sw x10, 8 ( x8 )
	add x11, x0, x0
	addi x12, x0, 416
	call $memset
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	jalr x0, LBB1_3 ( x0 )
LBB1_12:                                //  %found
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 14 ( x8 )
	sh x4, 12 ( x8 )
	sw x0, 100 ( x8 )
	sw x0, 0 ( x8 )
	sw x0, 8 ( x8 )
	sw x0, 4 ( x8 )
	sw x0, 16 ( x8 )
	sw x0, 20 ( x8 )
	sw x0, 24 ( x8 )
	addi x10, x8, 92
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	sw x0, 48 ( x8 )
	sw x0, 52 ( x8 )
	sw x0, 68 ( x8 )
	sw x0, 72 ( x8 )
	add x10, x0, x8
LBB1_13:                                //  %cleanup
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
	.size	$__sfp, ($func_end1)-($__sfp)
	.cfi_endproc

	.globl	$__sfp_lock_acquire
	.type	$__sfp_lock_acquire,@function
$__sfp_lock_acquire:                    //  @__sfp_lock_acquire
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	ret
$func_end2:
	.size	$__sfp_lock_acquire, ($func_end2)-($__sfp_lock_acquire)
	.cfi_endproc

	.globl	$__sinit
	.type	$__sinit,@function
$__sinit:                               //  @__sinit
	.cfi_startproc
  .codasip_retval_regs
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
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB3_2
LBB3_1:                                 //  %if.end
	lw x8, 4 ( x10 )
	ori x28, x0, $_cleanup_r & 0xfff
	slli x28, x28, 20
	lui x1, $_cleanup_r >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 4
	or x1, x1, x28
	addi x4, x0, 3
	addi x5, x10, 748
	sw x1, 60 ( x10 )
	sw x0, 736 ( x10 )
	sw x4, 740 ( x10 )
	sw x5, 744 ( x10 )
	sw x0, 0 ( x8 )
	sw x0, 4 ( x8 )
	sw x0, 8 ( x8 )
	sh x3, 12 ( x8 )
	sw x0, 100 ( x8 )
	sh x0, 14 ( x8 )
	sw x0, 16 ( x8 )
	sw x0, 20 ( x8 )
	sw x0, 24 ( x8 )
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	addi x10, x8, 92
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	ori x28, x0, $__sread & 0xfff
	slli x28, x28, 20
	lui x1, $__sread >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__swrite & 0xfff
	slli x28, x28, 20
	lui x1, $__swrite >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__sseek & 0xfff
	slli x28, x28, 20
	lui x1, $__sseek >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $__sclose & 0xfff
	slli x28, x28, 20
	lui x1, $__sclose >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x8, 28 ( x8 )
	sw x3, 32 ( x8 )
	sw x4, 36 ( x8 )
	sw x5, 40 ( x8 )
	sw x1, 44 ( x8 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 8 ( x1 )
	addi x1, x0, 9
	slti x3, x0, 1
	sw x0, 0 ( x8 )
	sw x0, 4 ( x8 )
	sw x0, 8 ( x8 )
	sh x1, 12 ( x8 )
	sw x0, 100 ( x8 )
	sh x3, 14 ( x8 )
	sw x0, 16 ( x8 )
	sw x0, 20 ( x8 )
	sw x0, 24 ( x8 )
	addi x10, x8, 92
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	sw x8, 28 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 32 ( x8 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 36 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 40 ( x8 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 44 ( x8 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 12 ( x1 )
	addi x1, x0, 18
	addi x3, x0, 2
	sw x0, 0 ( x8 )
	sw x0, 4 ( x8 )
	sw x0, 8 ( x8 )
	sh x1, 12 ( x8 )
	sw x0, 100 ( x8 )
	sh x3, 14 ( x8 )
	sw x0, 16 ( x8 )
	sw x0, 20 ( x8 )
	sw x0, 24 ( x8 )
	addi x10, x8, 92
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	sw x8, 28 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 32 ( x8 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 36 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 40 ( x8 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 44 ( x8 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	slti x3, x0, 1
	sw x3, 56 ( x1 )
LBB3_2:                                 //  %return
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
	.size	$__sinit, ($func_end3)-($__sinit)
	.cfi_endproc

	.globl	$__sfp_lock_release
	.type	$__sfp_lock_release,@function
$__sfp_lock_release:                    //  @__sfp_lock_release
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi23:
	.cfi_def_cfa 2, 0
$cfi24:
	.cfi_val_offset 2, 0
	ret
$func_end4:
	.size	$__sfp_lock_release, ($func_end4)-($__sfp_lock_release)
	.cfi_endproc

	.globl	$_cleanup_r
	.type	$_cleanup_r,@function
$_cleanup_r:                            //  @_cleanup_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi25:
	.cfi_def_cfa 2, 0
$cfi26:
	.cfi_val_offset 2, 0
	ori x28, x0, $_fclose_r & 0xfff
	slli x28, x28, 20
	lui x3, $_fclose_r >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	j $_fwalk_reent
$func_end5:
	.size	$_cleanup_r, ($func_end5)-($_cleanup_r)
	.cfi_endproc

	.globl	$_cleanup
	.type	$_cleanup,@function
$_cleanup:                              //  @_cleanup
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi27:
	.cfi_def_cfa 2, 0
$cfi28:
	.cfi_val_offset 2, 0
	ori x28, x0, $_global_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_global_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_fclose_r & 0xfff
	lw x10, 0 ( x3 )
	slli x28, x28, 20
	lui x3, $_fclose_r >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	j $_fwalk_reent
$func_end6:
	.size	$_cleanup, ($func_end6)-($_cleanup)
	.cfi_endproc

	.globl	$__sinit_lock_acquire
	.type	$__sinit_lock_acquire,@function
$__sinit_lock_acquire:                  //  @__sinit_lock_acquire
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi29:
	.cfi_def_cfa 2, 0
$cfi30:
	.cfi_val_offset 2, 0
	ret
$func_end7:
	.size	$__sinit_lock_acquire, ($func_end7)-($__sinit_lock_acquire)
	.cfi_endproc

	.globl	$__sinit_lock_release
	.type	$__sinit_lock_release,@function
$__sinit_lock_release:                  //  @__sinit_lock_release
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi31:
	.cfi_def_cfa 2, 0
$cfi32:
	.cfi_val_offset 2, 0
	ret
$func_end8:
	.size	$__sinit_lock_release, ($func_end8)-($__sinit_lock_release)
	.cfi_endproc

	.globl	$__fp_lock_all
	.type	$__fp_lock_all,@function
$__fp_lock_all:                         //  @__fp_lock_all
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi33:
	.cfi_def_cfa 2, 0
$cfi34:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $__fp_lock & 0xfff
	lw x10, 0 ( x3 )
	slli x28, x28, 20
	lui x3, $__fp_lock >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	j $_fwalk
$func_end9:
	.size	$__fp_lock_all, ($func_end9)-($__fp_lock_all)
	.cfi_endproc

	.type	$__fp_lock,@function
$__fp_lock:                             //  @__fp_lock
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	add x10, x0, x0
	ret
$func_end10:
	.size	$__fp_lock, ($func_end10)-($__fp_lock)
	.cfi_endproc

	.globl	$__fp_unlock_all
	.type	$__fp_unlock_all,@function
$__fp_unlock_all:                       //  @__fp_unlock_all
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi37:
	.cfi_def_cfa 2, 0
$cfi38:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $__fp_unlock & 0xfff
	lw x10, 0 ( x3 )
	slli x28, x28, 20
	lui x3, $__fp_unlock >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	j $_fwalk
$func_end11:
	.size	$__fp_unlock_all, ($func_end11)-($__fp_unlock_all)
	.cfi_endproc

	.type	$__fp_unlock,@function
$__fp_unlock:                           //  @__fp_unlock
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi39:
	.cfi_def_cfa 2, 0
$cfi40:
	.cfi_val_offset 2, 0
	add x10, x0, x0
	ret
$func_end12:
	.size	$__fp_unlock, ($func_end12)-($__fp_unlock)
	.cfi_endproc

	.address_space	0	
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
