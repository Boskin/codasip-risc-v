	.text
	.file	"kf_tan.bc"
	.globl	$__kernel_tanf
	.type	$__kernel_tanf,@function
$__kernel_tanf:                         //  @__kernel_tanf
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
	sw x12, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x10
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	call $__fixsfsi
	bgtu x10, x0, LBB0_5
LBB0_1:                                 //  %entry
	lui x1, 830472191 >> 12 & 0xfffff
	ori x28, x0, 830472191 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_5
LBB0_2:                                 //  %if.then3
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x3, 1
	or x1, x8, x1
	bgtu x1, x0, LBB0_4
LBB0_3:                                 //  %if.then6
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabsf
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	jalr x0, LBB0_16 ( x0 )
LBB0_4:                                 //  %if.else
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__divsf3
	slti x1, x0, 1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_16
	jalr x0, LBB0_17 ( x0 )
LBB0_5:                                 //  %if.end10
	ori x28, x0, 1059889472 & 0xfff
	slli x28, x28, 20
	lui x1, 1059889472 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	bgeu x8, x1, LBB0_7
LBB0_6:
	add x10, x0, x3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_12 ( x0 )
LBB0_7:                                 //  %if.then13
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	bgt x1, x8, LBB0_9
LBB0_8:                                 //  %if.then13
	add x11, x0, x8
LBB0_9:                                 //  %if.then13
	lui x1, 1061752794 >> 12 & 0xfffff
	ori x28, x0, 1061752794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $__subsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	bgt x1, x8, LBB0_11
LBB0_10:                                //  %if.then13
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
LBB0_11:                                //  %if.then13
	lui x1, 857874792 >> 12 & 0xfffff
	ori x28, x0, 857874792 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $__subsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x0
LBB0_12:                                //  %if.end22
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, -1214534049 & 0xfff
	slli x28, x28, 20
	lui x1, -1214534049 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 950268997 & 0xfff
	slli x28, x28, 20
	lui x1, 950268997 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 974792392 & 0xfff
	slli x28, x28, 20
	lui x1, 974792392 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 996894998 & 0xfff
	slli x28, x28, 20
	lui x1, 996894998 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1018374052 & 0xfff
	slli x28, x28, 20
	lui x1, 1018374052 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1040746633 & 0xfff
	slli x28, x28, 20
	lui x1, 1040746633 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 936989572 & 0xfff
	slli x28, x28, 20
	lui x1, 936989572 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 949338234 & 0xfff
	slli x28, x28, 20
	lui x1, 949338234 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 964769721 & 0xfff
	slli x28, x28, 20
	lui x1, 964769721 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 985587272 & 0xfff
	slli x28, x28, 20
	lui x1, 985587272 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1007761183 & 0xfff
	slli x28, x28, 20
	lui x1, 1007761183 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1029508561 & 0xfff
	slli x28, x28, 20
	lui x1, 1029508561 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x8, x0, x10
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	ori x28, x0, 1051372203 & 0xfff
	slli x28, x28, 20
	lui x1, 1051372203 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	add x8, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	ori x28, x0, 1059889472 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1059889472 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_14
LBB0_13:                                //  %if.then56
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatsisf
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 30
	andi x1, x1, 2
	slti x3, x0, 1
	sub x10, x3, x1
	call $__floatsisf
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	jalr x0, LBB0_16 ( x0 )
LBB0_14:                                //  %if.end69
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 1
	beqz x1, LBB0_16
LBB0_15:                                //  %if.else73
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	lui x1, -4096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	and x1, x1, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x1
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	and x8, x1, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
LBB0_16:                                //  %cleanup
	add x8, x0, x10
LBB0_17:                                //  %cleanup
	add x10, x0, x8
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
	.size	$__kernel_tanf, ($func_end0)-($__kernel_tanf)
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
