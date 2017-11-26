	.text
	.file	"e_acos.bc"
	.globl	$__ieee754_acos
	.type	$__ieee754_acos,@function
$__ieee754_acos:                        //  @__ieee754_acos
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x5, x0, x11
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x5
	lui x3, 1072693248>>12 &0xfffff
	bgtu x3, x1, LBB0_7
LBB0_1:                                 //  %if.then
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	lui x3, -1072693248 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	or x1, x4, x1
	bgtu x1, x0, LBB0_6
LBB0_2:                                 //  %if.then7
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x1, x1, x28
	add x11, x0, x10
	bgt x5, x10, LBB0_4
LBB0_3:                                 //  %if.then7
	add x11, x0, x1
LBB0_4:                                 //  %if.then7
	lui x1, 1413754136 >> 12 & 0xfffff
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x5, x10, LBB0_14
LBB0_5:                                 //  %if.then7
	add x10, x0, x1
	jalr x0, LBB0_14 ( x0 )
LBB0_6:                                 //  %if.end
	add x10, x0, x4
	add x11, x0, x5
	add x12, x0, x4
	add x13, x0, x5
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	jalr x0, LBB0_14 ( x0 )
LBB0_7:                                 //  %if.end12
	ori x28, x0, 1071644671 & 0xfff
	slli x28, x28, 20
	lui x3, 1071644671 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x1, x3, LBB0_10
LBB0_8:                                 //  %if.then14
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x3, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x3, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	ori x28, x0, 1012924417 & 0xfff
	slli x28, x28, 20
	lui x3, 1012924417 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_14
LBB0_9:                                 //  %if.end17
	add x10, x0, x4
	add x11, x0, x5
	add x12, x0, x4
	add x13, x0, x5
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
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
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
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
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
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
	add x10, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
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
	add x10, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
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
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
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
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
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
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 1413754136 >> 12 & 0xfffff
	or x10, x4, x28
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 1073291771 >> 12 & 0xfffff
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_14 ( x0 )
LBB0_10:                                //  %if.else41
	bgez x5, LBB0_12
LBB0_11:                                //  %if.then43
	add x8, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x10, x0, x4
	add x11, x0, x5
	add x12, x0, x8
	call $__adddf3
	lui x13, 1071644672>>12 &0xfffff
	add x12, x0, x8
	call $__muldf3
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
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
	add x8, x0, x10
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
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
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
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
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
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
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
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
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
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
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x8, x0, x10
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	add x3, x0, x11
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x8, x0, x1
	add x13, x0, x3
	call $__muldf3
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
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x0
	call $__muldf3
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.else71
	add x8, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x4
	add x13, x0, x5
	call $__subdf3
	lui x13, 1071644672>>12 &0xfffff
	add x12, x0, x8
	call $__muldf3
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
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
	add x8, x0, x10
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
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
	add x10, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
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
	add x10, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
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
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x8
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
LBB0_13:                                //  %cleanup110
	call $__adddf3
LBB0_14:                                //  %cleanup110
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
	.size	$__ieee754_acos, ($func_end0)-($__ieee754_acos)
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
