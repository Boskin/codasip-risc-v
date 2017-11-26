	.text
	.file	"signal.bc"
	.globl	$_init_signal_r
	.type	$_init_signal_r,@function
$_init_signal_r:                        //  @_init_signal_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 732 ( x8 )
	add x10, x0, x0
	bgtu x1, x0, LBB0_4
LBB0_1:                                 //  %if.then
	addi x11, x0, 128
	add x10, x0, x8
	call $_malloc_r
	sw x10, 732 ( x8 )
	bgtu x10, x0, LBB0_3
LBB0_2:
	not x10, x0
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %for.body.preheader
	sw x0, 0 ( x10 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 4 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 8 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 12 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 16 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 20 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 24 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 28 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 32 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 36 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 40 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 44 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 48 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 52 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 56 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 60 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 64 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 68 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 72 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 76 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 80 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 84 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 88 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 92 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 96 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 100 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 104 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 108 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 112 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 116 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 120 ( x1 )
	lw x1, 732 ( x8 )
	nop
	sw x0, 124 ( x1 )
	add x10, x0, x0
LBB0_4:                                 //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_init_signal_r, ($func_end0)-($_init_signal_r)
	.cfi_endproc

	.globl	$_signal_r
	.type	$_signal_r,@function
$_signal_r:                             //  @_signal_r
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
	add x8, x0, x10
	sltiu x1, x11, 32
	bgtu x1, x0, LBB1_2
LBB1_1:                                 //  %if.then
	addi x1, x0, 22
	sw x1, 0 ( x8 )
	not x10, x0
	jalr x0, LBB1_7 ( x0 )
LBB1_2:                                 //  %if.end
	lw x1, 732 ( x8 )
	nop
	bgtu x1, x0, LBB1_6
LBB1_3:                                 //  %land.lhs.true
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $_init_signal_r
	beqz x10, LBB1_5
LBB1_4:
	not x10, x0
	jalr x0, LBB1_7 ( x0 )
LBB1_5:                                 //  %land.lhs.true.if.end5_crit_edge
	lw x1, 732 ( x8 )
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_6:                                 //  %if.end5
	slli x3, x11, 2
	add x1, x3, x1
	lw x10, 0 ( x1 )
	sw x12, 0 ( x1 )
LBB1_7:                                 //  %cleanup
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
	.size	$_signal_r, ($func_end1)-($_signal_r)
	.cfi_endproc

	.globl	$_raise_r
	.type	$_raise_r,@function
$_raise_r:                              //  @_raise_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi16:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x5, x0, x10
	sltiu x1, x8, 32
	bgtu x1, x0, LBB2_2
LBB2_1:                                 //  %if.then
	addi x1, x0, 22
	sw x1, 0 ( x5 )
	not x10, x0
	jalr x0, LBB2_10 ( x0 )
LBB2_2:                                 //  %if.end
	lw x1, 732 ( x5 )
	add x10, x0, x0
	add x3, x0, x10
	beqz x1, LBB2_4
LBB2_3:                                 //  %if.else
	slli x3, x8, 2
	add x3, x3, x1
	lw x3, 0 ( x3 )
	nop
LBB2_4:                                 //  %if.end5
	xori x4, x3, -1
	beqz x4, LBB2_8
LBB2_5:                                 //  %if.end5
	xori x4, x3, 1
	beqz x4, LBB2_10
LBB2_6:                                 //  %if.end5
	bgtu x3, x0, LBB2_9
LBB2_7:                                 //  %if.then7
	add x10, x0, x5
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $_getpid_r
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	add x12, x0, x8
	call $_kill_r
	jalr x0, LBB2_10 ( x0 )
LBB2_8:                                 //  %if.then14
	addi x1, x0, 22
	sw x1, 0 ( x5 )
	slti x10, x0, 1
	jalr x0, LBB2_10 ( x0 )
LBB2_9:                                 //  %if.else16
	slli x4, x8, 2
	add x1, x4, x1
	sw x0, 0 ( x1 )
	add x10, x0, x8
	call_reg x3
	add x10, x0, x0
LBB2_10:                                //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi19:
	.cfi_adjust_cfa_offset -24
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$_raise_r, ($func_end2)-($_raise_r)
	.cfi_endproc

	.globl	$__sigtramp_r
	.type	$__sigtramp_r,@function
$__sigtramp_r:                          //  @__sigtramp_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi23:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 31
	not x8, x0
	bgtu x11, x1, LBB3_11
LBB3_1:                                 //  %if.end
	lw x1, 732 ( x10 )
	nop
	bgtu x1, x0, LBB3_4
LBB3_2:                                 //  %land.lhs.true
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $_init_signal_r
	bgtu x10, x0, LBB3_11
LBB3_3:                                 //  %land.lhs.true.if.end5_crit_edge
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 732 ( x1 )
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB3_4:                                 //  %if.end5
	slli x3, x11, 2
	add x1, x3, x1
	lw x8, 0 ( x1 )
	nop
	xori x3, x8, 1
	beqz x3, LBB3_9
LBB3_5:                                 //  %if.end5
	bgtu x8, x0, LBB3_7
LBB3_6:
	slti x8, x0, 1
	jalr x0, LBB3_11 ( x0 )
LBB3_7:                                 //  %if.end5
	xori x3, x8, -1
	bgtu x3, x0, LBB3_10
LBB3_8:                                 //  %if.then10
	addi x8, x0, 2
	jalr x0, LBB3_11 ( x0 )
LBB3_9:                                 //  %if.then13
	addi x8, x0, 3
	jalr x0, LBB3_11 ( x0 )
LBB3_10:                                //  %if.else14
	sw x0, 0 ( x1 )
	add x10, x0, x11
	call_reg x8
	add x8, x0, x0
LBB3_11:                                //  %cleanup
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi26:
	.cfi_adjust_cfa_offset -24
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$__sigtramp_r, ($func_end3)-($__sigtramp_r)
	.cfi_endproc

	.globl	$raise
	.type	$raise,@function
$raise:                                 //  @raise
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi30:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sltiu x3, x10, 32
	lw x5, 0 ( x1 )
	bgtu x3, x0, LBB4_2
LBB4_1:                                 //  %if.then.i
	addi x1, x0, 22
	sw x1, 0 ( x5 )
	not x8, x0
	jalr x0, LBB4_10 ( x0 )
LBB4_2:                                 //  %if.end.i
	lw x1, 732 ( x5 )
	add x8, x0, x0
	add x3, x0, x8
	beqz x1, LBB4_4
LBB4_3:                                 //  %if.else.i
	slli x3, x10, 2
	add x3, x3, x1
	lw x3, 0 ( x3 )
	nop
LBB4_4:                                 //  %if.end5.i
	xori x4, x3, -1
	beqz x4, LBB4_8
LBB4_5:                                 //  %if.end5.i
	xori x4, x3, 1
	beqz x4, LBB4_10
LBB4_6:                                 //  %if.end5.i
	bgtu x3, x0, LBB4_9
LBB4_7:                                 //  %if.then7.i
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	add x8, x0, x5
	call $_getpid_r
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_kill_r
	add x8, x0, x10
	jalr x0, LBB4_10 ( x0 )
LBB4_8:                                 //  %if.then14.i
	addi x1, x0, 22
	sw x1, 0 ( x5 )
	slti x8, x0, 1
	jalr x0, LBB4_10 ( x0 )
LBB4_9:                                 //  %if.else16.i
	slli x4, x10, 2
	add x1, x4, x1
	sw x0, 0 ( x1 )
	call_reg x3
LBB4_10:                                //  %_raise_r.exit
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi33:
	.cfi_adjust_cfa_offset -24
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$raise, ($func_end4)-($raise)
	.cfi_endproc

	.globl	$signal
	.type	$signal,@function
$signal:                                //  @signal
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi37:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi38:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sltiu x3, x10, 32
	lw x8, 0 ( x1 )
	bgtu x3, x0, LBB5_2
LBB5_1:                                 //  %if.then.i
	addi x1, x0, 22
	sw x1, 0 ( x8 )
	not x10, x0
	jalr x0, LBB5_7 ( x0 )
LBB5_2:                                 //  %if.end.i
	lw x1, 732 ( x8 )
	nop
	bgtu x1, x0, LBB5_6
LBB5_3:                                 //  %land.lhs.true.i
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $_init_signal_r
	beqz x10, LBB5_5
LBB5_4:
	not x10, x0
	jalr x0, LBB5_7 ( x0 )
LBB5_5:                                 //  %land.lhs.true.if.end5_crit_edge.i
	lw x1, 732 ( x8 )
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
LBB5_6:                                 //  %if.end5.i
	slli x3, x10, 2
	add x1, x3, x1
	lw x10, 0 ( x1 )
	sw x11, 0 ( x1 )
LBB5_7:                                 //  %_signal_r.exit
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi39:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi40:
	.cfi_adjust_cfa_offset -24
$cfi41:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$signal, ($func_end5)-($signal)
	.cfi_endproc

	.globl	$_init_signal
	.type	$_init_signal,@function
$_init_signal:                          //  @_init_signal
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi42:
	.cfi_def_cfa 2, 0
$cfi43:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x10, 0 ( x3 )
	nop
	j $_init_signal_r
$func_end6:
	.size	$_init_signal, ($func_end6)-($_init_signal)
	.cfi_endproc

	.globl	$__sigtramp
	.type	$__sigtramp,@function
$__sigtramp:                            //  @__sigtramp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi44:
	.cfi_def_cfa 2, 0
$cfi45:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi46:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi47:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 31
	not x8, x0
	or x1, x1, x28
	bgtu x10, x3, LBB7_11
LBB7_1:                                 //  %if.end.i
	lw x3, 0 ( x1 )
	nop
	lw x1, 732 ( x3 )
	nop
	bgtu x1, x0, LBB7_4
LBB7_2:                                 //  %land.lhs.true.i
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x3
	call $_init_signal_r
	bgtu x10, x0, LBB7_11
LBB7_3:                                 //  %land.lhs.true.if.end5_crit_edge.i
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 732 ( x1 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB7_4:                                 //  %if.end5.i
	slli x3, x10, 2
	add x1, x3, x1
	lw x8, 0 ( x1 )
	nop
	xori x3, x8, 1
	beqz x3, LBB7_9
LBB7_5:                                 //  %if.end5.i
	bgtu x8, x0, LBB7_7
LBB7_6:
	slti x8, x0, 1
	jalr x0, LBB7_11 ( x0 )
LBB7_7:                                 //  %if.end5.i
	xori x3, x8, -1
	bgtu x3, x0, LBB7_10
LBB7_8:                                 //  %if.then10.i
	addi x8, x0, 2
	jalr x0, LBB7_11 ( x0 )
LBB7_9:                                 //  %if.then13.i
	addi x8, x0, 3
	jalr x0, LBB7_11 ( x0 )
LBB7_10:                                //  %if.else14.i
	sw x0, 0 ( x1 )
	call_reg x8
	add x8, x0, x0
LBB7_11:                                //  %__sigtramp_r.exit
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi48:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi49:
	.cfi_adjust_cfa_offset -24
$cfi50:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$__sigtramp, ($func_end7)-($__sigtramp)
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
