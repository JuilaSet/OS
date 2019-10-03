boxfill8:; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 20                                 ; 0003 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0006 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0009 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 000C _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 000F _ 89. 45, FC
        jmp     ?_004                                   ; 0012 _ EB, 33

?_001:  mov     eax, dword [ebp+14H]                    ; 0014 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0017 _ 89. 45, F8
        jmp     ?_003                                   ; 001A _ EB, 1F

?_002:  mov     eax, dword [ebp-4H]                     ; 001C _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 001F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0023 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0025 _ 8B. 45, F8
        add     eax, edx                                ; 0028 _ 01. D0
        mov     edx, eax                                ; 002A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 002C _ 8B. 45, 08
        add     edx, eax                                ; 002F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0031 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0035 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0037 _ 83. 45, F8, 01
?_003:  mov     eax, dword [ebp-8H]                     ; 003B _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 003E _ 3B. 45, 1C
        jle     ?_002                                   ; 0041 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0043 _ 83. 45, FC, 01
?_004:  mov     eax, dword [ebp-4H]                     ; 0047 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 004A _ 3B. 45, 20
        jle     ?_001                                   ; 004D _ 7E, C5
        nop                                             ; 004F _ 90
        leave                                           ; 0050 _ C9
        ret                                             ; 0051 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0052 _ 55
        mov     ebp, esp                                ; 0053 _ 89. E5
        sub     esp, 20                                 ; 0055 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0058 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 005B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 005E _ C7. 45, FC, 00000000
        jmp     ?_014                                   ; 0065 _ E9, 0000016C

?_005:  mov     edx, dword [ebp-4H]                     ; 006A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 006D _ 8B. 45, 1C
        add     eax, edx                                ; 0070 _ 01. D0
        movzx   eax, byte [eax]                         ; 0072 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0075 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0078 _ 80. 7D, FB, 00
        jns     ?_006                                   ; 007C _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 007E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0081 _ 8B. 45, FC
        add     eax, edx                                ; 0084 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0086 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 008A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 008C _ 8B. 45, 10
        add     eax, edx                                ; 008F _ 01. D0
        mov     edx, eax                                ; 0091 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0093 _ 8B. 45, 08
        add     edx, eax                                ; 0096 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0098 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 009C _ 88. 02
?_006:  movsx   eax, byte [ebp-5H]                      ; 009E _ 0F BE. 45, FB
        and     eax, 40H                                ; 00A2 _ 83. E0, 40
        test    eax, eax                                ; 00A5 _ 85. C0
        jz      ?_007                                   ; 00A7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 00A9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00AC _ 8B. 45, FC
        add     eax, edx                                ; 00AF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 00B1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00B5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00B7 _ 8B. 45, 10
        add     eax, edx                                ; 00BA _ 01. D0
        lea     edx, [eax+1H]                           ; 00BC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 00BF _ 8B. 45, 08
        add     edx, eax                                ; 00C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 00C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 00C8 _ 88. 02
?_007:  movsx   eax, byte [ebp-5H]                      ; 00CA _ 0F BE. 45, FB
        and     eax, 20H                                ; 00CE _ 83. E0, 20
        test    eax, eax                                ; 00D1 _ 85. C0
        jz      ?_008                                   ; 00D3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 00D5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00D8 _ 8B. 45, FC
        add     eax, edx                                ; 00DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 00DD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00E1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00E3 _ 8B. 45, 10
        add     eax, edx                                ; 00E6 _ 01. D0
        lea     edx, [eax+2H]                           ; 00E8 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 00EB _ 8B. 45, 08
        add     edx, eax                                ; 00EE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 00F0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 00F4 _ 88. 02
