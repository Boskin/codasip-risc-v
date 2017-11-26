	.text
	.file	"e_exp.bc"
	.globl	$__ieee754_exp
	.type	$__ieee754_exp,@function
$__ieee754_exp:                         //  @__ieee754_exp
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x14, x0, x11
	add x15, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 1082535490 & 0xfff
	slli x28, x28, 20
	lui x1, 1082535490 >> 12 & 0xfffff
	srli x28, x28, 20
	and x8, x3, x14
	or x3, x1, x28
	slt x11, x14, x0
	bgtu x3, x8, LBB0_11
LBB0_1:                                 //  %if.then
	lui x3, 2146435072>>12 &0xfffff
	bgtu x3, x8, LBB0_9
LBB0_2:                                 //  %if.then3
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x4, x0, x0
	and x1, x1, x14
	add x3, x0, x15
	beq x11, x4, LBB0_4
LBB0_3:                                 //  %if.then3
	add x3, x0, x4
LBB0_4:                                 //  %if.then3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	or x1, x15, x1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x14
	beq x11, x4, LBB0_6
LBB0_5:                                 //  %if.then3
	add x8, x0, x4
LBB0_6:                                 //  %if.then3
	add x10, x0, x15
	add x11, x0, x14
	add x12, x0, x15
	add x13, x0, x14
	call $__adddf3
	add x3, x0, x0
	add x1, x0, x8
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	nop
	beq x5, x3, LBB0_8
LBB0_7:                                 //  %if.then3
	add x1, x0, x11
LBB0_8:                                 //  %if.then3
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	bne x5, x3, LBB0_27
	jalr x0, LBB0_28 ( x0 )
LBB0_9:                                 //  %if.end
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -17155601 & 0xfff
	slli x28, x28, 20
	lui x3, -17155601 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x3, x28
	ori x28, x0, 1082535490 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x15
	add x11, x0, x14
	add x8, x0, x14
	sw x15, 40 ( x2 )               //  4-byte Folded Spill
	call $__gtdf2
	ble x10, x0, LBB0_14
LBB0_10:
	add x4, x0, x0
	lui x1, 2146435072>>12 &0xfffff
	jalr x0, LBB0_28 ( x0 )
LBB0_11:                                //  %if.end19
	ori x28, x0, 1071001155 & 0xfff
	slli x28, x28, 20
	lui x1, 1071001155 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_19
LBB0_12:                                //  %if.then21
	ori x28, x0, 1072734897 & 0xfff
	slli x28, x28, 20
	lui x1, 1072734897 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_15
LBB0_13:                                //  %if.then23
	ori x28, x0, $ln2LO & 0xfff
	slli x28, x28, 20
	lui x1, $ln2LO >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $ln2LO+4 & 0xfff
	slli x28, x28, 20
	lui x3, $ln2LO+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $ln2HI & 0xfff
	slli x28, x28, 20
	lui x4, $ln2HI >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $ln2HI+4 & 0xfff
	slli x28, x28, 20
	lui x5, $ln2HI+4 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x7, x11, 3
	or x5, x5, x28
	xori x9, x11, 1
	add x1, x1, x7
	add x3, x3, x7
	add x4, x4, x7
	add x5, x5, x7
	sub x7, x9, x11
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x3 )
	nop
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lw x8, 0 ( x1 )
	lw x13, 0 ( x5 )
	lw x12, 0 ( x4 )
	jalr x0, LBB0_16 ( x0 )
LBB0_14:                                //  %if.end15
	ori x28, x0, -718458799 & 0xfff
	slli x28, x28, 20
	lui x1, -718458799 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1064875760 & 0xfff
	slli x28, x28, 20
	lui x1, -1064875760 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x11, x0, x8
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__ltdf2
	add x1, x0, x0
	add x4, x0, x1
	lw x14, 32 ( x2 )               //  4-byte Folded Reload
	add x15, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	bgt x0, x10, LBB0_28
