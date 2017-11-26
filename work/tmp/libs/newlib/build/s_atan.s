	.text
	.file	"s_atan.bc"
	.globl	$atan
	.type	$atan,@function
$atan:                                  //  @atan
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x5, x0, x11
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x5
	lui x1, 1141899264>>12 &0xfffff
	bgtu x1, x8, LBB0_8
LBB0_1:                                 //  %if.then
	lui x1, 2146435072>>12 &0xfffff
	bgtu x8, x1, LBB0_4
LBB0_2:                                 //  %lor.lhs.false
	beqz x10, LBB0_5
LBB0_3:                                 //  %lor.lhs.false
	bne x8, x1, LBB0_5
LBB0_4:                                 //  %if.then9
	add x11, x0, x5
	add x12, x0, x10
	add x13, x0, x5
	call $__adddf3
	jalr x0, LBB0_27 ( x0 )
LBB0_5:                                 //  %if.end
	ori x28, x0, -1074191877 & 0xfff
	slli x28, x28, 20
	lui x1, -1074191877 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x3, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x0, x0
	or x11, x3, x28
	bgt x5, x4, LBB0_7
LBB0_6:                                 //  %if.end
	add x11, x0, x1
LBB0_7:                                 //  %if.end
	lui x1, 1413754136 >> 12 & 0xfffff
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	jalr x0, LBB0_27 ( x0 )
LBB0_8:                                 //  %if.end14
	ori x28, x0, 1071382527 & 0xfff
	slli x28, x28, 20
	lui x1, 1071382527 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x1, LBB0_13
LBB0_9:                                 //  %if.then16
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
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x5
	call $__adddf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__gtdf2
	not x3, x0
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	bgt x10, x0, LBB0_11
LBB0_10:
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_11:                                //  %if.then16
	lui x1, 1042284544>>12 &0xfffff
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x4
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	bgeu x8, x1, LBB0_21
LBB0_12:
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_27 ( x0 )
LBB0_13:                                //  %if.else24
	add x11, x0, x5
	call $fabs
	add x4, x0, x10
	add x3, x0, x11
	ori x28, x0, 1072889855 & 0xfff
	slli x28, x28, 20
	lui x1, 1072889855 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_17
LBB0_14:                                //  %if.then26
	ori x28, x0, 1072037887 & 0xfff
	slli x28, x28, 20
	lui x1, 1072037887 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x1, LBB0_16
LBB0_15:                                //  %if.then28
	add x12, x0, x0
	lui x13, 1073741824>>12 &0xfffff
	add x10, x0, x4
	add x11, x0, x3
	add x8, x0, x4
	call $__adddf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x11
	call $__adddf3
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x0
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	jalr x0, LBB0_21 ( x0 )
LBB0_16:                                //  %if.else31
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	add x10, x0, x4
	add x11, x0, x3
	add x8, x0, x4
	call $__adddf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lui x13, 1072693248>>12 &0xfffff
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	slti x1, x0, 1
	jalr x0, LBB0_20 ( x0 )
LBB0_17:                                //  %if.else36
	ori x28, x0, 1073971199 & 0xfff
	slli x28, x28, 20
	lui x1, 1073971199 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_19
LBB0_18:                                //  %if.then38
	ori x28, x0, -1074266112 & 0xfff
	slli x28, x28, 20
	lui x1, -1074266112 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	add x10, x0, x4
	add x11, x0, x3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
	call $__adddf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lui x13, 1073217536>>12 &0xfffff
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__muldf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	addi x1, x0, 2
	jalr x0, LBB0_20 ( x0 )
LBB0_19:                                //  %if.else43
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	add x12, x0, x4
	add x13, x0, x3
	call $__divdf3
	addi x1, x0, 3