?_008:  movsx   eax, byte [ebp-5H]                      ; 00F6 _ 0F BE. 45, FB
        and     eax, 10H                                ; 00FA _ 83. E0, 10
        test    eax, eax                                ; 00FD _ 85. C0
        jz      ?_009                                   ; 00FF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0101 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0104 _ 8B. 45, FC
        add     eax, edx                                ; 0107 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0109 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 010D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 010F _ 8B. 45, 10
        add     eax, edx                                ; 0112 _ 01. D0
        lea     edx, [eax+3H]                           ; 0114 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0117 _ 8B. 45, 08
        add     edx, eax                                ; 011A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 011C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0120 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0122 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0126 _ 83. E0, 08
        test    eax, eax                                ; 0129 _ 85. C0
        jz      ?_010                                   ; 012B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 012D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0130 _ 8B. 45, FC
        add     eax, edx                                ; 0133 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0135 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0139 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 013B _ 8B. 45, 10
        add     eax, edx                                ; 013E _ 01. D0
        lea     edx, [eax+4H]                           ; 0140 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0143 _ 8B. 45, 08
        add     edx, eax                                ; 0146 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0148 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 014C _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 014E _ 0F BE. 45, FB
        and     eax, 04H                                ; 0152 _ 83. E0, 04
        test    eax, eax                                ; 0155 _ 85. C0
        jz      ?_011                                   ; 0157 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0159 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 015C _ 8B. 45, FC
        add     eax, edx                                ; 015F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0161 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0165 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0167 _ 8B. 45, 10
        add     eax, edx                                ; 016A _ 01. D0
        lea     edx, [eax+5H]                           ; 016C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 016F _ 8B. 45, 08
        add     edx, eax                                ; 0172 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0174 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0178 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 017A _ 0F BE. 45, FB
        and     eax, 02H                                ; 017E _ 83. E0, 02
        test    eax, eax                                ; 0181 _ 85. C0
        jz      ?_012                                   ; 0183 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0185 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0188 _ 8B. 45, FC
        add     eax, edx                                ; 018B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 018D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0191 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0193 _ 8B. 45, 10
        add     eax, edx                                ; 0196 _ 01. D0
        lea     edx, [eax+6H]                           ; 0198 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 019B _ 8B. 45, 08
        add     edx, eax                                ; 019E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01A0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01A4 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 01A6 _ 0F BE. 45, FB
        and     eax, 01H                                ; 01AA _ 83. E0, 01
        test    eax, eax                                ; 01AD _ 85. C0
        jz      ?_013                                   ; 01AF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01B1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01B4 _ 8B. 45, FC
        add     eax, edx                                ; 01B7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01B9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01BD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01BF _ 8B. 45, 10
        add     eax, edx                                ; 01C2 _ 01. D0
        lea     edx, [eax+7H]                           ; 01C4 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 01C7 _ 8B. 45, 08
        add     edx, eax                                ; 01CA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01CC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01D0 _ 88. 02
?_013:  add     dword [ebp-4H], 1                       ; 01D2 _ 83. 45, FC, 01
?_014:  cmp     dword [ebp-4H], 15                      ; 01D6 _ 83. 7D, FC, 0F
        jle     ?_005                                   ; 01DA _ 0F 8E, FFFFFE8A
        nop                                             ; 01E0 _ 90
        leave                                           ; 01E1 _ C9
        ret                                             ; 01E2 _ C3
; showFont8 End of function

fillAll:; Function begin
        push    ebp                                     ; 01E3 _ 55
        mov     ebp, esp                                ; 01E4 _ 89. E5
        sub     esp, 20                                 ; 01E6 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 01E9 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 01EC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 01EF _ C7. 45, FC, 00000000
        jmp     ?_016                                   ; 01F6 _ EB, 12

?_015:  mov     edx, dword [ebp-4H]                     ; 01F8 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 01FB _ 8B. 45, 08
        add     edx, eax                                ; 01FE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0200 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0204 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0206 _ 83. 45, FC, 01
?_016:  cmp     dword [ebp-4H], 65534                   ; 020A _ 81. 7D, FC, 0000FFFE
        jle     ?_015                                   ; 0211 _ 7E, E5
        nop                                             ; 0213 _ 90
        leave                                           ; 0214 _ C9
        ret                                             ; 0215 _ C3
; fillAll End of function

set_pict:; Function begin
        push    ebp                                     ; 0216 _ 55
        mov     ebp, esp                                ; 0217 _ 89. E5
        sub     esp, 24                                 ; 0219 _ 83. EC, 18
        call    io_load_eflags                          ; 021C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0221 _ 89. 45, F4
        call    io_cli                                  ; 0224 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0229 _ 83. EC, 08
        push    0                                       ; 022C _ 6A, 00
        push    968                                     ; 022E _ 68, 000003C8
        call    io_out8                                 ; 0233 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0238 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 023B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 023E _ 89. 45, F0
        jmp     ?_018                                   ; 0241 _ EB, 5C

