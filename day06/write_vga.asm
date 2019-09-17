; Function begin
CMain:
	push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 20                                 ; 0004 _ 83. EC, 14
        mov     dword [ebp-0CH], 0                      ; 0012 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 655360                 ; 0019 _ C7. 45, F0, 000A0000
?_001:  cmp     dword [ebp-10H], 720895                 ; 0020 _ 81. 7D, F0, 000AFFFF
        jg      ?_002                                   ; 0027 _ 7F, 19
        mov     eax, dword [ebp-10H]                    ; 0029 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 002C _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 002F _ 8B. 45, F0
        and     eax, 0FH                                ; 0032 _ 83. E0, 0F
        mov     edx, eax                                ; 0035 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0037 _ 8B. 45, F4
        mov     byte [eax], dl                          ; 003A _ 88. 10
        add     dword [ebp-10H], 1                      ; 003C _ 83. 45, F0, 01
        jmp     ?_001                                   ; 0040 _ EB, DE

?_002:  call    io_hlt					; 0042 _ E8, FFFFFFFC(PLT r)
        jmp     ?_002                                   ; 0047 _ EB, F9

; CMain End of function

