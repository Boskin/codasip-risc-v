	.text
	.file	"envz_strip.bc"
	.globl	$envz_strip
	.type	$envz_strip,@function
$envz_strip:                            //  @envz_strip
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	add x5, x0, x11
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 0 ( x5 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	add x12, x0, x8
	call $argz_next
	add x8, x0, x10
	beqz x8, LBB0_6
LBB0_2:                                 //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x0, x8
	addi x11, x0, 61
	call $strchr
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_1
LBB0_3:                                 //  %if.then
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x0, x8
	call $strlen
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	addi x7, x10, 1
	add x11, x7, x8
	addi x4, x11, -1
	add x3, x1, x3
	beq x3, x4, LBB0_5
LBB0_4:                                 //  %if.then7
                                        //    in Loop: Header=BB0_1 Depth=1
	not x1, x10
	sub x1, x1, x8
	add x12, x3, x1
	add x10, x0, x8
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	call $memmove
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	nop
LBB0_5:                                 //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	sub x1, x1, x7
	sw x1, 0 ( x5 )
	slti x1, x0, 1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_1 ( x0 )
LBB0_6:                                 //  %while.end
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beqz x1, LBB0_8
LBB0_7:                                 //  %if.then14
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x8 )
	nop
	call $realloc
	sw x10, 0 ( x8 )
LBB0_8:                                 //  %if.end16
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
	.size	$envz_strip, ($func_end0)-($envz_strip)
	.cfi_endproc


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
