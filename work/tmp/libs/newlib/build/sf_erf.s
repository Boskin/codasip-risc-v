	.text
	.file	"sf_erf.bc"
	.globl	$erff
	.type	$erff,@function
$erff:                                  //  @erff
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
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x4
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x8, LBB0_2
LBB0_1:                                 //  %if.then
	srli x1, x4, 30
	andi x1, x1, 2
	slti x3, x0, 1
	sub x10, x3, x1
	add x8, x0, x4
	call $__floatsisf
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__divsf3
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_24 ( x0 )
LBB0_2:                                 //  %if.end
	ori x28, x0, 1062731775 & 0xfff
	slli x28, x28, 20
	lui x1, 1062731775 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_9
LBB0_3:                                 //  %if.then3
	ori x28, x0, 830472191 & 0xfff
	slli x28, x28, 20
	lui x1, 830472191 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_8
LBB0_4:                                 //  %if.then6
	ori x28, x0, 67108863 & 0xfff
	slli x28, x28, 20
	lui x1, 67108863 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_6
LBB0_5:                                 //  %if.then9
	lui x11, 1090519040>>12 &0xfffff
	add x10, x0, x4
	add x8, x0, x4
	call $__mulsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1065579988 & 0xfff
	slli x28, x28, 20
	lui x1, 1065579988 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lui x11, 1040187392>>12 &0xfffff
	call $__mulsf3
	jalr x0, LBB0_25 ( x0 )
LBB0_6:                                 //  %if.end13
	ori x28, x0, 1040414164 & 0xfff
	slli x28, x28, 20
	lui x1, 1040414164 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x4
	add x8, x0, x4
LBB0_7:                                 //  %cleanup
	call $__mulsf3
	add x11, x0, x8
	jalr x0, LBB0_24 ( x0 )
LBB0_8:                                 //  %if.end16
	add x10, x0, x4
	add x11, x0, x4
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, -1211672911 & 0xfff
	slli x28, x28, 20
	lui x1, -1211672911 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, -1145236343 & 0xfff
	slli x28, x28, 20
	lui x1, -1145236343 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1125559665 & 0xfff
	slli x28, x28, 20
	lui x1, -1125559665 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1096389653 & 0xfff
	slli x28, x28, 20
	lui x1, -1096389653 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1040414164 & 0xfff
	slli x28, x28, 20
	lui x1, 1040414164 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1232805350 & 0xfff
	slli x28, x28, 20
	lui x1, -1232805350 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 957017673 & 0xfff
	slli x28, x28, 20
	lui x1, 957017673 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1000767766 & 0xfff
	slli x28, x28, 20
	lui x1, 1000767766 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1032137315 & 0xfff
	slli x28, x28, 20
	lui x1, 1032137315 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1053539278 & 0xfff
	slli x28, x28, 20
	lui x1, 1053539278 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	jalr x0, LBB0_7 ( x0 )
LBB0_9:                                 //  %if.end39
	ori x28, x0, 1067450367 & 0xfff
	slli x28, x28, 20
	lui x1, 1067450367 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_13
LBB0_10:                                //  %if.then42
	add x10, x0, x4
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x8, x0, x10
	ori x28, x0, -1156712000 & 0xfff
	slli x28, x28, 20
	lui x1, -1156712000 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 1024545203 & 0xfff
	slli x28, x28, 20
	lui x1, 1024545203 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1109189438 & 0xfff
	slli x28, x28, 20
	lui x1, -1109189438 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1050869332 & 0xfff
	slli x28, x28, 20
	lui x1, 1050869332 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1094807032 & 0xfff
	slli x28, x28, 20
	lui x1, -1094807032 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1054107653 & 0xfff
	slli x28, x28, 20
	lui x1, 1054107653 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1155871290 & 0xfff
	slli x28, x28, 20
	lui x1, -1155871290 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1011112611 & 0xfff
	slli x28, x28, 20
	lui x1, 1011112611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 1012887059 & 0xfff
	slli x28, x28, 20
	lui x1, 1012887059 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1040265991 & 0xfff
	slli x28, x28, 20
	lui x1, 1040265991 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1033050855 & 0xfff
	slli x28, x28, 20
	lui x1, 1033050855 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1057642373 & 0xfff
	slli x28, x28, 20
	lui x1, 1057642373 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1037693745 & 0xfff
	slli x28, x28, 20
	lui x1, 1037693745 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x1, x0, x10
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB0_12
LBB0_11:                                //  %if.then70
	ori x28, x0, 1062753803 & 0xfff
	slli x28, x28, 20
	lui x3, 1062753803 >> 12 & 0xfffff
	jalr x0, LBB0_23 ( x0 )
