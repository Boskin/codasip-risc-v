	.text
	.file	"cephes_subr.bc"
	.globl	$_cchsh
	.type	$_cchsh,@function
$_cchsh:                                //  @_cchsh
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	call $fabs
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	call $__ledf2
	bgt x10, x0, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $cosh
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x11, 4 ( x1 )
	sw x10, 0 ( x1 )
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $sinh
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.else
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $exp
	add x8, x0, x10
	add x1, x0, x11
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x0
	lui x11, 1071644672>>12 &0xfffff
	add x12, x0, x8
	add x13, x0, x1
	call $__divdf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	call $__muldf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x11, 4 ( x1 )
	sw x10, 0 ( x1 )
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_3:                                 //  %if.end
	sw x11, 4 ( x1 )
	sw x10, 0 ( x1 )
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
	.size	$_cchsh, ($func_end0)-($_cchsh)
	.cfi_endproc

	.globl	$_redupi
	.type	$_redupi,@function
$_redupi:                               //  @_redupi
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	call $__divdf3
	add x8, x0, x0
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__gedf2
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	bgt x8, x10, LBB1_2
LBB1_1:                                 //  %entry
	lui x13, 1071644672>>12 &0xfffff
LBB1_2:                                 //  %entry
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__adddf3
	call $__fixdfsi
	call $__floatsidf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lui x12, 1409286144>>12 &0xfffff
	lui x1, -1073143301 >> 12 & 0xfffff
	ori x28, x0, -1073143301 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lui x12, 268435456>>12 &0xfffff
	lui x1, -1105130682 >> 12 & 0xfffff
	ori x28, x0, -1105130682 & 0xfff
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
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lui x1, 826654830 >> 12 & 0xfffff
	ori x28, x0, 826654830 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, -1133878685 >> 12 & 0xfffff
	ori x28, x0, -1133878685 & 0xfff
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
	.size	$_redupi, ($func_end1)-($_redupi)
	.cfi_endproc

	.globl	$_ctans
	.type	$_ctans,@function
$_ctans:                                //  @_ctans
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -144
$cfi16:
	.cfi_adjust_cfa_offset 144
	sw x1, 140 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 132 ( x2 )               //  4-byte Folded Spill
	lw x3, 12 ( x10 )
	lw x4, 8 ( x10 )
	lw x5, 0 ( x10 )
	lw x7, 4 ( x10 )
	addi x1, x2, 116
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x4, 8 ( x1 )
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	sw x3, 128 ( x2 )
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	sw x7, 4 ( x1 )
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	sw x5, 116 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 84
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 128 ( x2 )
	nop
	sw x1, 96 ( x2 )
	lw x1, 116 ( x2 )
	nop
	sw x1, 84 ( x2 )
	call $creal
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $fabs
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
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	call $__divdf3
	add x8, x0, x0
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__gedf2
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	bgt x8, x10, LBB2_2
LBB2_1:                                 //  %entry
	lui x13, 1071644672>>12 &0xfffff
LBB2_2:                                 //  %entry
	addi x1, x2, 100
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 100 ( x2 )
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 112 ( x2 )
	addi x4, x2, 68
	lw x3, 8 ( x1 )
	nop
	sw x3, 8 ( x4 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x4 )
	lw x1, 112 ( x2 )
	nop
	sw x1, 80 ( x2 )
	lw x1, 100 ( x2 )
	nop
	sw x1, 68 ( x2 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__adddf3
	call $__fixdfsi
	call $__floatsidf
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lui x12, 1409286144>>12 &0xfffff
	lui x1, -1073143301 >> 12 & 0xfffff
	ori x28, x0, -1073143301 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lui x12, 268435456>>12 &0xfffff
	lui x1, -1105130682 >> 12 & 0xfffff
	ori x28, x0, -1105130682 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lui x1, 826654830 >> 12 & 0xfffff
	ori x28, x0, 826654830 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, -1133878685 >> 12 & 0xfffff
	ori x28, x0, -1133878685 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 68
	call $cimag
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $fabs
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	lui x1, 1072693248>>12 &0xfffff
	add x3, x0, x0
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x3
	add x4, x0, x3
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
LBB2_3:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x4
	add x1, x0, x0
	add x12, x0, x1
	lui x1, 1072693248>>12 &0xfffff
	add x13, x0, x1
	call $__adddf3
	add x8, x0, x10
	add x1, x0, x11
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x1
	call $__muldf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x8, x0, x10
	add x1, x0, x11
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x1
	call $__muldf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	call $__subdf3
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x8, x0, x10
	add x1, x0, x11
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x1
	call $__adddf3
	add x3, x0, x10
	add x1, x0, x11
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__divdf3
	call $fabs
	ori x28, x0, 1084318799 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1084318799 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, 1017099409 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1017099409 >> 12 & 0xfffff
	or x13, x1, x28
	call $__gtdf2
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	bgt x10, x0, LBB2_3
LBB2_4:                                 //  %do.end
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 132 ( x2 )               //  4-byte Folded Reload
	lw x1, 140 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 144
$cfi19:
	.cfi_adjust_cfa_offset -144
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$_ctans, ($func_end2)-($_ctans)
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
