	.text
	.file	"syscalls.bc"
	.globl	$write
	.type	$write,@function
$write:                                 //  @write
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
	addi x3, x2, 4
	addi x4, x0, 2
	sw x4, 4 ( x2 )
	sw x10, 16 ( x3 )
	sw x12, 24 ( x3 )
	sw x11, 20 ( x3 )
	// APP
	mv x6, x3 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 12 ( x2 )
	nop
	beqz x3, LBB0_2
LBB0_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB0_2:                                 //  %do.end
	lw x10, 8 ( x2 )
	addi x2, x2, 40
$cfi3:
	.cfi_adjust_cfa_offset -40
$cfi4:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$write, ($func_end0)-($write)
	.cfi_endproc

	.globl	$read
	.type	$read,@function
$read:                                  //  @read
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi5:
	.cfi_def_cfa 2, 0
$cfi6:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi7:
	.cfi_adjust_cfa_offset 40
	addi x3, x2, 4
	slti x4, x0, 1
	sw x4, 4 ( x2 )
	sw x10, 16 ( x3 )
	sw x12, 24 ( x3 )
	sw x11, 20 ( x3 )
	// APP
	mv x6, x3 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 12 ( x2 )
	nop
	beqz x3, LBB1_2
LBB1_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB1_2:                                 //  %do.end
	lw x10, 8 ( x2 )
	addi x2, x2, 40
$cfi8:
	.cfi_adjust_cfa_offset -40
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$read, ($func_end1)-($read)
	.cfi_endproc

	.globl	$close
	.type	$close,@function
$close:                                 //  @close
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi10:
	.cfi_def_cfa 2, 0
$cfi11:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi12:
	.cfi_adjust_cfa_offset 32
	addi x3, x0, 4
	addi x4, x2, 4
	sw x3, 4 ( x2 )
	sw x10, 16 ( x4 )
	// APP
	mv x6, x4 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 12 ( x2 )
	nop
	beqz x3, LBB2_2
LBB2_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB2_2:                                 //  %do.end
	lw x10, 8 ( x2 )
	addi x2, x2, 32
$cfi13:
	.cfi_adjust_cfa_offset -32
$cfi14:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$close, ($func_end2)-($close)
	.cfi_endproc

	.globl	$mystrlen
	.type	$mystrlen,@function
$mystrlen:                              //  @mystrlen
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi15:
	.cfi_def_cfa 2, 0
$cfi16:
	.cfi_val_offset 2, 0
	add x3, x0, x0
LBB3_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x3, x10
	lbu x4, 0 ( x4 )
	addi x3, x3, 1
	bgtu x4, x0, LBB3_1
LBB3_2:                                 //  %while.end
	addi x10, x3, -1
	ret
$func_end3:
	.size	$mystrlen, ($func_end3)-($mystrlen)
	.cfi_endproc

	.globl	$open
	.type	$open,@function
$open:                                  //  @open
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi17:
	.cfi_def_cfa 2, 0
$cfi18:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi19:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi20:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 8 ( x2 )
	lw x10, 48 ( x2 )
	addi x8, x2, 8
	sw x10, 16 ( x8 )
	call $strlen
	sw x10, 20 ( x8 )
	lw x1, 52 ( x2 )
	nop
	sw x1, 24 ( x8 )
	// APP
	mv x6, x8 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x1, 16 ( x2 )
	nop
	beqz x1, LBB4_2
LBB4_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x1, 20 ( x2 )
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 0 ( x3 )
LBB4_2:                                 //  %do.end
	lw x10, 12 ( x2 )
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi21:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi22:
	.cfi_adjust_cfa_offset -48
$cfi23:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$open, ($func_end4)-($open)
	.cfi_endproc

	.globl	$lseek
	.type	$lseek,@function
$lseek:                                 //  @lseek
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi24:
	.cfi_def_cfa 2, 0
$cfi25:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi26:
	.cfi_adjust_cfa_offset 40
	addi x3, x2, 4
	addi x4, x0, 5
	sw x4, 4 ( x2 )
	sw x10, 16 ( x3 )
	sw x11, 20 ( x3 )
	sw x12, 24 ( x3 )
	// APP
	mv x6, x3 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 12 ( x2 )
	nop
	beqz x3, LBB5_2
LBB5_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB5_2:                                 //  %do.end
	lw x10, 8 ( x2 )
	addi x2, x2, 40
$cfi27:
	.cfi_adjust_cfa_offset -40
$cfi28:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$lseek, ($func_end5)-($lseek)
	.cfi_endproc

	.globl	$fstat
	.type	$fstat,@function
$fstat:                                 //  @fstat
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi29:
	.cfi_def_cfa 2, 0
