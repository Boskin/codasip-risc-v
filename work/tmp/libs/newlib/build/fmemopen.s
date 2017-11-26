	.text
	.file	"fmemopen.bc"
	.globl	$_fmemopen_r
	.type	$_fmemopen_r,@function
$_fmemopen_r:                           //  @_fmemopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	add x8, x0, x12
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	addi x12, x2, 32
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x13
	call $__sflags
	add x4, x0, x0
	beqz x10, LBB0_29
LBB0_1:                                 //  %if.end
	beqz x8, LBB0_4
LBB0_2:                                 //  %lor.lhs.false
	andi x1, x10, 16
	bgtu x1, x0, LBB0_5
LBB0_3:                                 //  %lor.lhs.false
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	beqz x1, LBB0_5
LBB0_4:                                 //  %if.then4
	addi x1, x0, 22
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB0_29 ( x0 )
LBB0_5:                                 //  %if.end5
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $__sfp
	add x4, x0, x8
	beqz x10, LBB0_29
LBB0_6:                                 //  %if.end9
	add x1, x0, x0
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	beq x3, x1, LBB0_8
LBB0_7:
	addi x11, x0, 24
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %if.end9
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x11, x1, 24
LBB0_9:                                 //  %if.end9
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $_malloc_r
	add x9, x0, x10
	bgtu x9, x0, LBB0_11
LBB0_10:                                //  %if.then13
	call $__sfp_lock_acquire
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 12 ( x1 )
	call $__sfp_lock_release
	add x4, x0, x0
	jalr x0, LBB0_29 ( x0 )
LBB0_11:                                //  %if.end14
	sw x9, 0 ( x9 )
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 16 ( x9 )
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x7, 3
	andi x1, x1, 1
	sb x1, 21 ( x9 )
	sb x0, 22 ( x9 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_13
LBB0_12:                                //  %if.then19
	addi x1, x9, 24
	sw x1, 4 ( x9 )
	sb x0, 24 ( x9 )
	sw x0, 12 ( x9 )
	sw x0, 8 ( x9 )
	srli x1, x7, 8
	andi x1, x1, 1
	sb x1, 20 ( x9 )
	add x8, x0, x0
	jalr x0, LBB0_24 ( x0 )
LBB0_13:                                //  %if.else
	sw x10, 4 ( x9 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 0 ( x1 )
	nop
	xori x3, x1, 119
	add x8, x0, x0
	beqz x3, LBB0_21
LBB0_14:                                //  %if.else
	xori x3, x1, 114
	beqz x3, LBB0_23
LBB0_15:                                //  %if.else
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	xori x1, x1, 97
	bgtu x1, x0, LBB0_22
LBB0_16:                                //  %sw.bb
	add x11, x0, x0
	add x12, x0, x4
	call $memchr
	beqz x10, LBB0_18
LBB0_17:                                //  %cond.true31
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x9 )
	nop
	sub x1, x10, x1
	sw x1, 8 ( x9 )
	sw x1, 12 ( x9 )
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_18:                                //  %land.lhs.true.critedge
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x9 )
	sw x3, 12 ( x9 )
	lbu x1, 21 ( x9 )
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_20
LBB0_19:                                //  %if.then42
	lw x1, 4 ( x9 )
	nop
	add x1, x3, x1
	sb x0, -1 ( x1 )
LBB0_20:                                //  %if.end45
	slti x1, x0, 1
	sb x1, 20 ( x9 )
	jalr x0, LBB0_24 ( x0 )
LBB0_21:                                //  %sw.bb51
	sw x0, 12 ( x9 )
	sb x0, 20 ( x9 )
	sw x0, 8 ( x9 )
	sb x0, 0 ( x10 )
	jalr x0, LBB0_24 ( x0 )
LBB0_22:                                //  %sw.default
	call $abort
LBB0_23:                                //  %sw.bb47
	sb x0, 20 ( x9 )
	sw x0, 8 ( x9 )
	sw x4, 12 ( x9 )
LBB0_24:                                //  %if.end56
	andi x3, x7, 24
	lui x1, $fmemwriter >> 12 & 0xfffff
	ori x28, x0, $fmemwriter & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bne x3, x8, LBB0_26
LBB0_25:                                //  %if.end56
	add x1, x0, x8
LBB0_26:                                //  %if.end56
	andi x4, x7, 20
	lui x3, $fmemreader >> 12 & 0xfffff
	ori x28, x0, $fmemreader & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bne x4, x8, LBB0_28
LBB0_27:                                //  %if.end56
	add x3, x0, x8
