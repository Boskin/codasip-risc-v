/* Default linker script, for normal executables */
OUTPUT_FORMAT ("elf64-codasip-le", "elf64-codasip-be", "elf64-codasip-le")

MEMORY
{
    if_code_if_data : org = 0x0000000000000000, len = 0x0000000100000000, as = "as_all"
}

ENTRY (_start)

_TEXT_START_ADDR = DEFINED(_TEXT_START_ADDR) ? _TEXT_START_ADDR : 0x0;
_HEAP_SIZE = DEFINED(_HEAP_SIZE) ? _HEAP_SIZE : 0x0;
_STACK_SIZE = DEFINED(_STACK_SIZE) ? _STACK_SIZE : 0x2000;

SECTIONS
{

/* CODE - as_all (default) */

  .text _TEXT_START_ADDR : {
    _ftext = .;
    KEEP (*(SORT(.crt*)))
    *(.text)
    *(.text.*)
    *(.gnu.linkonce.t.*)
    *(.text_jump_padding)
    _etext = .;
  } >if_code_if_data
  .init_location : { } >if_code_if_data
  . = ADDR(.init_location);
  .init ALIGN(4) : {
    KEEP (*(.init))
  } >if_code_if_data =0
  .fini_location : { } >if_code_if_data
  .fini ALIGN(4) : {
    KEEP (*(.fini))
  } >if_code_if_data =0

/* DATA - as_all (default) */

  .ctors_location : { } >if_code_if_data
  . = ADDR(.ctors_location);
  .ctors ALIGN(4) : {
    PROVIDE (__CTOR_LIST__ = .);
    PROVIDE (___CTOR_LIST__ = .);
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
    PROVIDE (__CTOR_END__ = .);
    PROVIDE (___CTOR_END__ = .);
  } >if_code_if_data
  .dtors_location : { } >if_code_if_data
  . = ADDR(.dtors_location);
  .dtors ALIGN(4) : {
    PROVIDE (__DTOR_LIST__ = .);
    PROVIDE (___DTOR_LIST__ = .);
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
    PROVIDE (__DTOR_END__ = .);
    PROVIDE (___DTOR_END__ = .);
  } >if_code_if_data
  .rodata_location : { } >if_code_if_data
  . = ADDR(.rodata_location);
  .rodata ALIGN(4) : {
    _frodata = .;
    *(.rodata)
    *(.rodata.*)
    *(.gnu.linkonce.r.*)
    _erodata = .;
  } >if_code_if_data
  .data_location : { } >if_code_if_data
  . = ADDR(.data_location);
  .data ALIGN(4) : {
    _fdata = .;
    *(.data)
    *(.data.*)
    *(.gnu.linkonce.d.*)
    _edata = .;
  } >if_code_if_data
  .sdata_location : { } >if_code_if_data
  . = ADDR(.sdata_location);
  .sdata ALIGN(4) : {
    *(.sdata)
    *(.sdata.*)
    *(.gnu.linkonce.s.*)
  } >if_code_if_data
  .sbss_location : { } >if_code_if_data
  . = ADDR(.sbss_location);
  .sbss ALIGN(4) : {
    PROVIDE (__sbss_start = .);
    *(.sbss)
    *(.sbss.*)
    *(.gnu.linkonce.sb.*)
    PROVIDE (__sbss_end = .);
  } >if_code_if_data
  .bss_location : { } >if_code_if_data
  . = ADDR(.bss_location);
  .bss ALIGN(4) : {
    PROVIDE (__bss_start = .);
    *(.bss)
    *(.bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    . = ALIGN(4);
    PROVIDE (__bss_end = .);
  } >if_code_if_data
  .heap_location : { } >if_code_if_data
  . = ADDR(.heap_location);
  .heap ALIGN(4) : {
    _heap = .;
    _heap_start = .;
    . += _HEAP_SIZE;
    _heap_end = .;
  } >if_code_if_data
  .stack_location : { } >if_code_if_data
  . = ADDR(.stack_location);
  .stack ALIGN(8) : {
    _stack_end = .;
    . += _STACK_SIZE;
    . = ALIGN(8);
    _stack = .;
    _end = .;
  } >if_code_if_data
}