LBB0_12:                                //  %if.else
	ori x28, x0, -1084729845 & 0xfff
	slli x28, x28, 20
	lui x3, -1084729845 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	jalr x0, LBB0_21 ( x0 )
LBB0_13:                                //  %if.end75
	lui x1, 1086324736>>12 &0xfffff
	bgtu x1, x8, LBB0_16
LBB0_14:                                //  %if.then78
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	not x3, x0
	or x10, x1, x28
	ble x4, x3, LBB0_25
LBB0_15:
	lui x10, 1065353216>>12 &0xfffff
	jalr x0, LBB0_25 ( x0 )
LBB0_16:                                //  %if.end83
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x4
	call $fabsf
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1077336941 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336941 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_18
LBB0_17:                                //  %if.then89
	ori x28, x0, -1055062146 & 0xfff
	slli x28, x28, 20
	lui x1, -1055062146 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, -1029532885 & 0xfff
	slli x28, x28, 20
	lui x1, -1029532885 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1019700505 & 0xfff
	slli x28, x28, 20
	lui x1, -1019700505 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1021155956 & 0xfff
	slli x28, x28, 20
	lui x1, -1021155956 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1032224681 & 0xfff
	slli x28, x28, 20
	lui x1, -1032224681 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1054281694 & 0xfff
	slli x28, x28, 20
	lui x1, -1054281694 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1087266633 & 0xfff
	slli x28, x28, 20
	lui x1, -1087266633 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1138646893 & 0xfff
	slli x28, x28, 20
	lui x1, -1138646893 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1116242025 & 0xfff
	slli x28, x28, 20
	lui x1, -1116242025 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 1087520636 & 0xfff
	slli x28, x28, 20
	lui x1, 1087520636 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x11, x0, x10
	ori x28, x0, 1100821966 & 0xfff
	slli x28, x28, 20
	lui x1, 1100821966 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1124706403 & 0xfff
	slli x28, x28, 20
	lui x1, 1124706403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1138313327 & 0xfff
	slli x28, x28, 20
	lui x1, 1138313327 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1143036105 & 0xfff
	slli x28, x28, 20
	lui x1, 1143036105 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1138131211 & 0xfff
	slli x28, x28, 20
	lui x1, 1138131211 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, 1121535263 & 0xfff
	slli x28, x28, 20
	lui x1, 1121535263 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_19 ( x0 )
LBB0_18:                                //  %if.else120
	ori x28, x0, -1007566219 & 0xfff
	slli x28, x28, 20
	lui x1, -1007566219 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, -998235381 & 0xfff
	slli x28, x28, 20
	lui x1, -998235381 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1004575679 & 0xfff
	slli x28, x28, 20
	lui x1, -1004575679 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1021271318 & 0xfff
	slli x28, x28, 20
	lui x1, -1021271318 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1047654325 & 0xfff
	slli x28, x28, 20
	lui x1, -1047654325 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1085497900 & 0xfff
	slli x28, x28, 20
	lui x1, -1085497900 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1138646894 & 0xfff
	slli x28, x28, 20
	lui x1, -1138646894 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1106424921 & 0xfff
	slli x28, x28, 20
	lui x1, 1106424921 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1134749041 & 0xfff
	slli x28, x28, 20
	lui x1, 1134749041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1153439577 & 0xfff
	slli x28, x28, 20
	lui x1, 1153439577 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1162345915 & 0xfff
	slli x28, x28, 20
	lui x1, 1162345915 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1159696590 & 0xfff
	slli x28, x28, 20
	lui x1, 1159696590 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, 1139622823 & 0xfff
	slli x28, x28, 20
	lui x1, 1139622823 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -1045199086 & 0xfff
	slli x28, x28, 20
	lui x1, -1045199086 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
LBB0_19:                                //  %do.body148
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	lui x1, -4096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x1, x3
	add x11, x0, x10
	add x8, x0, x10
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	ori x28, x0, -1089470464 & 0xfff
	slli x28, x28, 20
	lui x3, -1089470464 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	call $__ieee754_expf
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__subsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	call $__ieee754_expf
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB0_22
LBB0_20:                                //  %if.then173
	lui x10, 1065353216>>12 &0xfffff
LBB0_21:                                //  %cleanup
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB0_25 ( x0 )
LBB0_22:                                //  %if.else176
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x3, -1082130432 >> 12 & 0xfffff
LBB0_23:                                //  %cleanup
	srli x28, x28, 20
	or x11, x3, x28
	add x10, x0, x1
