	.text
	.file	"mbstowcs_r.bc"
	.globl	$_mbstowcs_r
	.type	$_mbstowcs_r,@function
$_mbstowcs_r:                           //  @_mbstowcs_r
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
	sw x14, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x0
	bne x11, x10, LBB0_2
LBB0_1:
	slti x13, x0, 1
LBB0_2:                                 //  %entry
	beqz x13, LBB0_11
LBB0_3:                                 //  %while.cond.preheader.preheader
	add x10, x0, x0
LBB0_4:                                 //  %while.cond.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
	sw x13, 4 ( x2 )                //  4-byte Folded Spill
LBB0_5:                                 //  %while.cond
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, $__mbtowc & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__mbtowc >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x0, x12
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x1
	lw x15, 12 ( x2 )               //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	bgez x10, LBB0_7
LBB0_6:                                 //  %if.then4
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
	not x10, x0
	jalr x0, LBB0_11 ( x0 )
LBB0_7:                                 //  %if.else
                                        //    in Loop: Header=BB0_5 Depth=2
	bgtu x10, x0, LBB0_9
LBB0_8:
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_11 ( x0 )
LBB0_9:                                 //  %if.end8
                                        //    in Loop: Header=BB0_5 Depth=2
	add x8, x10, x8
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	addi x10, x10, 1
	add x11, x0, x0
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_5
LBB0_10:                                //  %if.then10
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x11, x1, 2
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	addi x13, x13, -1
	bgtu x13, x0, LBB0_4
LBB0_11:                                //  %cleanup
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
	.size	$_mbstowcs_r, ($func_end0)-($_mbstowcs_r)
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
