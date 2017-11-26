	.text
	.file	"e_asin.bc"
	.globl	$__ieee754_asin
	.type	$__ieee754_asin,@function
$__ieee754_asin:                        //  @__ieee754_asin
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x11
	lui x1, 1072693248>>12 &0xfffff
	bgtu x1, x3, LBB0_4
LBB0_1:                                 //  %if.then
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	lui x1, -1072693248 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x3
	or x1, x8, x1
	bgtu x1, x0, LBB0_15
LBB0_2:                                 //  %if.then7
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x1, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 856972295 & 0xfff
	slli x28, x28, 20
	lui x1, 856972295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1016178214 & 0xfff
	slli x28, x28, 20
	lui x1, 1016178214 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	jalr x0, LBB0_16 ( x0 )
LBB0_4:                                 //  %if.else
	ori x28, x0, 1071644671 & 0xfff
	slli x28, x28, 20
	lui x1, 1071644671 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x1, LBB0_7
LBB0_5:                                 //  %if.then12
	ori x28, x0, 1044381695 & 0xfff
	slli x28, x28, 20
	lui x1, 1044381695 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x3, x1, LBB0_18
LBB0_6:                                 //  %if.then14
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
	add x10, x0, x8
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__gtdf2
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	bgt x10, x0, LBB0_17
LBB0_7:                                 //  %if.end45
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $fabs
	add x1, x0, x10
	add x3, x0, x11
	add x8, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lui x13, 1071644672>>12 &0xfffff
	add x12, x0, x8
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 234747657 & 0xfff
	slli x28, x28, 20
	lui x1, 234747657 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1057111521 & 0xfff
	slli x28, x28, 20
	lui x1, 1057111521 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 1963045512 & 0xfff
	slli x28, x28, 20
	lui x1, 1963045512 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1061810144 & 0xfff
	slli x28, x28, 20
	lui x1, 1061810144 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1251438789 & 0xfff
	slli x28, x28, 20
	lui x1, -1251438789 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079737816 & 0xfff
	slli x28, x28, 20
	lui x1, -1079737816 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 243811413 & 0xfff
	slli x28, x28, 20
	lui x1, 243811413 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070186837 & 0xfff
	slli x28, x28, 20
	lui x1, 1070186837 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 65761149 & 0xfff
	slli x28, x28, 20
	lui x1, 65761149 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076570606 & 0xfff
	slli x28, x28, 20
	lui x1, -1076570606 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655765 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655765 >> 12 & 0xfffff
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
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1322347902 & 0xfff
	slli x28, x28, 20
	lui x1, -1322347902 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068742853 & 0xfff
	slli x28, x28, 20
	lui x1, 1068742853 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 462225753 & 0xfff
	slli x28, x28, 20
	lui x1, 462225753 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075444116 & 0xfff
	slli x28, x28, 20
	lui x1, -1075444116 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1671853368 & 0xfff
	slli x28, x28, 20
	lui x1, -1671853368 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073752805 & 0xfff
	slli x28, x28, 20
	lui x1, 1073752805 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 478817611 & 0xfff
	slli x28, x28, 20
	lui x1, 478817611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1073530329 & 0xfff
	slli x28, x28, 20
	lui x1, -1073530329 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x8, x0, x11
	ori x28, x0, 1072640819 & 0xfff
	slli x28, x28, 20
	lui x1, 1072640819 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x3, LBB0_9
LBB0_8:                                 //  %if.then69
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	ori x28, x0, 856972295 & 0xfff
	slli x28, x28, 20
	lui x1, 856972295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1131305434 & 0xfff
	slli x28, x28, 20
	lui x1, -1131305434 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x4, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x4, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %if.else76
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__adddf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 856972295 & 0xfff
	slli x28, x28, 20
	lui x4, 856972295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, 1016178214 & 0xfff
	slli x28, x28, 20
	lui x4, 1016178214 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x4, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1072243195 & 0xfff
	slli x28, x28, 20
	lui x4, 1072243195 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x4, x28
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x13, x0, x11
	add x12, x0, x10
LBB0_10:                                //  %if.end98
	add x10, x0, x0
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x12
	sw x13, 40 ( x2 )               //  4-byte Folded Spill
	call $__subdf3
	add x3, x0, x0
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB0_12
LBB0_11:                                //  %if.end98
	add x8, x0, x10
LBB0_12:                                //  %if.end98
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	bgt x1, x3, LBB0_14
LBB0_13:                                //  %if.end98
	add x4, x0, x11
LBB0_14:                                //  %if.end98
	add x10, x0, x8
	add x11, x0, x4
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
LBB0_15:                                //  %if.end
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
LBB0_16:                                //  %cleanup103
	add x8, x0, x10
LBB0_17:                                //  %cleanup103
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi8:
	.cfi_adjust_cfa_offset -56
$cfi9:
	.cfi_def_cfa 2, 0
	ret
LBB0_18:                                //  %if.else19
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 234747657 & 0xfff
	slli x28, x28, 20
	lui x1, 234747657 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1057111521 & 0xfff
	slli x28, x28, 20
	lui x1, 1057111521 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	ori x28, x0, 1963045512 & 0xfff
	slli x28, x28, 20
	lui x1, 1963045512 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1061810144 & 0xfff
	slli x28, x28, 20
	lui x1, 1061810144 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1251438789 & 0xfff
	slli x28, x28, 20
	lui x1, -1251438789 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079737816 & 0xfff
	slli x28, x28, 20
	lui x1, -1079737816 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 243811413 & 0xfff
	slli x28, x28, 20
	lui x1, 243811413 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070186837 & 0xfff
	slli x28, x28, 20
	lui x1, 1070186837 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 65761149 & 0xfff
	slli x28, x28, 20
	lui x1, 65761149 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076570606 & 0xfff
	slli x28, x28, 20
	lui x1, -1076570606 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655765 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655765 >> 12 & 0xfffff
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
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1322347902 & 0xfff
	slli x28, x28, 20
	lui x1, -1322347902 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068742853 & 0xfff
	slli x28, x28, 20
	lui x1, 1068742853 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 462225753 & 0xfff
	slli x28, x28, 20
	lui x1, 462225753 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075444116 & 0xfff
	slli x28, x28, 20
	lui x1, -1075444116 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1671853368 & 0xfff
	slli x28, x28, 20
	lui x1, -1671853368 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073752805 & 0xfff
	slli x28, x28, 20
	lui x1, 1073752805 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 478817611 & 0xfff
	slli x28, x28, 20
	lui x1, 478817611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1073530329 & 0xfff
	slli x28, x28, 20
	lui x1, -1073530329 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x12, x0, x8
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	jalr x0, LBB0_16 ( x0 )
$func_end0:
	.size	$__ieee754_asin, ($func_end0)-($__ieee754_asin)
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