LBB0_28:                                //  %if.end56
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x4, 14 ( x5 )
	sh x7, 12 ( x5 )
	sw x9, 28 ( x5 )
	sw x3, 32 ( x5 )
	sw x1, 36 ( x5 )
	lui x1, $fmemseeker >> 12 & 0xfffff
	ori x28, x0, $fmemseeker & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x5 )
	lui x1, $fmemcloser >> 12 & 0xfffff
	ori x28, x0, $fmemcloser & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x5 )
	add x4, x0, x5
LBB0_29:                                //  %cleanup
	add x10, x0, x4
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
	.size	$_fmemopen_r, ($func_end0)-($_fmemopen_r)
	.cfi_endproc

	.type	$fmemreader,@function
$fmemreader:                            //  @fmemreader
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lw x3, 12 ( x8 )
	lw x1, 8 ( x8 )
	nop
	bgeu x3, x1, LBB1_2
LBB1_1:
	add x10, x0, x0
	jalr x0, LBB1_5 ( x0 )
LBB1_2:                                 //  %if.end
	sub x3, x3, x1
	bgtu x3, x13, LBB1_4
LBB1_3:                                 //  %if.end
	add x13, x0, x3
LBB1_4:                                 //  %if.end
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	lw x3, 4 ( x8 )
	nop
	add x11, x1, x3
	add x10, x0, x12
	add x12, x0, x13
	call $memcpy
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x1, 8 ( x8 )
	nop
	add x1, x10, x1
	sw x1, 8 ( x8 )
LBB1_5:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$fmemreader, ($func_end1)-($fmemreader)
	.cfi_endproc

	.type	$fmemwriter,@function
$fmemwriter:                            //  @fmemwriter
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi16:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x15, x0, x12
	add x14, x0, x10
	lbu x1, 20 ( x8 )
	nop
	beqz x1, LBB2_2
LBB2_1:                                 //  %if.then
	lw x3, 12 ( x8 )
	addi x12, x8, 8
	addi x17, x8, 12
	sw x3, 8 ( x8 )
	add x4, x0, x3
	jalr x0, LBB2_4 ( x0 )
LBB2_2:                                 //  %if.else
	lw x3, 12 ( x8 )
	lw x4, 8 ( x8 )
	addi x17, x8, 12
	addi x12, x8, 8
	bgeu x3, x4, LBB2_4
LBB2_3:                                 //  %if.then3
	lw x1, 4 ( x8 )
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sub x12, x4, x3
	add x10, x3, x1
	add x11, x0, x0
	sw x15, 24 ( x2 )               //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x17, 8 ( x2 )                //  4-byte Folded Spill
	call $memset
	lw x17, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x14, 20 ( x2 )               //  4-byte Folded Reload
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x8 )
	lw x4, 8 ( x8 )
LBB2_4:                                 //  %if.end8
	lw x10, 16 ( x8 )
	lb x5, 21 ( x8 )
	add x9, x13, x4
	sub x7, x10, x4
	sub x11, x10, x5
	add x16, x0, x7
	bgtu x9, x11, LBB2_6
LBB2_5:                                 //  %if.end8
	add x16, x0, x13
LBB2_6:                                 //  %if.end8
	add x1, x0, x5
	bgtu x9, x11, LBB2_8
LBB2_7:                                 //  %if.end8
	add x1, x0, x0
LBB2_8:                                 //  %if.end8
	add x4, x4, x16
	bgeu x3, x4, LBB2_11
LBB2_9:                                 //  %if.then25
	sw x4, 0 ( x17 )
	sub x3, x4, x1
	bgeu x3, x10, LBB2_17
LBB2_10:                                //  %if.then34
	lw x4, 4 ( x8 )
	nop
	add x3, x3, x4
	sb x0, 0 ( x3 )
	sb x0, 22 ( x8 )
	jalr x0, LBB2_17 ( x0 )
LBB2_11:                                //  %if.else39
	beqz x5, LBB2_17
LBB2_12:                                //  %if.then42
	bgtu x16, x0, LBB2_14
LBB2_13:
	add x1, x0, x0
	jalr x0, LBB2_17 ( x0 )
LBB2_14:                                //  %if.then44
	bgeu x11, x9, LBB2_16
LBB2_15:
	sub x13, x7, x5
LBB2_16:                                //  %if.then44
	sub x3, x4, x1
	lw x4, 4 ( x8 )
	nop
	add x3, x3, x4
	lb x3, 0 ( x3 )
	nop
	sb x3, 22 ( x8 )
	lw x3, 8 ( x8 )
	nop
	add x3, x3, x13
	add x3, x3, x4
	sb x0, 0 ( x3 )