LBB0_24:                                //  %cleanup
	call $__addsf3
LBB0_25:                                //  %cleanup
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
	.size	$erff, ($func_end0)-($erff)
	.cfi_endproc

	.globl	$erfcf
	.type	$erfcf,@function
$erfcf:                                 //  @erfcf
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi9:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x3
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x8, LBB1_2
LBB1_1:                                 //  %if.then
	srli x1, x3, 30
	andi x10, x1, 2
	add x8, x0, x3
	call $__floatunsisf
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__divsf3
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	jalr x0, LBB1_24 ( x0 )
LBB1_2:                                 //  %if.end
	ori x28, x0, 1062731775 & 0xfff
	slli x28, x28, 20
	lui x1, 1062731775 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_8
LBB1_3:                                 //  %if.then3
	ori x28, x0, 595591167 & 0xfff
	slli x28, x28, 20
	lui x1, 595591167 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_5
LBB1_4:                                 //  %if.then6
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x3
	call $__subsf3
	jalr x0, LBB1_24 ( x0 )
LBB1_5:                                 //  %if.end7
	add x10, x0, x3
	add x11, x0, x3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, -1211672911 & 0xfff
	slli x28, x28, 20
	lui x1, -1211672911 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, -1145236343 & 0xfff
	slli x28, x28, 20
	lui x1, -1145236343 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1125559665 & 0xfff
	slli x28, x28, 20
	lui x1, -1125559665 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1096389653 & 0xfff
	slli x28, x28, 20
	lui x1, -1096389653 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1040414164 & 0xfff
	slli x28, x28, 20
	lui x1, 1040414164 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1232805350 & 0xfff
	slli x28, x28, 20
	lui x1, -1232805350 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 957017673 & 0xfff
	slli x28, x28, 20
	lui x1, 957017673 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1000767766 & 0xfff
	slli x28, x28, 20
	lui x1, 1000767766 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1032137315 & 0xfff
	slli x28, x28, 20
	lui x1, 1032137315 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1053539278 & 0xfff
	slli x28, x28, 20
	lui x1, 1053539278 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x10
	ori x28, x0, 1048575999 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x3, x1, LBB1_7
LBB1_6:                                 //  %if.then29
	add x10, x0, x8
	add x11, x0, x3
	call $__addsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	jalr x0, LBB1_11 ( x0 )
LBB1_7:                                 //  %if.else
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x3
	call $__addsf3
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lui x10, 1056964608>>12 &0xfffff
	jalr x0, LBB1_11 ( x0 )
LBB1_8:                                 //  %if.end37
	ori x28, x0, 1067450367 & 0xfff
	slli x28, x28, 20
	lui x1, 1067450367 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_13
LBB1_9:                                 //  %if.then40
	add x10, x0, x3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x8, x0, x10
	ori x28, x0, -1156712000 & 0xfff
	slli x28, x28, 20
	lui x1, -1156712000 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 1024545203 & 0xfff
	slli x28, x28, 20
	lui x1, 1024545203 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1109189438 & 0xfff
	slli x28, x28, 20
	lui x1, -1109189438 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1050869332 & 0xfff
	slli x28, x28, 20
	lui x1, 1050869332 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1094807032 & 0xfff
	slli x28, x28, 20
	lui x1, -1094807032 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1054107653 & 0xfff
	slli x28, x28, 20
	lui x1, 1054107653 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1155871290 & 0xfff
	slli x28, x28, 20
	lui x1, -1155871290 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1011112611 & 0xfff
	slli x28, x28, 20
	lui x1, 1011112611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 1012887059 & 0xfff
	slli x28, x28, 20
	lui x1, 1012887059 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1040265991 & 0xfff
	slli x28, x28, 20
	lui x1, 1040265991 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1033050855 & 0xfff
	slli x28, x28, 20
	lui x1, 1033050855 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1057642373 & 0xfff
	slli x28, x28, 20
	lui x1, 1057642373 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1037693745 & 0xfff
	slli x28, x28, 20
	lui x1, 1037693745 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x1, x0, x10
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB1_12
LBB1_10:                                //  %if.then68
	ori x28, x0, 1042196436 & 0xfff
	slli x28, x28, 20
	lui x3, 1042196436 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
LBB1_11:                                //  %cleanup
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB1_24 ( x0 )
LBB1_12:                                //  %if.else71
	ori x28, x0, 1062753803 & 0xfff
	slli x28, x28, 20
	lui x3, 1062753803 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	add x10, x0, x1
	call $__addsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	jalr x0, LBB1_24 ( x0 )