?_017:  mov     eax, dword [ebp+10H]                    ; 0243 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0246 _ 0F B6. 00
        movzx   eax, al                                 ; 0249 _ 0F B6. C0
        sub     esp, 8                                  ; 024C _ 83. EC, 08
        push    eax                                     ; 024F _ 50
        push    969                                     ; 0250 _ 68, 000003C9
        call    io_out8                                 ; 0255 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 025A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 025D _ 8B. 45, 10
        add     eax, 1                                  ; 0260 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0263 _ 0F B6. 00
        movzx   eax, al                                 ; 0266 _ 0F B6. C0
        sub     esp, 8                                  ; 0269 _ 83. EC, 08
        push    eax                                     ; 026C _ 50
        push    969                                     ; 026D _ 68, 000003C9
        call    io_out8                                 ; 0272 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0277 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 027A _ 8B. 45, 10
        add     eax, 2                                  ; 027D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0280 _ 0F B6. 00
        movzx   eax, al                                 ; 0283 _ 0F B6. C0
        sub     esp, 8                                  ; 0286 _ 83. EC, 08
        push    eax                                     ; 0289 _ 50
        push    969                                     ; 028A _ 68, 000003C9
        call    io_out8                                 ; 028F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0294 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0297 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 029B _ 83. 45, F0, 01
?_018:  mov     eax, dword [ebp-10H]                    ; 029F _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 02A2 _ 3B. 45, 0C
        jl      ?_017                                   ; 02A5 _ 7C, 9C
        sub     esp, 12                                 ; 02A7 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 02AA _ FF. 75, F4
        call    io_store_eflags                         ; 02AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B2 _ 83. C4, 10
        nop                                             ; 02B5 _ 90
        leave                                           ; 02B6 _ C9
        ret                                             ; 02B7 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 02B8 _ 55
        mov     ebp, esp                                ; 02B9 _ 89. E5
        sub     esp, 8                                  ; 02BB _ 83. EC, 08
        sub     esp, 4                                  ; 02BE _ 83. EC, 04
        push    pict                                    ; 02C1 _ 68, 00000000(d)
        push    16                                      ; 02C6 _ 6A, 10
        push    0                                       ; 02C8 _ 6A, 00
        call    set_pict                                ; 02CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02CF _ 83. C4, 10
        nop                                             ; 02D2 _ 90
        leave                                           ; 02D3 _ C9
        ret                                             ; 02D4 _ C3
; pict_init End of function

CMain:  ; Function begin
        push    ebp                                     ; 02D5 _ 55
        mov     ebp, esp                                ; 02D6 _ 89. E5
        sub     esp, 24                                 ; 02D8 _ 83. EC, 18
        call    pict_init                               ; 02DB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 655360                 ; 02E0 _ C7. 45, F0, 000A0000
        sub     esp, 8                                  ; 02E7 _ 83. EC, 08
        push    8                                       ; 02EA _ 6A, 08
        push    dword [ebp-10H]                         ; 02EC _ FF. 75, F0
        call    fillAll                                 ; 02EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F4 _ 83. C4, 10
        mov     dword [ebp-0CH], 320                    ; 02F7 _ C7. 45, F4, 00000140
        sub     esp, 8                                  ; 02FE _ 83. EC, 08
        push    FONT_LIST                               ; 0301 _ 68, 00000000(d)
        push    7                                       ; 0306 _ 6A, 07
        push    20                                      ; 0308 _ 6A, 14
        push    20                                      ; 030A _ 6A, 14
        push    dword [ebp-0CH]                         ; 030C _ FF. 75, F4
        push    dword [ebp-10H]                         ; 030F _ FF. 75, F0
        call    showFont8                               ; 0312 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0317 _ 83. C4, 20
        sub     esp, 8                                  ; 031A _ 83. EC, 08
        push    vsFont_Mat                              ; 031D _ 68, 00000000(d)
        push    7                                       ; 0322 _ 6A, 07
        push    20                                      ; 0324 _ 6A, 14
        push    36                                      ; 0326 _ 6A, 24
        push    dword [ebp-0CH]                         ; 0328 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 032B _ FF. 75, F0
        call    showFont8                               ; 032E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0333 _ 83. C4, 20
?_019:  call    io_hlt                                  ; 0336 _ E8, FFFFFFFC(rel)
        jmp     ?_019                                   ; 033B _ EB, F9
; CMain End of function


pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........




