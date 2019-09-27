CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        call    pict_init                               ; 0006 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], 655360                 ; 000B _ C7. 45, F4, 000A0000
        sub     esp, 4                                  ; 0012 _ 83. EC, 04
        push    120                                     ; 0015 _ 6A, 78
        push    120                                     ; 0017 _ 6A, 78
        push    20                                      ; 0019 _ 6A, 14
        push    20                                      ; 001B _ 6A, 14
        push    1                                       ; 001D _ 6A, 01
        push    320                                     ; 001F _ 68, 00000140
        push    dword [ebp-0CH]                         ; 0024 _ FF. 75, F4
        call    boxfill8                                ; 0027 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 002C _ 83. C4, 20
        sub     esp, 4                                  ; 002F _ 83. EC, 04
        push    150                                     ; 0032 _ 68, 00000096
        push    170                                     ; 0037 _ 68, 000000AA
        push    50                                      ; 003C _ 6A, 32
        push    70                                      ; 003E _ 6A, 46
        push    2                                       ; 0040 _ 6A, 02
        push    320                                     ; 0042 _ 68, 00000140
        push    dword [ebp-0CH]                         ; 0047 _ FF. 75, F4
        call    boxfill8                                ; 004A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 004F _ 83. C4, 20
        sub     esp, 4                                  ; 0052 _ 83. EC, 04
        push    180                                     ; 0055 _ 68, 000000B4
        push    220                                     ; 005A _ 68, 000000DC
        push    80                                      ; 005F _ 6A, 50
        push    120                                     ; 0061 _ 6A, 78
        push    4                                       ; 0063 _ 6A, 04
        push    320                                     ; 0065 _ 68, 00000140
        push    dword [ebp-0CH]                         ; 006A _ FF. 75, F4
        call    boxfill8                                ; 006D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0072 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0075 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 007A _ EB, F9
; CMain End of function

pict_init:; Function begin
        push    ebp                                     ; 007C _ 55
        mov     ebp, esp                                ; 007D _ 89. E5
        sub     esp, 8                                  ; 007F _ 83. EC, 08
        sub     esp, 4                                  ; 0082 _ 83. EC, 04
        push    pict                                    ; 0085 _ 68, 00000000(d)
        push    16                                      ; 008A _ 6A, 10
        push    0                                       ; 008C _ 6A, 00
        call    set_pict                                ; 008E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0093 _ 83. C4, 10
        nop                                             ; 0096 _ 90
        leave                                           ; 0097 _ C9
        ret                                             ; 0098 _ C3
; pict_init End of function

set_pict:; Function begin
        push    ebp                                     ; 0099 _ 55
        mov     ebp, esp                                ; 009A _ 89. E5
        sub     esp, 24                                 ; 009C _ 83. EC, 18
        call    io_load_eflags                          ; 009F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 00A4 _ 89. 45, F4
        call    io_cli                                  ; 00A7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 00AC _ 83. EC, 08
        push    0                                       ; 00AF _ 6A, 00
        push    968                                     ; 00B1 _ 68, 000003C8
        call    io_out8                                 ; 00B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BB _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 00BE _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 00C1 _ 89. 45, F0
        jmp     ?_003                                   ; 00C4 _ EB, 5C

?_002:  mov     eax, dword [ebp+10H]                    ; 00C6 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 00C9 _ 0F B6. 00
        movzx   eax, al                                 ; 00CC _ 0F B6. C0
        sub     esp, 8                                  ; 00CF _ 83. EC, 08
        push    eax                                     ; 00D2 _ 50
        push    969                                     ; 00D3 _ 68, 000003C9
        call    io_out8                                 ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00E0 _ 8B. 45, 10
        add     eax, 1                                  ; 00E3 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 00E6 _ 0F B6. 00
        movzx   eax, al                                 ; 00E9 _ 0F B6. C0
        sub     esp, 8                                  ; 00EC _ 83. EC, 08
        push    eax                                     ; 00EF _ 50
        push    969                                     ; 00F0 _ 68, 000003C9
        call    io_out8                                 ; 00F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00FA _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 00FD _ 8B. 45, 10
        add     eax, 2                                  ; 0100 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0103 _ 0F B6. 00
        movzx   eax, al                                 ; 0106 _ 0F B6. C0
        sub     esp, 8                                  ; 0109 _ 83. EC, 08
        push    eax                                     ; 010C _ 50
        push    969                                     ; 010D _ 68, 000003C9
        call    io_out8                                 ; 0112 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0117 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 011A _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 011E _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 0122 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0125 _ 3B. 45, 0C
        jl      ?_002                                   ; 0128 _ 7C, 9C
        sub     esp, 12                                 ; 012A _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 012D _ FF. 75, F4
        call    io_load_eflags                          ; 0130 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0135 _ 83. C4, 10
        nop                                             ; 0138 _ 90
        leave                                           ; 0139 _ C9
        ret                                             ; 013A _ C3
; set_pict End of function

boxfill8:; Function begin
        push    ebp                                     ; 013B _ 55
        mov     ebp, esp                                ; 013C _ 89. E5
        sub     esp, 20                                 ; 013E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0141 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0144 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0147 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 014A _ 89. 45, FC
        jmp     ?_007                                   ; 014D _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 014F _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0152 _ 89. 45, F8
        jmp     ?_006                                   ; 0155 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 0157 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 015A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 015E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0160 _ 8B. 45, F8
        add     eax, edx                                ; 0163 _ 01. D0
        mov     edx, eax                                ; 0165 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0167 _ 8B. 45, 08
        add     edx, eax                                ; 016A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 016C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0170 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0172 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 0176 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0179 _ 3B. 45, 1C
        jle     ?_005                                   ; 017C _ 7E, D9
        add     dword [ebp-4H], 1                       ; 017E _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 0182 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0185 _ 3B. 45, 20
        jle     ?_004                                   ; 0188 _ 7E, C5
        nop                                             ; 018A _ 90
        leave                                           ; 018B _ C9
        ret                                             ; 018C _ C3
; boxfill8 End of function


pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........



