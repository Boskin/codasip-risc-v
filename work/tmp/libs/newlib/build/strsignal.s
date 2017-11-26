	.text
	.file	"strsignal.bc"
	.globl	$strsignal
	.type	$strsignal,@function
$strsignal:                             //  @strsignal
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
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	addi x10, x10, -1
	addi x3, x0, 30
	lw x1, 0 ( x1 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x3, LBB0_32
LBB0_1:                                 //  %entry
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_2:                                 //  %sw.bb1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
LBB0_3:                                 //  %sw.epilog
	srli x28, x28, 20
	or x8, x1, x28
	jalr x0, LBB0_33 ( x0 )
LBB0_4:                                 //  %sw.bb2
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_5:                                 //  %sw.bb3
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_6:                                 //  %sw.bb4
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_7:                                 //  %sw.bb5
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_8:                                 //  %sw.bb6
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_9:                                 //  %sw.bb7
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_10:                                //  %sw.bb8
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_11:                                //  %sw.bb9
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.9 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_12:                                //  %sw.bb10
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_13:                                //  %sw.bb11
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_14:                                //  %sw.bb12
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.12 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_15:                                //  %sw.bb13
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.13 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_16:                                //  %sw.bb14
	ori x28, x0, $.str.14 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.14 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_17:                                //  %sw.bb15
	ori x28, x0, $.str.15 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.15 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_18:                                //  %sw.bb16
	ori x28, x0, $.str.16 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.16 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_19:                                //  %sw.bb17
	ori x28, x0, $.str.17 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.17 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_20:                                //  %sw.bb18
	ori x28, x0, $.str.18 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.18 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_21:                                //  %sw.bb19
	ori x28, x0, $.str.19 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.19 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_22:                                //  %sw.bb20
	ori x28, x0, $.str.20 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.20 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_23:                                //  %sw.bb21
	ori x28, x0, $.str.21 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.21 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_24:                                //  %sw.bb22
	ori x28, x0, $.str.22 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.22 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_25:                                //  %sw.bb23
	ori x28, x0, $.str.23 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.23 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_26:                                //  %sw.bb24
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.24 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_27:                                //  %sw.bb25
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_28:                                //  %sw.bb26
	ori x28, x0, $.str.26 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.26 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_29:                                //  %sw.bb27
	ori x28, x0, $.str.27 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.27 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_30:                                //  %sw.bb28
	ori x28, x0, $.str.28 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.28 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_31:                                //  %sw.bb29
	ori x28, x0, $.str.29 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.29 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_32:                                //  %sw.default
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x1, 220
	ori x28, x0, $.str.30 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.30 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x2 )
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	call $siprintf
LBB0_33:                                //  %sw.epilog
	add x10, x0, x8
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
	.size	$strsignal, ($func_end0)-($strsignal)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_33
	.long	LBB0_2
	.long	LBB0_4
	.long	LBB0_5
	.long	LBB0_6
	.long	LBB0_7
	.long	LBB0_8
	.long	LBB0_9
	.long	LBB0_10
	.long	LBB0_11
	.long	LBB0_12
	.long	LBB0_13
	.long	LBB0_14
	.long	LBB0_15
	.long	LBB0_16
	.long	LBB0_17
	.long	LBB0_18
	.long	LBB0_19
	.long	LBB0_20
	.long	LBB0_21
	.long	LBB0_22
	.long	LBB0_32
	.long	LBB0_23
	.long	LBB0_27
	.long	LBB0_28
	.long	LBB0_29
	.long	LBB0_30
	.long	LBB0_24
	.long	LBB0_31
	.long	LBB0_25
	.long	LBB0_26

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Hangup"
	.size	$.str, 7

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"Interrupt"
	.size	$.str.1, 10

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"Quit"
	.size	$.str.2, 5

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"Illegal instruction"
	.size	$.str.3, 20

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"Trace/breakpoint trap"
	.size	$.str.4, 22

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"IOT trap"
	.size	$.str.5, 9

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"EMT trap"
	.size	$.str.6, 9

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"Floating point exception"
	.size	$.str.7, 25

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"Killed"
	.size	$.str.8, 7

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"Bus error"
	.size	$.str.9, 10

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	"Segmentation fault"
	.size	$.str.10, 19

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"Bad system call"
	.size	$.str.11, 16

	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
$.str.12:
	.asciz	"Broken pipe"
	.size	$.str.12, 12

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
$.str.13:
	.asciz	"Alarm clock"
	.size	$.str.13, 12

	.address_space	0	
	.type	$.str.14,@object        //  @.str.14
$.str.14:
	.asciz	"Terminated"
	.size	$.str.14, 11

	.address_space	0	
	.type	$.str.15,@object        //  @.str.15
$.str.15:
	.asciz	"Urgent I/O condition"
	.size	$.str.15, 21

	.address_space	0	
	.type	$.str.16,@object        //  @.str.16
$.str.16:
	.asciz	"Stopped (signal)"
	.size	$.str.16, 17

	.address_space	0	
	.type	$.str.17,@object        //  @.str.17
$.str.17:
	.asciz	"Stopped"
	.size	$.str.17, 8

	.address_space	0	
	.type	$.str.18,@object        //  @.str.18
$.str.18:
	.asciz	"Continued"
	.size	$.str.18, 10

	.address_space	0	
	.type	$.str.19,@object        //  @.str.19
$.str.19:
	.asciz	"Child exited"
	.size	$.str.19, 13

	.address_space	0	
	.type	$.str.20,@object        //  @.str.20
$.str.20:
	.asciz	"Stopped (tty input)"
	.size	$.str.20, 20

	.address_space	0	
	.type	$.str.21,@object        //  @.str.21
$.str.21:
	.asciz	"I/O possible"
	.size	$.str.21, 13

	.address_space	0	
	.type	$.str.22,@object        //  @.str.22
$.str.22:
	.asciz	"Window changed"
	.size	$.str.22, 15

	.address_space	0	
	.type	$.str.23,@object        //  @.str.23
$.str.23:
	.asciz	"User defined signal 1"
	.size	$.str.23, 22

	.address_space	0	
	.type	$.str.24,@object        //  @.str.24
$.str.24:
	.asciz	"User defined signal 2"
	.size	$.str.24, 22

	.address_space	0	
	.type	$.str.25,@object        //  @.str.25
$.str.25:
	.asciz	"CPU time limit exceeded"
	.size	$.str.25, 24

	.address_space	0	
	.type	$.str.26,@object        //  @.str.26
$.str.26:
	.asciz	"File size limit exceeded"
	.size	$.str.26, 25

	.address_space	0	
	.type	$.str.27,@object        //  @.str.27
$.str.27:
	.asciz	"Virtual timer expired"
	.size	$.str.27, 22

	.address_space	0	
	.type	$.str.28,@object        //  @.str.28
$.str.28:
	.asciz	"Profiling timer expired"
	.size	$.str.28, 24

	.address_space	0	
	.type	$.str.29,@object        //  @.str.29
$.str.29:
	.asciz	"Resource lost"
	.size	$.str.29, 14

	.address_space	0	
	.type	$.str.30,@object        //  @.str.30
$.str.30:
	.asciz	"Unknown signal %d"
	.size	$.str.30, 18


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
