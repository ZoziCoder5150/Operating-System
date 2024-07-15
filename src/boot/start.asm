global start

section .text


start:
    
    mov dword [0xb8000], 0x0F650F48  ; 'H' 'e'
    mov dword [0xb8004], 0x0F6C0F6C  ; 'l' 'l'
    mov dword [0xb8008], 0x0F2C0F6F  ; 'o' ','
    mov dword [0xb800C], 0x0F570F20  ; ' ' 'W'
    mov dword [0xb8010], 0x0F720F6F  ; 'o' 'r'
    mov dword [0xb8014], 0x0F640F6C  ; 'l' 'd'
    mov word [0xb8018], 0x0F21        ; '!'

    mov esp, stack_top
    
    cli
    lgdt [GDT_Descriptor]
    mov eax, cr0
    or eax, 1
    mov cr0, eax
    jmp CODE_SEG:start_protected_mode

[bits 32]
start_protected_mode:
    mov dword [0xb8020], 0x0F210F79  ; '!' 'y'
    mov dword [0xb8024], 0x0F610F59  ; 'a' 'Y'
    mov dword [0xb8028], 0x0F210F20  ; ' ' '!'
    mov dword [0xb802C], 0x0F730F74  ; 's' 't'
    mov dword [0xb8030], 0x0F690F62  ; 'i' 'b'
    mov dword [0xb8034], 0x0F320F20  ; ' ' '2'
    mov word  [0xb8038], 0x0F33       ; '3'
    

section .bss

stack_top resb 4096
stack_bottom:

section .rodata
CODE_SEG equ code_descriptor - GDT_Start
DATA_SEG equ data_descriptor - GDT_Start
GDT_Descriptor:
    dw GDT_End - GDT_Start - 1
    dd GDT_Start
GDT_Start:
    null_descriptor:
        dd 0
        dd 0
    code_descriptor:
        dw 0xffff
        dw 0
        db 0
        db 10011010
        db 11001111
        db 0
    data_descriptor:
        dw 0xffff
        dw 0
        db 0
        db 10010010
        db 11001111
        db 0
    GDT_End: