ENTRY(start)
SECTIONS
{
    . = 1M;
    .multiboot_header : 
    {
        KEEP(*(.multiboot_header))
    }
    .text :
    {
        *(.text)
    }
    .bss :
    {
        *(.bss)
    }
}