LBB0_20:                                //  %if.end47
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
LBB0_21:                                //  %if.end47
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	call $__muldf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -484255215 & 0xfff
	slli x28, x28, 20
	lui x1, -484255215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066446138 & 0xfff
	slli x28, x28, 20
	lui x1, 1066446138 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 611716587 & 0xfff
	slli x28, x28, 20
	lui x1, 611716587 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068071755 & 0xfff
	slli x28, x28, 20
	lui x1, 1068071755 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1596965551 & 0xfff
	slli x28, x28, 20
	lui x1, -1596965551 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068567910 & 0xfff
	slli x28, x28, 20
	lui x1, 1068567910 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -984866706 & 0xfff
	slli x28, x28, 20
	lui x1, -984866706 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068975565 & 0xfff
	slli x28, x28, 20
	lui x1, 1068975565 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1845459969 & 0xfff
	slli x28, x28, 20
	lui x1, -1845459969 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069697316 & 0xfff
	slli x28, x28, 20
	lui x1, 1069697316 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655693 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655693 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070945621 & 0xfff
	slli x28, x28, 20
	lui x1, 1070945621 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 745172015 & 0xfff
	slli x28, x28, 20
	lui x1, 745172015 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079856060 & 0xfff
	slli x28, x28, 20
	lui x1, -1079856060 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 1390345626 & 0xfff
	slli x28, x28, 20
	lui x1, 1390345626 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079124435 & 0xfff
	slli x28, x28, 20
	lui x1, -1079124435 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1351312787 & 0xfff
	slli x28, x28, 20
	lui x1, -1351312787 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078742798 & 0xfff
	slli x28, x28, 20
	lui x1, -1078742798 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -31254927 & 0xfff
	slli x28, x28, 20
	lui x1, -31254927 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078169146 & 0xfff
	slli x28, x28, 20
	lui x1, -1078169146 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1718031420 & 0xfff
	slli x28, x28, 20
	lui x1, -1718031420 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1077306983 & 0xfff
	slli x28, x28, 20
	lui x1, -1077306983 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x8, LBB0_23
LBB0_22:                                //  %if.then71
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_27 ( x0 )
LBB0_23:                                //  %if.else75
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, $atanlo & 0xfff
	slli x28, x28, 20
	lui x1, $atanlo >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $atanlo+4 & 0xfff
	slli x28, x28, 20
	lui x3, $atanlo+4 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x8, x8, 3
	or x3, x3, x28
	add x1, x1, x8
	add x3, x3, x8
	lw x12, 0 ( x1 )
	lw x13, 0 ( x3 )
	nop
	call $__subdf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x11
	ori x28, x0, $atanhi+4 & 0xfff
	slli x28, x28, 20
	lui x3, $atanhi+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $atanhi & 0xfff
	slli x28, x28, 20
	lui x4, $atanhi >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	add x5, x3, x8
	add x3, x4, x8
	lw x3, 0 ( x3 )
	lw x11, 0 ( x5 )
	add x12, x0, x10
	add x10, x0, x3
	add x13, x0, x1
	call $__subdf3
	add x3, x0, x10
	add x8, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	add x13, x0, x8
	call $__subdf3
	add x3, x0, x0
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_25
LBB0_24:                                //  %if.else75
	add x11, x0, x8
LBB0_25:                                //  %if.else75
	bgt x3, x1, LBB0_27
LBB0_26:                                //  %if.else75
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
LBB0_27:                                //  %cleanup84
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
	.size	$atan, ($func_end0)-($atan)
	.cfi_endproc

	.address_space	0	
	.type	$atanhi,@object         //  @atanhi
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3
$atanhi:
	.quad	4602023952714414927     //  double 0.46364760900080609
	.quad	4605249457297304856     //  double 0.78539816339744828
	.quad	4607027438436873883     //  double 0.98279372324732905
	.quad	4609753056924675352     //  double 1.5707963267948966
	.size	$atanhi, 32

	.address_space	0	
	.type	$atanlo,@object         //  @atanlo
	.p2align	3
$atanlo:
	.quad	4357843414468748770     //  double 2.2698777452961687E-17
	.quad	4359948597267291143     //  double 3.061616997868383E-17
	.quad	4354989122426817469     //  double 1.3903311031230998E-17
	.quad	4364452196894661639     //  double 6.123233995736766E-17
	.size	$atanlo, 32


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
