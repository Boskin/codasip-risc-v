	.text
	.file	"fix_grouping.bc"
	.globl	$__fix_locale_grouping_str
	.type	$__fix_locale_grouping_str,@function
$__fix_locale_grouping_str:             //  @__fix_locale_grouping_str
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x10
	ori x28, x0, $nogrouping & 0xfff
	slli x28, x28, 20
	lui x9, $nogrouping >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x9, x28
	beqz x7, LBB0_19
LBB0_1:                                 //  %lor.lhs.false
	lbu x3, 0 ( x7 )
	ori x28, x0, $nogrouping & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x9, x28
	beqz x3, LBB0_19
LBB0_2:                                 //  %for.cond.preheader
	lui x12, $__ctype_ptr__ >> 12 & 0xfffff
	add x11, x0, x7
	add x1, x0, x7
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_3:                                 //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	andi x3, x3, 255
	xori x4, x3, 45
	beqz x4, LBB0_6
LBB0_4:                                 //  %for.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	xori x4, x3, 59
	bgtu x4, x0, LBB0_16
LBB0_5:                                 //    in Loop: Header=BB0_3 Depth=1
	add x8, x0, x1
	jalr x0, LBB0_9 ( x0 )
LBB0_6:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB0_3 Depth=1
	lbu x4, 1 ( x1 )
	nop
	xori x4, x4, 49
	bgtu x4, x0, LBB0_10
LBB0_7:                                 //  %if.then17
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x8, x1, 1
	addi x1, x0, 127
	sb x1, 0 ( x11 )
LBB0_8:                                 //  %if.end49
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x11, x11, 1
LBB0_9:                                 //  %for.inc
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x1, x8, 1
	lb x3, 1 ( x8 )
	jalr x0, LBB0_3 ( x0 )
LBB0_10:                                //  %if.end19
                                        //    in Loop: Header=BB0_3 Depth=1
	ori x28, x0, $nogrouping & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x9, x28
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x12, x28
	lw x4, 0 ( x4 )
	nop
	addi x4, x4, 1
	add x5, x3, x4
	lbu x5, 0 ( x5 )
	nop
	andi x5, x5, 4
	beqz x5, LBB0_19
LBB0_11:                                //  %if.end24
                                        //    in Loop: Header=BB0_3 Depth=1
	lbu x5, 1 ( x1 )
	addi x3, x3, 208
	add x4, x5, x4
	lbu x4, 0 ( x4 )
	nop
	andi x4, x4, 4
	bgtu x4, x0, LBB0_13
LBB0_12:                                //    in Loop: Header=BB0_3 Depth=1
	add x8, x0, x1
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.then34
                                        //    in Loop: Header=BB0_3 Depth=1
	slli x4, x5, 24
	srai x4, x4, 24
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	addi x8, x1, 1
	slli x1, x3, 24
	srai x10, x1, 24
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lui x11, 167772160>>12 &0xfffff
	call $__mulsi3
	lui x12, $__ctype_ptr__ >> 12 & 0xfffff
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lui x9, $nogrouping >> 12 & 0xfffff
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	srli x1, x10, 24
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x3, x1, -48
LBB0_14:                                //  %if.end42
                                        //    in Loop: Header=BB0_3 Depth=1
	andi x1, x3, 255
	sb x3, 0 ( x11 )
	bgtu x1, x0, LBB0_8
LBB0_15:                                //  %if.then46
	ori x28, x0, $nogrouping & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x9, x28
	bne x11, x7, LBB0_18
	jalr x0, LBB0_19 ( x0 )
LBB0_16:                                //  %for.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	bgtu x3, x0, LBB0_10
LBB0_17:                                //  %for.end
	sb x0, 0 ( x11 )
LBB0_18:                                //  %cleanup
	add x10, x0, x7
LBB0_19:                                //  %cleanup
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__fix_locale_grouping_str, ($func_end0)-($__fix_locale_grouping_str)
	.cfi_endproc

	.address_space	0	
	.type	$nogrouping,@object     //  @nogrouping
	.section	.rodata,"a",@progbits
$nogrouping:
	.asciz	"\177"
	.size	$nogrouping, 2

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