LBB2_17:                                //  %if.end59
	lw x3, 0 ( x12 )
	nop
	add x3, x16, x3
	sw x3, 0 ( x12 )
	sub x12, x16, x1
	beqz x12, LBB2_19
LBB2_18:                                //  %if.then64
	lw x1, 4 ( x8 )
	nop
	add x1, x3, x1
	sub x10, x1, x16
	add x11, x0, x15
	add x8, x0, x16
	call $memcpy
	add x10, x0, x8
	jalr x0, LBB2_20 ( x0 )
LBB2_19:                                //  %if.else71
	addi x1, x0, 28
	sw x1, 0 ( x14 )
	not x10, x0
LBB2_20:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi19:
	.cfi_adjust_cfa_offset -40
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$fmemwriter, ($func_end2)-($fmemwriter)
	.cfi_endproc

	.type	$fmemseeker,@function
$fmemseeker:                            //  @fmemseeker
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	xori x3, x13, 2
	bgtu x3, x0, LBB3_2
LBB3_1:
	addi x3, x0, 12
	jalr x0, LBB3_4 ( x0 )
LBB3_2:                                 //  %entry
	xori x3, x13, 1
	bgtu x3, x0, LBB3_5
LBB3_3:                                 //  %if.then
	addi x3, x0, 8
LBB3_4:                                 //  %if.end5.sink.split
	add x3, x3, x11
	lw x3, 0 ( x3 )
	nop
	add x12, x12, x3
LBB3_5:                                 //  %if.end5
	bgez x12, LBB3_8
LBB3_6:                                 //  %if.then7
	addi x3, x0, 22
LBB3_7:                                 //  %if.end40
	sw x3, 0 ( x10 )
	not x12, x0
	add x10, x0, x12
	ret
LBB3_8:                                 //  %if.else8
	lw x3, 16 ( x11 )
	nop
	bgeu x3, x12, LBB3_10
LBB3_9:                                 //  %if.then10
	addi x3, x0, 28
	jalr x0, LBB3_7 ( x0 )
LBB3_10:                                //  %if.else12
	lbu x3, 21 ( x11 )
	nop
	bgtu x3, x0, LBB3_12
LBB3_11:                                //  %if.end20.thread
	sw x12, 8 ( x11 )
	add x10, x0, x12
	ret
LBB3_12:                                //  %land.lhs.true
	lw x3, 8 ( x11 )
	lw x4, 12 ( x11 )
	nop
	bgtu x4, x3, LBB3_14
LBB3_13:                                //  %if.end20.thread72
	sw x12, 8 ( x11 )
	jalr x0, LBB3_15 ( x0 )
LBB3_14:                                //  %if.end20
	lw x4, 4 ( x11 )
	lb x5, 22 ( x11 )
	add x3, x3, x4
	sb x5, 0 ( x3 )
	sb x0, 22 ( x11 )
	lbu x3, 21 ( x11 )
	sw x12, 8 ( x11 )
	beqz x3, LBB3_17
LBB3_15:                                //  %land.lhs.true25
	lw x3, 12 ( x11 )
	nop
	bgeu x12, x3, LBB3_17
LBB3_16:                                //  %if.then30
	lw x3, 4 ( x11 )
	nop
	add x3, x12, x3
	lb x4, 0 ( x3 )
	nop
	sb x4, 22 ( x11 )
	sb x0, 0 ( x3 )
LBB3_17:                                //  %if.end40
	add x10, x0, x12
	ret
$func_end3:
	.size	$fmemseeker, ($func_end3)-($fmemseeker)
	.cfi_endproc

	.type	$fmemcloser,@function
$fmemcloser:                            //  @fmemcloser
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi23:
	.cfi_def_cfa 2, 0
$cfi24:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi25:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi26:
	.cfi_offset 1, -4
	lw x11, 0 ( x11 )
	nop
	call $_free_r
	add x10, x0, x0
	lw x1, 4 ( x2 )
$cfi27:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi28:
	.cfi_adjust_cfa_offset -8
$cfi29:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$fmemcloser, ($func_end4)-($fmemcloser)
	.cfi_endproc

	.globl	$fmemopen
	.type	$fmemopen,@function
$fmemopen:                              //  @fmemopen
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi30:
	.cfi_def_cfa 2, 0
$cfi31:
	.cfi_val_offset 2, 0
	add x3, x0, x12
	add x4, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	add x11, x0, x10
	add x12, x0, x4
	add x13, x0, x3
	add x10, x0, x5
	j $_fmemopen_r
$func_end5:
	.size	$fmemopen, ($func_end5)-($fmemopen)
	.cfi_endproc

	.address_space	0	

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
