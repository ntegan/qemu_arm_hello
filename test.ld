ENTRY(_Reset)
SECTIONS
{
    . = 0x10000
    .startup . : { startup.o(.test) }
    .text : { *(.text) }
    .data : { *(.data) }
    .bss : { *(.bss COMMON) }
    . = ALIGN(8);
    . = . + 0x1000; /* 4KiB stack mem */
    stack_top = .;
}
