CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 0006 _ C7. 45, F4, 00000000
        call    pict_init                               ; 000D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 655360                 ; 0012 _ C7. 45, F0, 000A0000
        jmp     ?_002                                   ; 0019 _ EB, 10

?_001:  mov     eax, dword [ebp-10H]                    ; 001B _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 001E _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0021 _ 8B. 45, F4
        mov     byte [eax], 3                           ; 0024 _ C6. 00, 03
        add     dword [ebp-10H], 1                      ; 0027 _ 83. 45, F0, 01

?_002:  cmp     dword [ebp-10H], 720895                 ; 002B _ 81. 7D, F0, 000AFFFF
        jle     ?_001                                   ; 0032 _ 7E, E7

?_003:  call    io_hlt                                  ; 0034 _ E8, FFFFFFFC(rel)
        jmp     ?_003                                   ; 0039 _ EB, F9
; CMain End of function

pict_init:; Function begin
        push    ebp                                     ; 003B _ 55
        mov     ebp, esp                                ; 003C _ 89. E5
        sub     esp, 8                                  ; 003E _ 83. EC, 08

        sub     esp, 4                                  ; 0041 _ 83. EC, 04
        push    pict                                    ; 0044 _ 68, 00000000(d)
        push    4                                       ; 0049 _ 6A, 04
        push    0                                       ; 004B _ 6A, 00
        call    set_pict                                ; 004D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0052 _ 83. C4, 10

        nop                                             ; 0055 _ 90
        leave                                           ; 0056 _ C9
        ret                                             ; 0057 _ C3
; pict_init End of function

set_pict:; Function begin
        push    ebp                                     ; 0058 _ 55
        mov     ebp, esp                                ; 0059 _ 89. E5
        sub     esp, 24                                 ; 005B _ 83. EC, 18

        call    io_load_eflags                          ; 005E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0063 _ 89. 45, F4

        call    io_cli                                  ; 0066 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 006B _ 8B. 45, 08

        mov     dword [ebp-10H], eax                    ; 006E _ 89. 45, F0
        jmp     ?_005                                   ; 0071 _ EB, 5C

?_004:  mov     eax, dword [ebp+10H]                    ; 0073 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0076 _ 0F B6. 00
        movzx   eax, al                                 ; 0079 _ 0F B6. C0

        sub     esp, 8                                  ; 007C _ 83. EC, 08
        push    eax                                     ; 007F _ 50
        push    968                                     ; 0080 _ 68, 000003C8
        call    io_out8                                 ; 0085 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008A _ 83. C4, 10

        mov     eax, dword [ebp+10H]                    ; 008D _ 8B. 45, 10
        add     eax, 1                                  ; 0090 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0093 _ 0F B6. 00
        movzx   eax, al                                 ; 0096 _ 0F B6. C0

        sub     esp, 8                                  ; 0099 _ 83. EC, 08
        push    eax                                     ; 009C _ 50
        push    968                                     ; 009D _ 68, 000003C8
        call    io_out8                                 ; 00A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A7 _ 83. C4, 10

        mov     eax, dword [ebp+10H]                    ; 00AA _ 8B. 45, 10
        add     eax, 2                                  ; 00AD _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 00B0 _ 0F B6. 00
        movzx   eax, al                                 ; 00B3 _ 0F B6. C0

        sub     esp, 8                                  ; 00B6 _ 83. EC, 08
        push    eax                                     ; 00B9 _ 50
        push    968                                     ; 00BA _ 68, 000003C8
        call    io_out8                                 ; 00BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C4 _ 83. C4, 10

        add     dword [ebp+10H], 3                      ; 00C7 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 00CB _ 83. 45, F0, 01

?_005:  
	mov     eax, dword [ebp-10H]                    ; 00CF _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 00D2 _ 3B. 45, 0C
        jl      ?_004                                   ; 00D5 _ 7C, 9C
        sub     esp, 12                                 ; 00D7 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 00DA _ FF. 75, F4

        call    io_load_eflags                          ; 00DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E2 _ 83. C4, 10
        nop                                             ; 00E5 _ 90
        leave                                           ; 00E6 _ C9
        ret                                             ; 00E7 _ C3
; set_pict End of function

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 00H, 00H, 0FFH                          ; 0008 _ ....

