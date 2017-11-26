	.text
	.file	"nl_langinfo.bc"
	.globl	$nl_langinfo
	.type	$nl_langinfo,@function
$nl_langinfo:                           //  @nl_langinfo
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x0, 84
	or x3, x3, x28
	bgtu x10, x1, LBB0_58
LBB0_1:                                 //  %entry
	addi x11, x0, 4
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x3
	call $__mulsi3
	add x3, x0, x8
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_2:                                 //  %do_codeset
	addi x10, x0, 2
	add x11, x0, x0
	call $setlocale
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x3, x1, x28
	beqz x10, LBB0_58
LBB0_3:                                 //  %if.then
	addi x11, x0, 46
	add x8, x0, x10
	call $strchr
	beqz x10, LBB0_18
LBB0_4:                                 //  %if.then3
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x8, x10, 1
	or x11, x1, x28
	addi x12, x0, 4
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $strncmp
	bgtu x10, x0, LBB0_10
LBB0_5:                                 //  %if.then6
	add x10, x0, x8
	call $strlen
	ori x28, x0, $nl_langinfo.cset & 0xfff
	slli x28, x28, 20
	lui x1, $nl_langinfo.cset >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $realloc
	add x8, x0, x10
	bgtu x8, x0, LBB0_8
LBB0_6:                                 //  %if.then6
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_8
LBB0_7:                                 //  %if.then10
	call $free
LBB0_8:                                 //  %if.end
	ori x28, x0, $nl_langinfo.cset & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $nl_langinfo.cset >> 12 & 0xfffff
	or x1, x4, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x8, 0 ( x1 )
	lui x1, $.str >> 12 & 0xfffff
	or x3, x1, x28
	beqz x8, LBB0_58
