//
// Copyright (c) 2017 Keith Graham
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it
// freely, subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented; you must not
//    claim that you wrote the original software.
// 2. Altered source versions must be plainly marked as such, and must not be
//    misrepresented as being the original software.
// 3. This notice may not be removed or altered from any source distribution.
//

	// The section .crt0 is always put at address 0
	// This can be changed by modifying the GNU linker script
	.section .crt0, "x"

	// Entry point to .crt0 code
_start:
	.global _start

	// Setting the initial value of the stack pointer

	lui x6, _stack & 0xfff				// load the lower 12-bits of the stack pointer
	srli x6, x6, 12						// align the stack pointer to the right
	lui x2, (_stack >> 12) & 0xfffff	// load upper 20-bits of stack pointer
	or x2, x2, x6						// combine the 12 and 20-bit loads to create the stack pointer

	// run global constructors

	j ctors_init

ctors_initialized:

	lui x10, _codasip_argv_pointers & 0xffff
	srli x6, x10, 12
	lui x10, (_codasip_argv_pointers >> 16) & 0xffff
	add x10, x6, x10
	mv x11, x10

	lw x10, 0(x10)

	call $main
	call $exit

	// Once returned from main, the program can be halted / stopped
	halt
	nop
	nop
	nop
	nop

ctors_init:
	// symbols provided by the linker
	lui x7, __CTOR_LIST__ & 0xffff
	srli x6, x7, 12
	lui x7, (__CTOR_LIST__ >> 16) & 0xffff
	add x6, x6, x7

	// reserve space at the top of the stack (8 bytes to keep stack aligned)
	addi x2, x2, -8

ctors_loop:
	lui x29, __CTOR_END__ & 0xffff
	srli x28, x29, 12
	lui x29, (__CTOR_END__ >> 16) & 0xffff
	add x28, x28, x29

	beq x28, x6, ctors_end

	// store x6 since it can be overwritten
	sw x6, 0(x2)

	// load call function address
	lw x6, 0(x6)
	nop
	jalr x1, 0(x6)

	// restore x6
	lw x6, 0(x2)
	nop

	addi x6, x6, 4
	j ctors_loop

ctors_end:
	addi x6, x0, 0
	addi x28, x0, 0

	// move stack pointer back
	addi x2, x2, 8

	// and call main
	j ctors_initialized


abort:
	.global $abort
	.equiv abort_exit_code, 134

	nop
	nop
	nop
	addi x10, x0, abort_exit_code
	nop
	nop
	nop
	halt
	nop
	nop
	nop

$_exit:
	.global $_exit
	// In RISC-V, first function arugment is the same as the first return value register
	nop
	nop
	nop
	halt
	nop
	nop
	nop

	// The following section holds program arguments
	// maximum count of 32 arguments
	// strings to max out at 512 bytes

	.section .progargs, "d"
$_codasip_argc_address:
	.global $_codasip_argc_address
	.word 0
$_codasip_argv_pointers:  // this address represents argv pointer value
	.global $_codasip_argv_pointers
	.fill 32, 4, 0 // each word contains a pointer to the _codasip_argv_strings field, last pointer has the value NULL
$_codasip_argv_strings:
	.global $_codasip_argv_strings
	.fill 512, 1, 0


    // auxiliary section to handle taken jumps/returns that could have
    // issued invalid instructions from data sections into the instruction decoder
    .section .text_jump_padding, "x"
    .word 0
    .word 0
    .word 0


    // needed for C++, see http://wiki.osdev.org/C%2B%2B
    .section .data
    .global $__dso_handle
    .weak   $__dso_handle
$__dso_handle:
    .long    0
