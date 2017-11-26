	.text
	.file	"ef_exp.bc"
	.globl	$__ieee754_expf
	.type	$__ieee754_expf,@function
$__ieee754_expf:                        //  @__ieee754_expf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	lui x3, 2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	and x8, x1, x7
	or x1, x3, x28
	bgtu x1, x8, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x7
	add x11, x0, x7
	call $__addsf3
	jalr x0, LBB0_24 ( x0 )
LBB0_2:                                 //  %if.end
	lui x10, 2139095040>>12 &0xfffff
	slt x9, x7, x0
	bne x8, x10, LBB0_6
LBB0_3:                                 //  %if.then3
	add x1, x0, x0
	beq x9, x1, LBB0_5
LBB0_4:                                 //  %if.then3
	add x7, x0, x1
LBB0_5:                                 //  %if.then3
	add x10, x0, x7
	jalr x0, LBB0_24 ( x0 )
LBB0_6:                                 //  %if.end6
	ori x28, x0, 1118925335 & 0xfff
	slli x28, x28, 20
	lui x1, 1118925335 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x7, x1, LBB0_24
LBB0_7:                                 //  %if.end10
	bgez x7, LBB0_10
LBB0_8:                                 //  %if.end10
	lui x1, 1120924085 >> 12 & 0xfffff
	ori x28, x0, 1120924085 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB0_10
LBB0_9:
	add x10, x0, x0
	jalr x0, LBB0_24 ( x0 )
LBB0_10:                                //  %if.end16
	ori x28, x0, 1051816473 & 0xfff
	slli x28, x28, 20
	lui x1, 1051816473 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_17
LBB0_11:                                //  %if.then19
	ori x28, x0, 1065686417 & 0xfff
	slli x28, x28, 20
	lui x1, 1065686417 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_13
LBB0_12:                                //  %if.then22
	ori x28, x0, $ln2HI & 0xfff
	slli x28, x28, 20
	lui x1, $ln2HI >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $ln2LO & 0xfff
	slli x28, x28, 20
	lui x3, $ln2LO >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x9, 2
	or x3, x3, x28
	xori x5, x9, 1
	add x1, x1, x4
	add x3, x3, x4
	sub x4, x5, x9
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	lw x8, 0 ( x3 )
	lw x11, 0 ( x1 )
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.else
	ori x28, x0, 1069066811 & 0xfff
	slli x28, x28, 20
	lui x1, 1069066811 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x7
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x9
	call $__mulsf3
	ori x28, x0, $halF & 0xfff
	slli x28, x28, 20
	lui x1, $halF >> 12 & 0xfffff
	srli x28, x28, 20
	slli x3, x8, 2
	or x1, x1, x28
	add x1, x1, x3
	lw x11, 0 ( x1 )
	nop
	call $__addsf3
	call $__fixsfsi
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $__floatsisf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	lui x1, 1060204928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	lui x1, 924317649 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x8
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x10
LBB0_14:                                //  %if.end33
	add x10, x0, x7
	call $__subsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
LBB0_15:                                //  %if.end46
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	ori x28, x0, 858897228 & 0xfff
	slli x28, x28, 20
	lui x1, 858897228 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__mulsf3
	ori x28, x0, -1243747826 & 0xfff
	slli x28, x28, 20
	lui x1, -1243747826 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 948613973 & 0xfff
	slli x28, x28, 20
	lui x1, 948613973 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1154086047 & 0xfff
	slli x28, x28, 20
	lui x1, -1154086047 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1042983595 & 0xfff
	slli x28, x28, 20
	lui x1, 1042983595 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_21
LBB0_16:                                //  %if.then60
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB0_24 ( x0 )
LBB0_17:                                //  %if.else35
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x7
	call $__addsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__gtsf2
	add x3, x0, x0
	bgt x10, x0, LBB0_19
LBB0_18:
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_15 ( x0 )
LBB0_19:                                //  %if.else35
	lui x1, 830472191 >> 12 & 0xfffff
	ori x28, x0, 830472191 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_18
LBB0_20:                                //  %if.then42
	lui x11, 1065353216>>12 &0xfffff
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	jalr x0, LBB0_24 ( x0 )
LBB0_21:                                //  %if.else65
	lui x10, 1073741824>>12 &0xfffff
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	slti x3, x8, -125
	slli x1, x8, 23
	bgtu x3, x0, LBB0_23
LBB0_22:                                //  %if.then75
	add x10, x1, x10
	jalr x0, LBB0_24 ( x0 )
LBB0_23:                                //  %if.else88
	add x1, x10, x1
	lui x3, 838860800>>12 &0xfffff
	add x10, x3, x1
	lui x11, 226492416>>12 &0xfffff
	call $__mulsf3
LBB0_24:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_expf, ($func_end0)-($__ieee754_expf)
	.cfi_endproc

	.address_space	0	
	.type	$ln2HI,@object          //  @ln2HI
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
$ln2HI:
	.long	1060204928              //  float 0.693138123
	.long	3207688576              //  float -0.693138123
	.size	$ln2HI, 8

	.address_space	0	
	.type	$ln2LO,@object          //  @ln2LO
	.p2align	2
$ln2LO:
	.long	924317649               //  float 9.05800061E-6
	.long	3071801297              //  float -9.05800061E-6
	.size	$ln2LO, 8

	.address_space	0	
	.type	$halF,@object           //  @halF
	.p2align	2
$halF:
	.long	1056964608              //  float 0.5
	.long	3204448256              //  float -0.5
	.size	$halF, 8


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
