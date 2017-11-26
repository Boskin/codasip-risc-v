	.text
	.file	"cephes_subrf.bc"
	.globl	$_cchshf
	.type	$_cchshf,@function
$_cchshf:                               //  @_cchshf
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
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	call $fabsf
	lui x11, 1056964608>>12 &0xfffff
	call $__lesf2
	bgt x10, x0, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	call $coshf
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	add x10, x0, x8
	call $sinhf
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.else
	add x10, x0, x8
	call $expf
	add x8, x0, x10
	lui x10, 1056964608>>12 &0xfffff
	add x11, x0, x8
	call $__divsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	add x8, x0, x10
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_3:                                 //  %if.end
	sw x10, 0 ( x1 )
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
	.size	$_cchshf, ($func_end0)-($_cchshf)
	.cfi_endproc

	.globl	$_redupif
	.type	$_redupif,@function
$_redupif:                              //  @_redupif
	.cfi_startproc
  .codasip_retval_regs 10
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
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__divsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__gesf2
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x1, x0, x0
	bgt x1, x10, LBB1_2
LBB1_1:                                 //  %entry
	lui x11, 1056964608>>12 &0xfffff
LBB1_2:                                 //  %entry
	add x10, x0, x8
	call $__addsf3
	call $__fixsfsi
	call $__floatsisf
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__extendsfdf2
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lui x1, -1073143808 >> 12 & 0xfffff
	ori x28, x0, -1073143808 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	add x1, x0, x0
	add x12, x0, x1
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lui x1, -1085295616 >> 12 & 0xfffff
	ori x28, x0, -1085295616 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lui x1, 407279769 >> 12 & 0xfffff
	ori x28, x0, 407279769 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, -1098628051 >> 12 & 0xfffff
	ori x28, x0, -1098628051 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	call $__truncdfsf2
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi12:
	.cfi_adjust_cfa_offset -32
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_redupif, ($func_end1)-($_redupif)
	.cfi_endproc

	.globl	$_ctansf
	.type	$_ctansf,@function
$_ctansf:                               //  @_ctansf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi16:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	lw x8, 4 ( x10 )
	lw x1, 0 ( x10 )
	sw x8, 64 ( x2 )
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 60 ( x2 )
	sw x1, 44 ( x2 )
	sw x8, 48 ( x2 )
	addi x10, x2, 44
	call $crealf
	add x11, x0, x10
	call $__addsf3
	call $fabsf
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	call $__divsf3
	add x11, x0, x0
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__gesf2
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x1, x0, x0
	bgt x1, x10, LBB2_2
LBB2_1:                                 //  %entry
	lui x11, 1056964608>>12 &0xfffff
LBB2_2:                                 //  %entry
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x2 )
	sw x8, 56 ( x2 )
	sw x8, 40 ( x2 )
	lw x1, 52 ( x2 )
	nop
	sw x1, 36 ( x2 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	call $__fixsfsi
	call $__floatsisf
	add x8, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__extendsfdf2
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lui x1, -1073143808 >> 12 & 0xfffff
	ori x28, x0, -1073143808 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x12, x0, x1
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lui x1, -1085295616 >> 12 & 0xfffff
	ori x28, x0, -1085295616 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x8, x0, x0
	add x12, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lui x1, 407279769 >> 12 & 0xfffff
	ori x28, x0, 407279769 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, -1098628051 >> 12 & 0xfffff
	ori x28, x0, -1098628051 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	call $__truncdfsf2
	add x11, x0, x10
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 36
	call $cimagf
	add x11, x0, x10
	call $__addsf3
	call $fabsf
	add x11, x0, x10
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lui x1, 1065353216>>12 &0xfffff
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
LBB2_3:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	lui x1, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x8, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x8, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x8, x0, x1
	add x11, x0, x8
	call $__divsf3
	call $fabsf
	call $__extendsfdf2
	ori x28, x0, 698640683 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 698640683 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, 1046485803 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1046485803 >> 12 & 0xfffff
	or x13, x1, x28
	call $__gtdf2
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	bgt x10, x0, LBB2_3
LBB2_4:                                 //  %do.end
	add x10, x0, x8
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi19:
	.cfi_adjust_cfa_offset -80
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$_ctansf, ($func_end2)-($_ctansf)
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
