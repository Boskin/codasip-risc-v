	.text
	.file	"tmpnam.bc"
	.globl	$_tmpnam_r
	.type	$_tmpnam_r,@function
$_tmpnam_r:                             //  @_tmpnam_r
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
	add x8, x0, x10
	add x1, x0, x0
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	bne x11, x1, LBB0_2
LBB0_1:
	addi x1, x8, 20
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB0_2:                                 //  %entry
	add x10, x0, x8
	call $_getpid_r
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
LBB0_3:                                 //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 16 ( x8 )
	nop
	sw x1, 24 ( x2 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x2 )
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 16 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $_sprintf_r
	lw x1, 16 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 16 ( x8 )
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $_open_r
	add x1, x0, x10
	xori x3, x1, -1
	bgtu x3, x0, LBB0_6
LBB0_4:                                 //  %if.then.i
	lw x1, 0 ( x8 )
	nop
	xori x1, x1, 88
	bgtu x1, x0, LBB0_7
LBB0_5:                                 //  %worker.exit.thread
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	add x10, x0, x0
	jalr x0, LBB0_8 ( x0 )
LBB0_6:                                 //  %cleanup.thread.i
                                        //    in Loop: Header=BB0_3 Depth=1
	add x10, x0, x8
	add x11, x0, x1
	call $_close_r
	jalr x0, LBB0_3 ( x0 )
LBB0_7:                                 //  %if.then2
	lw x1, 16 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 16 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
LBB0_8:                                 //  %cleanup
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
	.size	$_tmpnam_r, ($func_end0)-($_tmpnam_r)
	.cfi_endproc

	.globl	$_tempnam_r
	.type	$_tempnam_r,@function
$_tempnam_r:                            //  @_tempnam_r
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
	add x8, x0, x10
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	or x1, x1, x28
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	bne x12, x3, LBB1_2
LBB1_1:                                 //  %entry
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB1_2:                                 //  %entry
	bgtu x11, x0, LBB1_5
LBB1_3:                                 //  %land.lhs.true
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	call $getenv
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	or x11, x1, x28
	beq x10, x3, LBB1_5
LBB1_4:                                 //  %land.lhs.true
	add x11, x0, x10
LBB1_5:                                 //  %if.end
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x11
	call $strlen
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $strlen
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x11, x1, 19
	add x10, x0, x8
	call $_malloc_r
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	beqz x10, LBB1_12
LBB1_6:                                 //  %if.then9
	add x10, x0, x8
	call $_getpid_r
	xor x1, x8, x10
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_7:                                 //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lw x1, 16 ( x8 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str.4 >> 12 & 0xfffff
	or x3, x3, x28
	sw x1, 24 ( x2 )
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x2 )
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x2 )
	sw x4, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $_sprintf_r
	lw x1, 16 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 16 ( x8 )
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $_open_r
	add x1, x0, x10
	xori x3, x1, -1
	bgtu x3, x0, LBB1_10
LBB1_8:                                 //  %if.then.i
	lw x1, 0 ( x8 )
	nop
	xori x1, x1, 88
	beqz x1, LBB1_11
LBB1_9:
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_12 ( x0 )
LBB1_10:                                //  %cleanup.thread.i
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10, x0, x8
	add x11, x0, x1
	call $_close_r
	jalr x0, LBB1_7 ( x0 )
LBB1_11:                                //  %worker.exit.thread
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
LBB1_12:                                //  %cleanup
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
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
	.size	$_tempnam_r, ($func_end1)-($_tempnam_r)
	.cfi_endproc

	.globl	$tempnam
	.type	$tempnam,@function
$tempnam:                               //  @tempnam
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $_tempnam_r
$func_end2:
	.size	$tempnam, ($func_end2)-($tempnam)
	.cfi_endproc

	.globl	$tmpnam
	.type	$tmpnam,@function
$tmpnam:                                //  @tmpnam
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi18:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi19:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x3, x0, x0
	lw x8, 0 ( x1 )
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	bne x10, x3, LBB3_2
LBB3_1:
	addi x1, x8, 20
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB3_2:                                 //  %entry
	add x10, x0, x8
	call $_getpid_r
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
LBB3_3:                                 //  %while.body.i.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 16 ( x8 )
	nop
	sw x1, 24 ( x2 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x2 )
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 16 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $_sprintf_r
	lw x1, 16 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 16 ( x8 )
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $_open_r
	add x1, x0, x10
	xori x3, x1, -1
	bgtu x3, x0, LBB3_6
LBB3_4:                                 //  %if.then.i.i
	lw x1, 0 ( x8 )
	nop
	xori x1, x1, 88
	bgtu x1, x0, LBB3_7
LBB3_5:                                 //  %worker.exit.thread.i
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	add x10, x0, x0
	jalr x0, LBB3_8 ( x0 )
LBB3_6:                                 //  %cleanup.thread.i.i
                                        //    in Loop: Header=BB3_3 Depth=1
	add x10, x0, x8
	add x11, x0, x1
	call $_close_r
	jalr x0, LBB3_3 ( x0 )
LBB3_7:                                 //  %if.then2.i
	lw x1, 16 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 16 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
LBB3_8:                                 //  %_tmpnam_r.exit
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi21:
	.cfi_adjust_cfa_offset -56
$cfi22:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$tmpnam, ($func_end3)-($tmpnam)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"/tmp"
	.size	$.str, 5

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"t"
	.size	$.str.1, 2

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.zero	1
	.size	$.str.2, 1

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"TMPDIR"
	.size	$.str.3, 7

	.address_space	0	
	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"%s/%s%x.%x"
	.size	$.str.4, 11


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
