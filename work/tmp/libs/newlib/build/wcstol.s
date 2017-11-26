	.text
	.file	"wcstol.bc"
	.globl	$_wcstol_r
	.type	$_wcstol_r,@function
$_wcstol_r:                             //  @_wcstol_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_1:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lh x10, 0 ( x8 )
	addi x8, x8, 2
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $iswspace
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bgtu x10, x0, LBB0_1
LBB0_2:                                 //  %do.end
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x0, x3
	and x1, x1, x3
	xori x3, x1, 43
	bgtu x3, x0, LBB0_4
LBB0_3:
	add x4, x0, x0
	jalr x0, LBB0_7 ( x0 )
LBB0_4:                                 //  %do.end
	xori x1, x1, 45
	beqz x1, LBB0_6
LBB0_5:                                 //  %do.end.if.end9_crit_edge
	add x4, x0, x0
	add x3, x0, x8
	add x8, x0, x5
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_8 ( x0 )
LBB0_6:                                 //  %if.then
	slti x4, x0, 1
LBB0_7:                                 //  %if.end9.sink.split
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	addi x3, x8, 2
	lh x8, 0 ( x8 )
LBB0_8:                                 //  %if.end9
	ori x1, x5, 16
	xori x1, x1, 16
	bgtu x1, x0, LBB0_13
LBB0_9:                                 //  %if.end9
	xori x1, x8, 48
	bgtu x1, x0, LBB0_13
LBB0_10:                                //  %land.lhs.true16
	lhu x1, 0 ( x3 )
	nop
	ori x1, x1, 32
	xori x1, x1, 120
	beqz x1, LBB0_12
LBB0_11:
	addi x8, x0, 48
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.then24
	addi x5, x0, 16
	addi x1, x3, 4
	lh x8, 2 ( x3 )
	add x3, x0, x1
LBB0_13:                                //  %if.end26
	addi x1, x0, 48
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	bne x8, x1, LBB0_15
LBB0_14:
	addi x1, x0, 8
	jalr x0, LBB0_16 ( x0 )
LBB0_15:                                //  %if.end26
	addi x1, x0, 10
LBB0_16:                                //  %if.end26
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lui x1, 2147483647 >> 12 & 0xfffff
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lui x3, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x7, x0, x0
	bne x4, x7, LBB0_18
LBB0_17:                                //  %if.end26
	add x3, x0, x1
LBB0_18:                                //  %if.end26
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	beq x5, x7, LBB0_20
LBB0_19:                                //  %if.end26
	sw x5, 32 ( x2 )                //  4-byte Folded Spill
LBB0_20:                                //  %if.end26
	add x10, x0, x3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__umodsi3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	add x3, x0, x0
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x3
LBB0_21:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $iswdigit
	beqz x10, LBB0_23
LBB0_22:                                //  %if.then37
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x8, x8, -48
	jalr x0, LBB0_27 ( x0 )
LBB0_23:                                //  %if.else38
                                        //    in Loop: Header=BB0_21 Depth=1
	add x10, x0, x8
	call $iswalpha
	beqz x10, LBB0_35
LBB0_24:                                //  %if.then41
                                        //    in Loop: Header=BB0_21 Depth=1
	add x10, x0, x8
	call $iswupper
	addi x1, x0, 55
	add x3, x0, x0
	bne x10, x3, LBB0_26
LBB0_25:                                //  %if.then41
                                        //    in Loop: Header=BB0_21 Depth=1
	addi x1, x0, 87
LBB0_26:                                //  %if.then41
                                        //    in Loop: Header=BB0_21 Depth=1
	sub x8, x8, x1
LBB0_27:                                //  %if.end48
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB0_35
LBB0_28:                                //  %if.end52
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgeu x1, x10, LBB0_30
LBB0_29:                                //    in Loop: Header=BB0_21 Depth=1
	add x4, x0, x10
	not x3, x0
	jalr x0, LBB0_34 ( x0 )
LBB0_30:                                //  %if.end52
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_29
LBB0_31:                                //  %lor.lhs.false58
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bne x10, x1, LBB0_33
LBB0_32:                                //  %lor.lhs.false58
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	not x3, x0
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x8, x1, LBB0_34
LBB0_33:                                //  %if.else65
                                        //    in Loop: Header=BB0_21 Depth=1
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	add x4, x10, x8
	slti x3, x0, 1
LBB0_34:                                //  %for.inc
                                        //    in Loop: Header=BB0_21 Depth=1
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x3, 2
	lh x8, 2 ( x3 )
	jalr x0, LBB0_21 ( x0 )
LBB0_35:                                //  %for.end
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_37
LBB0_36:                                //  %if.then71
	addi x1, x0, 34
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_41 ( x0 )
LBB0_37:                                //  %if.else74
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	beq x1, x3, LBB0_39
LBB0_38:
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x0, x1
	jalr x0, LBB0_40 ( x0 )
LBB0_39:                                //  %if.else74
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
LBB0_40:                                //  %if.else74
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_41:                                //  %if.end79
	beqz x1, LBB0_45
LBB0_42:                                //  %if.then82
	add x3, x0, x0
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bne x4, x3, LBB0_44
LBB0_43:                                //  %if.then82
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
LBB0_44:                                //  %if.then82
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
LBB0_45:                                //  %if.end86
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_wcstol_r, ($func_end0)-($_wcstol_r)
	.cfi_endproc

	.globl	$wcstol
	.type	$wcstol,@function
$wcstol:                                //  @wcstol
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x12
	add x4, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	add x11, x0, x10
	add x12, x0, x4
	add x13, x0, x3
	add x10, x0, x5
	j $_wcstol_r
$func_end1:
	.size	$wcstol, ($func_end1)-($wcstol)
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