CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        call    pict_init                               ; 0006 _ E8, FFFFFFFC(rel)

        mov     dword [ebp-0CH], 655360                 ; 000B _ C7. 45, F4, 000A0000
        mov     dword [ebp-10H], 0                      ; 0012 _ C7. 45, F0, 00000000
        jmp     ?_002                                   ; 0019 _ EB, 0F

?_001:  mov     edx, dword [ebp-10H]                    ; 001B _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 001E _ 8B. 45, F4
        add     eax, edx                                ; 0021 _ 01. D0
        mov     byte [eax], 1                           ; 0023 _ C6. 00, 01
        add     dword [ebp-10H], 1                      ; 0026 _ 83. 45, F0, 01
?_002:  cmp     dword [ebp-10H], 32766                  ; 002A _ 81. 7D, F0, 00007FFE
        jle     ?_001                                   ; 0031 _ 7E, E8
?_003:  call    io_hlt                                  ; 0033 _ E8, FFFFFFFC(rel)
        jmp     ?_003                                   ; 0038 _ EB, F9
; CMain End of function

pict_init:; Function begin
        push    ebp                                     ; 003A _ 55
        mov     ebp, esp                                ; 003B _ 89. E5
        sub     esp, 8                                  ; 003D _ 83. EC, 08
        sub     esp, 4                                  ; 0040 _ 83. EC, 04
        push    pict                                    ; 0043 _ 68, 00000000(d)
        push    5                                       ; 0048 _ 6A, 05
        push    0                                       ; 004A _ 6A, 00
        call    set_pict                                ; 004C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0051 _ 83. C4, 10
        nop                                             ; 0054 _ 90
        leave                                           ; 0055 _ C9
        ret                                             ; 0056 _ C3
; pict_init End of function

set_pict:; Function begin
        push    ebp                                     ; 0057 _ 55
        mov     ebp, esp                                ; 0058 _ 89. E5
        sub     esp, 24                                 ; 005A _ 83. EC, 18
        call    io_load_eflags                          ; 005D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0062 _ 89. 45, F4
        call    io_cli                                  ; 0065 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 006A _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 006D _ 89. 45, F0
        jmp     ?_005                                   ; 0070 _ EB, 5C

?_004:  mov     eax, dword [ebp+10H]                    ; 0072 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0075 _ 0F B6. 00
        movzx   eax, al                                 ; 0078 _ 0F B6. C0
        sub     esp, 8                                  ; 007B _ 83. EC, 08
        push    eax                                     ; 007E _ 50
        push    969                                     ; 007F _ 68, 000003C9
        call    io_out8                                 ; 0084 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0089 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 008C _ 8B. 45, 10
        add     eax, 1                                  ; 008F _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0092 _ 0F B6. 00
        movzx   eax, al                                 ; 0095 _ 0F B6. C0
        sub     esp, 8                                  ; 0098 _ 83. EC, 08
        push    eax                                     ; 009B _ 50
        push    969                                     ; 009C _ 68, 000003C9
        call    io_out8                                 ; 00A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A6 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00A9 _ 8B. 45, 10
        add     eax, 2                                  ; 00AC _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 00AF _ 0F B6. 00
        movzx   eax, al                                 ; 00B2 _ 0F B6. C0
        sub     esp, 8                                  ; 00B5 _ 83. EC, 08
        push    eax                                     ; 00B8 _ 50
        push    969                                     ; 00B9 _ 68, 000003C9
        call    io_out8                                 ; 00BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C3 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 00C6 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 00CA _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 00CE _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 00D1 _ 3B. 45, 0C
        jl      ?_004                                   ; 00D4 _ 7C, 9C
        sub     esp, 12                                 ; 00D6 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 00D9 _ FF. 75, F4
        call    io_load_eflags                          ; 00DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E1 _ 83. C4, 10
        nop                                             ; 00E4 _ 90
        leave                                           ; 00E5 _ C9
        ret                                             ; 00E6 _ C3
; set_pict End of function


pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH         ; 0008 _ .......