LBB1_13:                                //  %if.end75
	ori x28, x0, 1105199103 & 0xfff
	slli x28, x28, 20
	lui x1, 1105199103 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_22
LBB1_14:                                //  %if.then78
	add x10, x0, x3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	ori x28, x0, 1077336940 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336940 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_16
LBB1_15:                                //  %if.then84
	ori x28, x0, -1055062146 & 0xfff
	slli x28, x28, 20
	lui x1, -1055062146 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__mulsf3
	ori x28, x0, -1029532885 & 0xfff
	slli x28, x28, 20
	lui x1, -1029532885 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1019700505 & 0xfff
	slli x28, x28, 20
	lui x1, -1019700505 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1021155956 & 0xfff
	slli x28, x28, 20
	lui x1, -1021155956 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1032224681 & 0xfff
	slli x28, x28, 20
	lui x1, -1032224681 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1054281694 & 0xfff
	slli x28, x28, 20
	lui x1, -1054281694 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1087266633 & 0xfff
	slli x28, x28, 20
	lui x1, -1087266633 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1138646893 & 0xfff
	slli x28, x28, 20
	lui x1, -1138646893 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1116242025 & 0xfff
	slli x28, x28, 20
	lui x1, -1116242025 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 1087520636 & 0xfff
	slli x28, x28, 20
	lui x1, 1087520636 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x11, x0, x10
	ori x28, x0, 1100821966 & 0xfff
	slli x28, x28, 20
	lui x1, 1100821966 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1124706403 & 0xfff
	slli x28, x28, 20
	lui x1, 1124706403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1138313327 & 0xfff
	slli x28, x28, 20
	lui x1, 1138313327 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1143036105 & 0xfff
	slli x28, x28, 20
	lui x1, 1143036105 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1138131211 & 0xfff
	slli x28, x28, 20
	lui x1, 1138131211 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1121535263 & 0xfff
	slli x28, x28, 20
	lui x1, 1121535263 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB1_19 ( x0 )
LBB1_16:                                //  %if.else115
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x3, LBB1_18
LBB1_17:                                //  %if.else115
	lui x1, 1086324735 >> 12 & 0xfffff
	ori x28, x0, 1086324735 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_23
LBB1_18:                                //  %if.end121
	ori x28, x0, -1007566219 & 0xfff
	slli x28, x28, 20
	lui x1, -1007566219 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__mulsf3
	ori x28, x0, -998235381 & 0xfff
	slli x28, x28, 20
	lui x1, -998235381 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1004575679 & 0xfff
	slli x28, x28, 20
	lui x1, -1004575679 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1021271318 & 0xfff
	slli x28, x28, 20
	lui x1, -1021271318 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1047654325 & 0xfff
	slli x28, x28, 20
	lui x1, -1047654325 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1085497900 & 0xfff
	slli x28, x28, 20
	lui x1, -1085497900 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1138646894 & 0xfff
	slli x28, x28, 20
	lui x1, -1138646894 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1106424921 & 0xfff
	slli x28, x28, 20
	lui x1, 1106424921 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1134749041 & 0xfff
	slli x28, x28, 20
	lui x1, 1134749041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1153439577 & 0xfff
	slli x28, x28, 20
	lui x1, 1153439577 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1162345915 & 0xfff
	slli x28, x28, 20
	lui x1, 1162345915 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1159696590 & 0xfff
	slli x28, x28, 20
	lui x1, 1159696590 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1139622823 & 0xfff
	slli x28, x28, 20
	lui x1, 1139622823 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -1045199086 & 0xfff
	slli x28, x28, 20
	lui x1, -1045199086 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
LBB1_19:                                //  %do.body149
	add x10, x0, x8
	call $__mulsf3
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	lui x1, -4096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x1, x3
	add x11, x0, x10
	add x8, x0, x10
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	ori x28, x0, -1089470464 & 0xfff
	slli x28, x28, 20
	lui x3, -1089470464 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	call $__ieee754_expf
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__subsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	call $__ieee754_expf
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x8, x0, x10
	lui x10, 1073741824>>12 &0xfffff
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x0
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB1_21
LBB1_20:                                //  %do.body149
	add x8, x0, x10
LBB1_21:                                //  %do.body149
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi12:
	.cfi_adjust_cfa_offset -56
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_22:                                //  %if.else179
	add x10, x0, x0
	bgt x3, x10, LBB1_24
LBB1_23:                                //  %if.else179
	lui x10, 1073741824>>12 &0xfffff
LBB1_24:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi14:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi15:
	.cfi_adjust_cfa_offset -56
$cfi16:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$erfcf, ($func_end1)-($erfcf)
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
