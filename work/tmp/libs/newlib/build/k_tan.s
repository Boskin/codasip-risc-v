	.text
	.file	"k_tan.bc"
	.globl	$__kernel_tan
	.type	$__kernel_tan,@function
$__kernel_tan:                          //  @__kernel_tan
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi2:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	sw x14, 44 ( x2 )               //  4-byte Folded Spill
	sw x13, 56 ( x2 )               //  4-byte Folded Spill
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	call $__fixdfsi
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x8
	bgtu x10, x0, LBB0_8
LBB0_1:                                 //  %entry
	lui x1, 1043333119 >> 12 & 0xfffff
	ori x28, x0, 1043333119 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x3, x1, LBB0_8
LBB0_2:                                 //  %if.then3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	nop
	or x1, x12, x1
	or x1, x3, x1
	bgtu x1, x0, LBB0_5
LBB0_3:                                 //  %if.then12
	add x10, x0, x12
	add x11, x0, x8
	call $fabs
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
LBB0_4:                                 //  %cleanup106
	add x3, x0, x10
	add x8, x0, x11
	jalr x0, LBB0_25 ( x0 )
LBB0_5:                                 //  %if.else
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	add x13, x0, x8
	call $__divdf3
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	slti x1, x0, 1
	beq x4, x1, LBB0_7
LBB0_6:                                 //  %if.else
	add x8, x0, x11
LBB0_7:                                 //  %if.else
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	bne x4, x1, LBB0_24
	jalr x0, LBB0_25 ( x0 )
LBB0_8:                                 //  %if.end16
	ori x28, x0, 1072010280 & 0xfff
	slli x28, x28, 20
	lui x1, 1072010280 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	bgeu x3, x1, LBB0_10
LBB0_9:
	add x11, x0, x8
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_19 ( x0 )
LBB0_10:                                //  %if.then19
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x8, x1, x28
	add x11, x0, x8
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x0
	bgt x1, x8, LBB0_12
LBB0_11:                                //  %if.then19
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
LBB0_12:                                //  %if.then19
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	bgt x1, x8, LBB0_14
LBB0_13:                                //  %if.then19
	add x13, x0, x8
LBB0_14:                                //  %if.then19
	lui x1, 1413754136 >> 12 & 0xfffff
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	lui x1, 1072243195 >> 12 & 0xfffff
	ori x28, x0, 1072243195 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	bgt x1, x8, LBB0_16
LBB0_15:                                //  %if.then19
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
LBB0_16:                                //  %if.then19
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	bgt x1, x8, LBB0_18
LBB0_17:                                //  %if.then19
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
LBB0_18:                                //  %if.then19
	lui x1, 856972295 >> 12 & 0xfffff
	ori x28, x0, 856972295 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	lui x1, 1015129638 >> 12 & 0xfffff
	ori x28, x0, 1015129638 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x0
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB0_19:                                //  %if.end28
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -614444173 & 0xfff
	slli x28, x28, 20
	lui x1, -614444173 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1091340853 & 0xfff
	slli x28, x28, 20
	lui x1, -1091340853 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -1606970714 & 0xfff
	slli x28, x28, 20
	lui x1, -1606970714 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1058307720 & 0xfff
	slli x28, x28, 20
	lui x1, 1058307720 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -218995455 & 0xfff
	slli x28, x28, 20
	lui x1, -218995455 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1061373144 & 0xfff
	slli x28, x28, 20
	lui x1, 1061373144 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -917109976 & 0xfff
	slli x28, x28, 20
	lui x1, -917109976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1064135970 & 0xfff
	slli x28, x28, 20
	lui x1, 1064135970 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2079926729 & 0xfff
	slli x28, x28, 20
	lui x1, -2079926729 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066820852 & 0xfff
	slli x28, x28, 20
	lui x1, 1066820852 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 286326394 & 0xfff
	slli x28, x28, 20
	lui x1, 286326394 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069617425 & 0xfff
	slli x28, x28, 20
	lui x1, 1069617425 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1958705876 & 0xfff
	slli x28, x28, 20
	lui x1, 1958705876 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1056647792 & 0xfff
	slli x28, x28, 20
	lui x1, 1056647792 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 854632425 & 0xfff
	slli x28, x28, 20
	lui x1, 854632425 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1058191375 & 0xfff
	slli x28, x28, 20
	lui x1, 1058191375 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 445452392 & 0xfff
	slli x28, x28, 20
	lui x1, 445452392 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1060120311 & 0xfff
	slli x28, x28, 20
	lui x1, 1060120311 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -18840811 & 0xfff
	slli x28, x28, 20
	lui x1, -18840811 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1062722504 & 0xfff
	slli x28, x28, 20
	lui x1, 1062722504 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -378633069 & 0xfff
	slli x28, x28, 20
	lui x1, -378633069 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1065494243 & 0xfff
	slli x28, x28, 20
	lui x1, 1065494243 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 464732670 & 0xfff
	slli x28, x28, 20
	lui x1, 464732670 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068212666 & 0xfff
	slli x28, x28, 20
	lui x1, 1068212666 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
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
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x8, x0, x10
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1431655779 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655779 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070945621 & 0xfff
	slli x28, x28, 20
	lui x1, 1070945621 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x8, x0, x10
	add x1, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__adddf3
	ori x28, x0, 1072010280 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1072010280 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_21
LBB0_20:                                //  %if.then62
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	call $__floatsidf
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 30
	andi x1, x1, 2
	slti x3, x0, 1
	sub x10, x3, x1
	call $__floatsidf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	jalr x0, LBB0_4 ( x0 )
LBB0_21:                                //  %if.end75
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 1
	beqz x1, LBB0_23
LBB0_22:                                //  %if.else79
	add x1, x0, x0
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x1
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x0
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
LBB0_23:                                //  %cleanup106
	add x8, x0, x11
LBB0_24:                                //  %cleanup106
	add x3, x0, x10
LBB0_25:                                //  %cleanup106
	add x10, x0, x3
	add x11, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi5:
	.cfi_adjust_cfa_offset -72
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__kernel_tan, ($func_end0)-($__kernel_tan)
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
