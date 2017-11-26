	.text
	.file	"tmpfile.bc"
	.globl	$_tmpfile_r
	.type	$_tmpfile_r,@function
$_tmpfile_r:                            //  @_tmpfile_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -1064
$cfi2:
	.cfi_adjust_cfa_offset 1064
	sw x1, 1060 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 1052 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x10
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
LBB0_1:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	addi x11, x2, 28
	call $_tmpnam_r
	add x1, x0, x10
	bgtu x1, x0, LBB0_3
LBB0_2:
	add x10, x0, x0
	jalr x0, LBB0_9 ( x0 )
LBB0_3:                                 //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, 68098 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 68098 >> 12 & 0xfffff
	or x12, x3, x28
	add x10, x0, x8
	add x11, x0, x1
	addi x13, x0, 384
	add x8, x0, x1
	call $_open_r
	add x3, x0, x10
	bgez x3, LBB0_6
LBB0_4:                                 //  %land.rhs
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x8 )
	nop
	xori x1, x1, 17
	beqz x1, LBB0_1
LBB0_5:
	add x10, x0, x0
	jalr x0, LBB0_9 ( x0 )
LBB0_6:                                 //  %if.end6
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x3
	call $_fdopen_r
	lw x1, 0 ( x8 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	bgtu x10, x0, LBB0_8
LBB0_7:                                 //  %if.then9
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_close_r
LBB0_8:                                 //  %if.end11
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $_remove_r
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_9:                                 //  %cleanup
	lw x8, 1052 ( x2 )              //  4-byte Folded Reload
	lw x1, 1060 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 1064
$cfi5:
	.cfi_adjust_cfa_offset -1064
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_tmpfile_r, ($func_end0)-($_tmpfile_r)
	.cfi_endproc

	.globl	$tmpfile
	.type	$tmpfile,@function
$tmpfile:                               //  @tmpfile
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -1064
$cfi9:
	.cfi_adjust_cfa_offset 1064
	sw x1, 1060 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 1052 ( x2 )              //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
LBB1_1:                                 //  %do.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	addi x11, x2, 28
	call $_tmpnam_r
	add x1, x0, x10
	bgtu x1, x0, LBB1_3
LBB1_2:
	add x10, x0, x0
	jalr x0, LBB1_9 ( x0 )
LBB1_3:                                 //  %if.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 68098 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 68098 >> 12 & 0xfffff
	or x12, x3, x28
	add x10, x0, x8
	add x11, x0, x1
	addi x13, x0, 384
	add x8, x0, x1
	call $_open_r
	add x3, x0, x10
	bgez x3, LBB1_6
LBB1_4:                                 //  %land.rhs.i
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x8 )
	nop
	xori x1, x1, 17
	beqz x1, LBB1_1
LBB1_5:
	add x10, x0, x0
	jalr x0, LBB1_9 ( x0 )
LBB1_6:                                 //  %if.end6.i
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x3
	call $_fdopen_r
	lw x1, 0 ( x8 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	bgtu x10, x0, LBB1_8
LBB1_7:                                 //  %if.then9.i
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_close_r
LBB1_8:                                 //  %if.end11.i
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $_remove_r
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB1_9:                                 //  %_tmpfile_r.exit
	lw x8, 1052 ( x2 )              //  4-byte Folded Reload
	lw x1, 1060 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 1064
$cfi12:
	.cfi_adjust_cfa_offset -1064
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$tmpfile, ($func_end1)-($tmpfile)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"wb+"
	.size	$.str, 4

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