LBB0_9:                                 //  %if.then12
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	add x8, x0, x4
	call $strcpy
	ori x28, x0, $nl_langinfo.cset & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x8, x28
	lw x10, 0 ( x8 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x11, x1, 5
	call $strcat
	lw x3, 0 ( x8 )
	jalr x0, LBB0_58 ( x0 )
LBB0_10:                                //  %if.else17
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	bgtu x10, x0, LBB0_16
LBB0_11:                                //  %if.then20
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	addi x12, x0, 5
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $strncmp
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	beqz x10, LBB0_58
LBB0_12:                                //  %if.else24
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	addi x12, x0, 5
	add x10, x0, x8
	call $strncmp
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	beqz x10, LBB0_58
LBB0_13:                                //  %if.else28
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	addi x12, x0, 5
	add x10, x0, x4
	call $strncmp
	add x1, x0, x10
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.9 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	add x3, x0, x0
	beq x1, x3, LBB0_15
LBB0_14:                                //  %if.else28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
LBB0_15:                                //  %if.else28
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_16:                                //  %if.else35
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	add x1, x0, x0
	beq x10, x1, LBB0_58
LBB0_17:                                //  %if.else35
	add x3, x0, x8
	jalr x0, LBB0_58 ( x0 )
LBB0_18:                                //  %if.else42
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.12 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_21
LBB0_19:                                //  %lor.lhs.false
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.13 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_21
LBB0_20:                                //  %lor.lhs.false47
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strstr
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x3, x1, x28
	beqz x10, LBB0_58
LBB0_21:                                //  %if.then50
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	jalr x0, LBB0_58 ( x0 )
LBB0_22:                                //  %sw.bb54
	call $__get_current_time_locale
	lw x3, 160 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_23:                                //  %sw.bb56
	call $__get_current_time_locale
	lw x3, 156 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_24:                                //  %sw.bb58
	call $__get_current_time_locale
	lw x3, 152 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_25:                                //  %sw.bb60
	call $__get_current_time_locale
	lw x3, 228 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_26:                                //  %sw.bb62
	call $__get_current_time_locale
	lw x3, 164 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_27:                                //  %sw.bb64
	call $__get_current_time_locale
	lw x3, 168 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_28:                                //  %sw.bb68
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x8, x1, 2
	call $__get_current_time_locale
	add x1, x8, x10
	lw x3, 96 ( x1 )
	jalr x0, LBB0_58 ( x0 )
LBB0_29:                                //  %sw.bb71
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x8, x1, 2
	call $__get_current_time_locale
	add x1, x8, x10
	lw x3, 40 ( x1 )
	jalr x0, LBB0_58 ( x0 )
LBB0_30:                                //  %sw.bb75
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x8, x1, 2
	call $__get_current_time_locale
	add x1, x8, x10
	lw x3, -36 ( x1 )
	jalr x0, LBB0_58 ( x0 )
LBB0_31:                                //  %sw.bb79
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x8, x1, 2
	call $__get_current_time_locale
	add x1, x8, x10
	lw x3, -132 ( x1 )
	jalr x0, LBB0_58 ( x0 )
LBB0_32:                                //  %sw.bb83
	call $__get_current_time_locale
	lw x3, 232 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_33:                                //  %sw.bb85
	call $__get_current_time_locale
	lw x3, 236 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_34:                                //  %sw.bb87
	call $__get_current_time_locale
	lw x3, 240 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_35:                                //  %sw.bb89
	call $__get_current_time_locale
	lw x3, 244 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_36:                                //  %sw.bb91
	call $__get_current_time_locale
	lw x3, 248 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_37:                                //  %sw.bb93
	call $__get_current_time_locale
	lw x3, 172 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_38:                                //  %sw.bb95
	call $__get_current_numeric_locale
	lw x3, 0 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_39:                                //  %sw.bb97
	call $__get_current_numeric_locale
	lw x3, 4 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_40:                                //  %sw.bb99
	call $__get_current_messages_locale
	lw x3, 0 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_41:                                //  %sw.bb101
	call $__get_current_messages_locale
	lw x3, 4 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_42:                                //  %sw.bb103
	call $__get_current_messages_locale
	lw x3, 8 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_43:                                //  %sw.bb105
	call $__get_current_messages_locale
	lw x3, 12 ( x10 )
	jalr x0, LBB0_58 ( x0 )
LBB0_44:                                //  %sw.bb107
	call $__get_current_monetary_locale
	lw x1, 4 ( x10 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lbu x1, 0 ( x1 )
	lui x3, $.str >> 12 & 0xfffff
	or x3, x3, x28
	beqz x1, LBB0_58
LBB0_45:                                //  %if.then111
	call $localeconv
	lbu x8, 42 ( x10 )
	call $localeconv
	lbu x1, 44 ( x10 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	or x3, x3, x28
	bne x8, x1, LBB0_58
LBB0_46:                                //  %if.then118
	xori x1, x8, 127
	bgtu x1, x0, LBB0_49
LBB0_47:                                //  %if.then122
	call $__get_current_monetary_locale
	lw x11, 8 ( x10 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $strcmp
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x3, x1, x28
	bgtu x10, x0, LBB0_58
LBB0_48:
	addi x1, x0, 46
	jalr x0, LBB0_52 ( x0 )
LBB0_49:                                //  %if.else129
	add x1, x0, x0
	beq x8, x1, LBB0_51
LBB0_50:
	addi x1, x0, 45
	jalr x0, LBB0_52 ( x0 )
LBB0_51:                                //  %if.else129
	addi x1, x0, 43
LBB0_52:                                //  %if.else129
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $strlen
	ori x28, x0, $nl_langinfo.csym & 0xfff
	slli x28, x28, 20
	lui x1, $nl_langinfo.csym >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x1 )
	addi x11, x10, 2
	add x10, x0, x1
	call $realloc
	add x8, x0, x10
	bgtu x8, x0, LBB0_55
LBB0_53:                                //  %if.then137
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_55
LBB0_54:                                //  %if.then143
	call $free
LBB0_55:                                //  %if.end144
	ori x28, x0, $nl_langinfo.csym & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $nl_langinfo.csym >> 12 & 0xfffff
	or x1, x4, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x8, 0 ( x1 )
	lui x1, $.str >> 12 & 0xfffff
	or x3, x1, x28
	beqz x8, LBB0_58
LBB0_56:                                //  %if.then147
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sb x1, 0 ( x8 )
	addi x10, x8, 1
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $strcpy
	ori x28, x0, $nl_langinfo.csym & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x8, x28
	lw x3, 0 ( x1 )
	jalr x0, LBB0_58 ( x0 )
LBB0_57:                                //  %sw.bb154
	call $__get_current_time_locale
	lw x3, 224 ( x10 )
	nop
LBB0_58:                                //  %sw.epilog
	add x10, x0, x3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi8:
	.cfi_adjust_cfa_offset -32
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$nl_langinfo, ($func_end0)-($nl_langinfo)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_2
	.long	LBB0_22
	.long	LBB0_23
	.long	LBB0_24
	.long	LBB0_25
	.long	LBB0_26
	.long	LBB0_27
	.long	LBB0_28
	.long	LBB0_28
	.long	LBB0_28
	.long	LBB0_28
	.long	LBB0_28
	.long	LBB0_28
	.long	LBB0_28
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_30
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_31
	.long	LBB0_32
	.long	LBB0_33
	.long	LBB0_34
	.long	LBB0_35
	.long	LBB0_36
	.long	LBB0_38
	.long	LBB0_39
	.long	LBB0_40
	.long	LBB0_41
	.long	LBB0_42
	.long	LBB0_43
	.long	LBB0_44
	.long	LBB0_57
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_37

	.address_space	0	
	.type	$nl_langinfo.csym,@object //  @nl_langinfo.csym
	.local	$nl_langinfo.csym
	.comm	$nl_langinfo.csym,4,4
	.address_space	0	
	.type	$nl_langinfo.cset,@object //  @nl_langinfo.cset
	.local	$nl_langinfo.cset
	.comm	$nl_langinfo.cset,4,4
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.zero	1
	.size	$.str, 1

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"ISO_"
	.size	$.str.1, 5

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"ISO"
	.size	$.str.2, 4

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"EUC"
	.size	$.str.3, 4

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"ja_JP"
	.size	$.str.4, 6

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"eucJP"
	.size	$.str.5, 6

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"ko_KR"
	.size	$.str.6, 6

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"eucKR"
	.size	$.str.7, 6

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"zh_CN"
	.size	$.str.8, 6

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"eucCN"
	.size	$.str.9, 6

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	"ASCII"
	.size	$.str.10, 6

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"US-ASCII"
	.size	$.str.11, 9

	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
$.str.12:
	.asciz	"C"
	.size	$.str.12, 2

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
$.str.13:
	.asciz	"POSIX"
	.size	$.str.13, 6


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
