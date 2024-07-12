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

    hlt

section .bss

    stack_top resb 4096
    stack_bottom: