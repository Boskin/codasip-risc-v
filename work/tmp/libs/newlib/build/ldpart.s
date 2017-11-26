	.text
	.file	"ldpart.bc"
	.globl	$__part_load_locale
	.type	$__part_load_locale,@function
$__part_load_locale:                    //  @__part_load_locale
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -1152
$cfi2:
	.cfi_adjust_cfa_offset 1152
	sw x1, 1148 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 1140 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	lw x1, 0 ( x8 )
	sw x0, 0 ( x8 )
	beqz x10, LBB0_35
LBB0_1:                                 //  %if.end
	sw x13, 36 ( x2 )               //  4-byte Folded Spill
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x15, 24 ( x2 )               //  4-byte Folded Spill
	sw x14, 28 ( x2 )               //  4-byte Folded Spill
	sw x16, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $strcmp
	add x1, x0, x0
	beqz x10, LBB0_9
LBB0_2:                                 //  %lor.lhs.false
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_8
LBB0_3:                                 //  %if.end4
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	beqz x11, LBB0_10
LBB0_4:                                 //  %land.lhs.true
	add x10, x0, x8
	call $strcmp
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_10
LBB0_5:                                 //  %if.then8
	ori x28, x0, $__part_load_locale.num_lines & 0xfff
	slli x28, x28, 20
	lui x1, $__part_load_locale.num_lines >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	ble x1, x0, LBB0_7
LBB0_6:                                 //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	call $strlen
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x3, x1, 1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x3, 0 ( x8 )
	addi x8, x8, 4
	bgtu x1, x0, LBB0_6
LBB0_7:                                 //  %set_from_buf.exit
	slti x1, x0, 1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB0_8:                                 //  %cleanup
	add x1, x0, x0
LBB0_9:                                 //  %cleanup
	add x10, x0, x1
	lw x8, 1140 ( x2 )              //  4-byte Folded Reload
	lw x1, 1148 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 1152
$cfi5:
	.cfi_adjust_cfa_offset -1152
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_10:                                //  %if.end9
	add x10, x0, x8
	call $strlen
	ori x28, x0, $_PathLocale & 0xfff
	slli x28, x28, 20
	lui x1, $_PathLocale >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x11, 0 ( x1 )
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	beqz x11, LBB0_34
LBB0_11:                                //  %if.end13
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 116
	call $strcpy
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 116
	call $strcat
	addi x10, x2, 116
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $strcat
	addi x10, x2, 116
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $strcat
	addi x10, x2, 116
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $strcat
	sw x0, 4 ( x2 )
	addi x1, x2, 116
	sw x1, 0 ( x2 )
	call $open
	bgt x0, x10, LBB0_34
LBB0_12:                                //  %if.end27
	addi x11, x2, 56
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	call $fstat
	bgtu x10, x0, LBB0_33
LBB0_13:                                //  %if.end31
	lw x1, 72 ( x2 )
	nop
	ble x1, x0, LBB0_33
LBB0_14:                                //  %if.end34
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	addi x1, x1, 2
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x8, LBB0_18
LBB0_15:                                //  %if.end34
	lui x3, $__part_load_locale.locale_buf_C >> 12 & 0xfffff
	ori x28, x0, $__part_load_locale.locale_buf_C & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	beq x8, x3, LBB0_18
LBB0_16:                                //  %if.else
	add x10, x0, x8
	add x11, x0, x1
	call $realloc
	bgtu x10, x0, LBB0_19
LBB0_17:                                //  %if.end49.thread
	add x10, x0, x8
	jalr x0, LBB0_31 ( x0 )
LBB0_18:                                //  %if.end49
	add x10, x0, x1
	call $malloc
	beqz x10, LBB0_32
LBB0_19:                                //  %if.end52
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $strcpy
	lw x12, 72 ( x2 )
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x8
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	call $read
	lw x1, 72 ( x2 )
	nop
	bne x10, x1, LBB0_30
LBB0_20:                                //  %if.end61
	add x10, x0, x8
	call $close
	bgtu x10, x0, LBB0_30
LBB0_21:                                //  %if.end65
	lw x1, 72 ( x2 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x8, x3
	add x1, x1, x3
	sb x0, 0 ( x1 )
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lbu x1, -1 ( x4 )
	nop
	xori x1, x1, 10
	bgtu x1, x0, LBB0_30
LBB0_22:                                //  %if.end71
	bgt x8, x0, LBB0_24
LBB0_23:
	add x8, x0, x0
	jalr x0, LBB0_27 ( x0 )
LBB0_24:                                //  %for.body.i142.preheader
	add x8, x0, x0
LBB0_25:                                //  %for.body.i142
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x3
	addi x11, x0, 10
	call $strchr
	beqz x10, LBB0_27
LBB0_26:                                //  %if.end.i
                                        //    in Loop: Header=BB0_25 Depth=1
	addi x3, x10, 1
	addi x8, x8, 1
	sb x0, 0 ( x10 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_25
LBB0_27:                                //  %split_lines.exit
	ori x28, x0, $__part_load_locale.num_lines & 0xfff
	slli x28, x28, 20
	lui x1, $__part_load_locale.num_lines >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	sw x8, 0 ( x3 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	ble x3, x8, LBB0_36
LBB0_28:                                //  %if.else76
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x0, x4
	ble x4, x8, LBB0_36
LBB0_29:
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB0_30:                                //  %bad_lbuf
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_31:                                //  %bad_locale
	call $free
LBB0_32:                                //  %bad_locale
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
LBB0_33:                                //  %bad_locale
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $close
LBB0_34:                                //  %no_locale
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_35:                                //  %no_locale
	sw x1, 0 ( x8 )
	not x1, x0
	jalr x0, LBB0_9 ( x0 )
LBB0_36:                                //  %if.end82
	ori x28, x0, $__part_load_locale.num_lines & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x3, 0 ( x1 )
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	ble x3, x0, LBB0_7
LBB0_37:                                //  %for.body.i155
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	call $strlen
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x1, x1, 1
	addi x3, x3, -1
	sw x1, 0 ( x8 )
	addi x8, x8, 4
	bgtu x3, x0, LBB0_37
	jalr x0, LBB0_7 ( x0 )
$func_end0:
	.size	$__part_load_locale, ($func_end0)-($__part_load_locale)
	.cfi_endproc

	.address_space	0	
	.type	$__part_load_locale.locale_buf_C,@object //  @__part_load_locale.locale_buf_C
	.data
$__part_load_locale.locale_buf_C:
	.asciz	"C"
	.size	$__part_load_locale.locale_buf_C, 2

	.address_space	0	
	.type	$__part_load_locale.num_lines,@object //  @__part_load_locale.num_lines
	.local	$__part_load_locale.num_lines
	.comm	$__part_load_locale.num_lines,4,4
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"C"
	.size	$.str, 2

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"POSIX"
	.size	$.str.1, 6

	.address_space	0	
	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"/"
	.size	$.str.2, 2


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