$cfi30:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi31:
	.cfi_adjust_cfa_offset 40
	addi x3, x2, 8
	addi x4, x0, 6
	sw x4, 8 ( x2 )
	sw x10, 16 ( x3 )
	sw x11, 20 ( x3 )
	// APP
	mv x6, x3 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 16 ( x2 )
	nop
	beqz x3, LBB6_2
LBB6_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 20 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB6_2:                                 //  %do.end
	lw x10, 12 ( x2 )
	addi x2, x2, 40
$cfi32:
	.cfi_adjust_cfa_offset -40
$cfi33:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$fstat, ($func_end6)-($fstat)
	.cfi_endproc

	.globl	$stat
	.type	$stat,@function
$stat:                                  //  @stat
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi34:
	.cfi_def_cfa 2, 0
$cfi35:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi36:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi37:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	addi x8, x2, 8
	sw x1, 8 ( x2 )
	sw x10, 16 ( x8 )
	call $strlen
	sw x10, 20 ( x8 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 24 ( x8 )
	// APP
	mv x6, x8 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x1, 16 ( x2 )
	nop
	beqz x1, LBB7_2
LBB7_1:                                 //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x1, 20 ( x2 )
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 0 ( x3 )
LBB7_2:                                 //  %do.end
	lw x10, 12 ( x2 )
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi38:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi39:
	.cfi_adjust_cfa_offset -48
$cfi40:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$stat, ($func_end7)-($stat)
	.cfi_endproc

	.globl	$chown
	.type	$chown,@function
$chown:                                 //  @chown
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi41:
	.cfi_def_cfa 2, 0
$cfi42:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi43:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 7
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi44:
	.cfi_adjust_cfa_offset -16
$cfi45:
	.cfi_def_cfa 2, 0
	ret
$func_end8:
	.size	$chown, ($func_end8)-($chown)
	.cfi_endproc

	.globl	$execve
	.type	$execve,@function
$execve:                                //  @execve
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi46:
	.cfi_def_cfa 2, 0
$cfi47:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi48:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 8
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi49:
	.cfi_adjust_cfa_offset -16
$cfi50:
	.cfi_def_cfa 2, 0
	ret
$func_end9:
	.size	$execve, ($func_end9)-($execve)
	.cfi_endproc

	.globl	$fork
	.type	$fork,@function
$fork:                                  //  @fork
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi51:
	.cfi_def_cfa 2, 0
$cfi52:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi53:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 9
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi54:
	.cfi_adjust_cfa_offset -16
$cfi55:
	.cfi_def_cfa 2, 0
	ret
$func_end10:
	.size	$fork, ($func_end10)-($fork)
	.cfi_endproc

	.globl	$getpid
	.type	$getpid,@function
$getpid:                                //  @getpid
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi56:
	.cfi_def_cfa 2, 0
$cfi57:
	.cfi_val_offset 2, 0
	slti x10, x0, 1
	ret
$func_end11:
	.size	$getpid, ($func_end11)-($getpid)
	.cfi_endproc

	.globl	$gettimeofday
	.type	$gettimeofday,@function
$gettimeofday:                          //  @gettimeofday
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi58:
	.cfi_def_cfa 2, 0
$cfi59:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi60:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi61:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	beqz x11, LBB12_2
LBB12_1:                                //  %if.then
	call $abort
LBB12_2:                                //  %if.end
	addi x3, x0, 11
	addi x1, x2, 4
	sw x3, 4 ( x2 )
	// APP
	mv x6, x1 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 12 ( x2 )
	nop
	beqz x3, LBB12_4
LBB12_3:                                //  %if.then1
	ori x28, x0, $errno & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB12_4:                                //  %do.end
	lw x3, 16 ( x1 )
	lw x1, 20 ( x1 )
	lw x10, 8 ( x2 )
	sw x3, 0 ( x8 )
	sw x1, 4 ( x8 )
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi62:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi63:
	.cfi_adjust_cfa_offset -40
$cfi64:
	.cfi_def_cfa 2, 0
	ret
$func_end12:
	.size	$gettimeofday, ($func_end12)-($gettimeofday)
	.cfi_endproc

	.globl	$isatty
	.type	$isatty,@function
$isatty:                                //  @isatty
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi65:
	.cfi_def_cfa 2, 0
$cfi66:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi67:
	.cfi_adjust_cfa_offset 32
	addi x3, x0, 12
	addi x4, x2, 4
	sw x3, 4 ( x2 )
	sw x10, 16 ( x4 )
	// APP
	mv x6, x4 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 12 ( x2 )
	nop
	beqz x3, LBB13_2
LBB13_1:                                //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB13_2:                                //  %do.end
	lw x10, 8 ( x2 )
	addi x2, x2, 32
$cfi68:
	.cfi_adjust_cfa_offset -32
$cfi69:
	.cfi_def_cfa 2, 0
	ret
$func_end13:
	.size	$isatty, ($func_end13)-($isatty)
	.cfi_endproc

	.globl	$kill
	.type	$kill,@function
$kill:                                  //  @kill
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi70:
	.cfi_def_cfa 2, 0
$cfi71:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi72:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 13
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi73:
	.cfi_adjust_cfa_offset -16
$cfi74:
	.cfi_def_cfa 2, 0
	ret
$func_end14:
	.size	$kill, ($func_end14)-($kill)
	.cfi_endproc

	.globl	$link
	.type	$link,@function
$link:                                  //  @link
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi75:
	.cfi_def_cfa 2, 0
$cfi76:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi77:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 14
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi78:
	.cfi_adjust_cfa_offset -16
$cfi79:
	.cfi_def_cfa 2, 0
	ret
$func_end15:
	.size	$link, ($func_end15)-($link)
	.cfi_endproc

	.globl	$readlink
	.type	$readlink,@function
$readlink:                              //  @readlink
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi80:
	.cfi_def_cfa 2, 0
$cfi81:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi82:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 15
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi83:
	.cfi_adjust_cfa_offset -16
$cfi84:
	.cfi_def_cfa 2, 0
	ret
$func_end16:
	.size	$readlink, ($func_end16)-($readlink)
	.cfi_endproc

	.globl	$symlink
	.type	$symlink,@function
$symlink:                               //  @symlink
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi85:
	.cfi_def_cfa 2, 0
$cfi86:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi87:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 17
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi88:
	.cfi_adjust_cfa_offset -16
$cfi89:
	.cfi_def_cfa 2, 0
	ret
$func_end17:
	.size	$symlink, ($func_end17)-($symlink)
	.cfi_endproc

	.globl	$times
	.type	$times,@function
$times:                                 //  @times
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi90:
	.cfi_def_cfa 2, 0
$cfi91:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi92:
	.cfi_adjust_cfa_offset 32
	addi x3, x0, 18
	addi x4, x2, 8
	sw x3, 8 ( x2 )
	// APP
	mv x6, x4 
	// NO_APP
	// APP
	syscall
	// NO_APP
	lw x3, 16 ( x2 )
	nop
	beqz x3, LBB18_2
LBB18_1:                                //  %if.then
	ori x28, x0, $errno & 0xfff
	lw x3, 20 ( x2 )
	slli x28, x28, 20
	lui x4, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 0 ( x4 )
LBB18_2:                                //  %do.end
	lw x3, 12 ( x2 )
	nop
	sw x3, 12 ( x10 )
	sw x3, 8 ( x10 )
	sw x3, 4 ( x10 )
	sw x3, 0 ( x10 )
	add x10, x0, x3
	addi x2, x2, 32
$cfi93:
	.cfi_adjust_cfa_offset -32
$cfi94:
	.cfi_def_cfa 2, 0
	ret
$func_end18:
	.size	$times, ($func_end18)-($times)
	.cfi_endproc

	.globl	$unlink
	.type	$unlink,@function
$unlink:                                //  @unlink
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi95:
	.cfi_def_cfa 2, 0
$cfi96:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi97:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 19
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi98:
	.cfi_adjust_cfa_offset -16
$cfi99:
	.cfi_def_cfa 2, 0
	ret
$func_end19:
	.size	$unlink, ($func_end19)-($unlink)
	.cfi_endproc

	.globl	$wait
	.type	$wait,@function
$wait:                                  //  @wait
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi100:
	.cfi_def_cfa 2, 0
$cfi101:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi102:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 20
	not x10, x0
	addi x5, x2, 4
	or x3, x3, x28
	addi x7, x0, 88
	sw x4, 4 ( x2 )
	// APP
	mv x6, x5 
	// NO_APP
	// APP
	syscall
	// NO_APP
	sw x7, 0 ( x3 )
	addi x2, x2, 16
$cfi103:
	.cfi_adjust_cfa_offset -16
$cfi104:
	.cfi_def_cfa 2, 0
	ret
$func_end20:
	.size	$wait, ($func_end20)-($wait)
	.cfi_endproc

	.globl	$fcntl
	.type	$fcntl,@function
$fcntl:                                 //  @fcntl
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi105:
	.cfi_def_cfa 2, 0
$cfi106:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi107:
	.cfi_adjust_cfa_offset 16
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x3, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	not x10, x0
	or x3, x3, x28
	addi x4, x0, 88
	sw x4, 0 ( x3 )
	addi x2, x2, 16
$cfi108:
	.cfi_adjust_cfa_offset -16
$cfi109:
	.cfi_def_cfa 2, 0
	ret
$func_end21:
	.size	$fcntl, ($func_end21)-($fcntl)
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