LBB0_15:                                //  %if.else27
	sw x15, 40 ( x2 )               //  4-byte Folded Spill
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1697350398 & 0xfff
	slli x28, x28, 20
	lui x1, 1697350398 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073157447 & 0xfff
	slli x28, x28, 20
	lui x1, 1073157447 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x15
	add x8, x0, x11
	add x11, x0, x14
	call $__muldf3
	ori x28, x0, $halF+4 & 0xfff
	slli x28, x28, 20
	lui x1, $halF+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $halF & 0xfff
	slli x28, x28, 20
	lui x3, $halF >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x8, 3
	or x3, x3, x28
	add x1, x1, x4
	add x3, x3, x4
	lw x12, 0 ( x3 )
	lw x13, 0 ( x1 )
	nop
	call $__adddf3
	call $__fixdfsi
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x8, x0, x10
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -18874368 & 0xfff
	slli x28, x28, 20
	lui x1, -18874368 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072049730 & 0xfff
	slli x28, x28, 20
	lui x1, 1072049730 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1038760431 & 0xfff
	slli x28, x28, 20
	lui x1, 1038760431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	lw x15, 40 ( x2 )               //  4-byte Folded Reload
	lw x14, 32 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x10
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
LBB0_16:                                //  %if.end34
	add x10, x0, x15
	add x11, x0, x14
	call $__subdf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
LBB0_17:                                //  %if.end47
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1925096656 & 0xfff
	slli x28, x28, 20
	lui x1, 1925096656 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1046886249 & 0xfff
	slli x28, x28, 20
	lui x1, 1046886249 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -976065551 & 0xfff
	slli x28, x28, 20
	lui x1, -976065551 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1094992575 & 0xfff
	slli x28, x28, 20
	lui x1, -1094992575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1356472788 & 0xfff
	slli x28, x28, 20
	lui x1, -1356472788 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1058100842 & 0xfff
	slli x28, x28, 20
	lui x1, 1058100842 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 381599123 & 0xfff
	slli x28, x28, 20
	lui x1, 381599123 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1083784852 & 0xfff
	slli x28, x28, 20
	lui x1, -1083784852 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655742 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655742 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069897045 & 0xfff
	slli x28, x28, 20
	lui x1, 1069897045 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x3, x0, x10
	add x1, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x8, x0, x3
	add x12, x0, x3
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__muldf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_24
LBB0_18:                                //  %if.then61
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x12
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_23 ( x0 )
LBB0_19:                                //  %if.else36
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x15, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x15
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x14
	call $__adddf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	call $__gtdf2
	bgt x10, x0, LBB0_21
LBB0_20:
                                        //  implicit-def: %rf_xpr_1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_17 ( x0 )
LBB0_21:                                //  %if.else36
	lui x1, 1043333119 >> 12 & 0xfffff
	ori x28, x0, 1043333119 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_20
LBB0_22:                                //  %if.then43
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
LBB0_23:                                //  %cleanup115
	add x4, x0, x10
	add x1, x0, x11
	jalr x0, LBB0_28 ( x0 )
LBB0_24:                                //  %if.else66
	add x10, x0, x0
	lui x11, 1073741824>>12 &0xfffff
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x4, x0, x10
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	slti x3, x1, -1021
	slli x1, x1, 20
	bgtu x3, x0, LBB0_26
LBB0_25:                                //  %if.then76
	add x1, x1, x11
	jalr x0, LBB0_28 ( x0 )
LBB0_26:                                //  %if.else93
	add x1, x11, x1
	lui x3, 1048576000>>12 &0xfffff
	add x11, x3, x1
	add x12, x0, x0
	lui x13, 24117248>>12 &0xfffff
	add x10, x0, x4
	call $__muldf3
	add x1, x0, x11
LBB0_27:                                //  %cleanup115
	add x4, x0, x10
LBB0_28:                                //  %cleanup115
	add x10, x0, x4
	add x11, x0, x1
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
	.size	$__ieee754_exp, ($func_end0)-($__ieee754_exp)
	.cfi_endproc

	.address_space	0	
	.type	$ln2HI,@object          //  @ln2HI
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
$ln2HI:
	.quad	4604418534311723008     //  double 0.69314718036912382
	.quad	-4618953502543052800    //  double -0.69314718036912382
	.size	$ln2HI, 16

	.address_space	0	
	.type	$ln2LO,@object          //  @ln2LO
	.p2align	3
$ln2LO:
	.quad	4461442080421002358     //  double 1.9082149292705877E-10
	.quad	-4761929956433773450    //  double -1.9082149292705877E-10
	.size	$ln2LO, 16

	.address_space	0	
	.type	$halF,@object           //  @halF
	.p2align	3
$halF:
	.quad	4602678819172646912     //  double 0.5
	.quad	-4620693217682128896    //  double -0.5
	.size	$halF, 16


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
