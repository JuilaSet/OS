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

getAddrOffset:; Function begin
        push    ebp                                     ; 0052 _ 55
        mov     ebp, esp                                ; 0053 _ 89. E5
        sub     esp, 20                                 ; 0055 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0058 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 005B _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 005E _ 0F BE. 45, EC
        sub     eax, 97                                 ; 0062 _ 83. E8, 61
        shl     eax, 4                                  ; 0065 _ C1. E0, 04
        add     eax, FONT_LIST                          ; 0068 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 006D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0070 _ 8B. 45, FC
        leave                                           ; 0073 _ C9
        ret                                             ; 0074 _ C3
; getAddrOffset End of function

showFont8:; Function begin
        push    ebp                                     ; 0075 _ 55
        mov     ebp, esp                                ; 0076 _ 89. E5
        sub     esp, 20                                 ; 0078 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 007B _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 007E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0081 _ C7. 45, FC, 00000000
        jmp     ?_014                                   ; 0088 _ E9, 0000016C

?_005:  mov     edx, dword [ebp-4H]                     ; 008D _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0090 _ 8B. 45, 1C
        add     eax, edx                                ; 0093 _ 01. D0
        movzx   eax, byte [eax]                         ; 0095 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0098 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 009B _ 80. 7D, FB, 00
        jns     ?_006                                   ; 009F _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 00A1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00A4 _ 8B. 45, FC
        add     eax, edx                                ; 00A7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 00A9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00AD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00AF _ 8B. 45, 10
        add     eax, edx                                ; 00B2 _ 01. D0
        mov     edx, eax                                ; 00B4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 00B6 _ 8B. 45, 08
        add     edx, eax                                ; 00B9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 00BB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 00BF _ 88. 02
?_006:  movsx   eax, byte [ebp-5H]                      ; 00C1 _ 0F BE. 45, FB
        and     eax, 40H                                ; 00C5 _ 83. E0, 40
        test    eax, eax                                ; 00C8 _ 85. C0
        jz      ?_007                                   ; 00CA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 00CC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00CF _ 8B. 45, FC
        add     eax, edx                                ; 00D2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 00D4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00D8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00DA _ 8B. 45, 10
        add     eax, edx                                ; 00DD _ 01. D0
        lea     edx, [eax+1H]                           ; 00DF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 00E2 _ 8B. 45, 08
        add     edx, eax                                ; 00E5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 00E7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 00EB _ 88. 02
?_007:  movsx   eax, byte [ebp-5H]                      ; 00ED _ 0F BE. 45, FB
        and     eax, 20H                                ; 00F1 _ 83. E0, 20
        test    eax, eax                                ; 00F4 _ 85. C0
        jz      ?_008                                   ; 00F6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 00F8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00FB _ 8B. 45, FC
        add     eax, edx                                ; 00FE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0100 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0104 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0106 _ 8B. 45, 10
        add     eax, edx                                ; 0109 _ 01. D0
        lea     edx, [eax+2H]                           ; 010B _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 010E _ 8B. 45, 08
        add     edx, eax                                ; 0111 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0113 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0117 _ 88. 02
?_008:  movsx   eax, byte [ebp-5H]                      ; 0119 _ 0F BE. 45, FB
        and     eax, 10H                                ; 011D _ 83. E0, 10
        test    eax, eax                                ; 0120 _ 85. C0
        jz      ?_009                                   ; 0122 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0124 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0127 _ 8B. 45, FC
        add     eax, edx                                ; 012A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 012C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0130 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0132 _ 8B. 45, 10
        add     eax, edx                                ; 0135 _ 01. D0
        lea     edx, [eax+3H]                           ; 0137 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 013A _ 8B. 45, 08
        add     edx, eax                                ; 013D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 013F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0143 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0145 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0149 _ 83. E0, 08
        test    eax, eax                                ; 014C _ 85. C0
        jz      ?_010                                   ; 014E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0150 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0153 _ 8B. 45, FC
        add     eax, edx                                ; 0156 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0158 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 015C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 015E _ 8B. 45, 10
        add     eax, edx                                ; 0161 _ 01. D0
        lea     edx, [eax+4H]                           ; 0163 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0166 _ 8B. 45, 08
        add     edx, eax                                ; 0169 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 016B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 016F _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0171 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0175 _ 83. E0, 04
        test    eax, eax                                ; 0178 _ 85. C0
        jz      ?_011                                   ; 017A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 017C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 017F _ 8B. 45, FC
        add     eax, edx                                ; 0182 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0184 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0188 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 018A _ 8B. 45, 10
        add     eax, edx                                ; 018D _ 01. D0
        lea     edx, [eax+5H]                           ; 018F _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0192 _ 8B. 45, 08
        add     edx, eax                                ; 0195 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0197 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 019B _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 019D _ 0F BE. 45, FB
        and     eax, 02H                                ; 01A1 _ 83. E0, 02
        test    eax, eax                                ; 01A4 _ 85. C0
        jz      ?_012                                   ; 01A6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01A8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01AB _ 8B. 45, FC
        add     eax, edx                                ; 01AE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01B0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01B4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01B6 _ 8B. 45, 10
        add     eax, edx                                ; 01B9 _ 01. D0
        lea     edx, [eax+6H]                           ; 01BB _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 01BE _ 8B. 45, 08
        add     edx, eax                                ; 01C1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01C3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01C7 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 01C9 _ 0F BE. 45, FB
        and     eax, 01H                                ; 01CD _ 83. E0, 01
        test    eax, eax                                ; 01D0 _ 85. C0
        jz      ?_013                                   ; 01D2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01D4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01D7 _ 8B. 45, FC
        add     eax, edx                                ; 01DA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01DC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01E0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01E2 _ 8B. 45, 10
        add     eax, edx                                ; 01E5 _ 01. D0
        lea     edx, [eax+7H]                           ; 01E7 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 01EA _ 8B. 45, 08
        add     edx, eax                                ; 01ED _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01EF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01F3 _ 88. 02
?_013:  add     dword [ebp-4H], 1                       ; 01F5 _ 83. 45, FC, 01
?_014:  cmp     dword [ebp-4H], 15                      ; 01F9 _ 83. 7D, FC, 0F
        jle     ?_005                                   ; 01FD _ 0F 8E, FFFFFE8A
        nop                                             ; 0203 _ 90
        leave                                           ; 0204 _ C9
        ret                                             ; 0205 _ C3
; showFont8 End of function

Print:  ; Function begin
        push    ebp                                     ; 0206 _ 55
        mov     ebp, esp                                ; 0207 _ 89. E5
        sub     esp, 16                                 ; 0209 _ 83. EC, 10
        mov     dword [ebp-4H], 1                       ; 020C _ C7. 45, FC, 00000001
        jmp     ?_016                                   ; 0213 _ EB, 3F

?_015:  mov     edx, dword [ebp-4H]                     ; 0215 _ 8B. 55, FC
        mov     eax, dword [ebp+18H]                    ; 0218 _ 8B. 45, 18
        add     eax, edx                                ; 021B _ 01. D0
        movzx   eax, byte [eax]                         ; 021D _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0220 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0223 _ 0F BE. 45, FB
        push    eax                                     ; 0227 _ 50
        call    getAddrOffset                           ; 0228 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 022D _ 83. C4, 04
        mov     edx, eax                                ; 0230 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0232 _ 8B. 45, 10
        imul    eax, dword [ebp-4H]                     ; 0235 _ 0F AF. 45, FC
        add     eax, 20                                 ; 0239 _ 83. C0, 14
        push    edx                                     ; 023C _ 52
        push    7                                       ; 023D _ 6A, 07
        push    20                                      ; 023F _ 6A, 14
        push    eax                                     ; 0241 _ 50
        push    dword [ebp+0CH]                         ; 0242 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0245 _ FF. 75, 08
        call    showFont8                               ; 0248 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 024D _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 0250 _ 83. 45, FC, 01
?_016:  mov     edx, dword [ebp-4H]                     ; 0254 _ 8B. 55, FC
        mov     eax, dword [ebp+18H]                    ; 0257 _ 8B. 45, 18
        add     eax, edx                                ; 025A _ 01. D0
        movzx   eax, byte [eax]                         ; 025C _ 0F B6. 00
        test    al, al                                  ; 025F _ 84. C0
        jnz     ?_015                                   ; 0261 _ 75, B2
        nop                                             ; 0263 _ 90
        leave                                           ; 0264 _ C9
        ret                                             ; 0265 _ C3
; Print End of function

fillAll:; Function begin
        push    ebp                                     ; 0266 _ 55
        mov     ebp, esp                                ; 0267 _ 89. E5
        sub     esp, 20                                 ; 0269 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 026C _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 026F _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0272 _ C7. 45, FC, 00000000
        jmp     ?_018                                   ; 0279 _ EB, 12

?_017:  mov     edx, dword [ebp-4H]                     ; 027B _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 027E _ 8B. 45, 08
        add     edx, eax                                ; 0281 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0283 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0287 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0289 _ 83. 45, FC, 01
?_018:  cmp     dword [ebp-4H], 65534                   ; 028D _ 81. 7D, FC, 0000FFFE
        jle     ?_017                                   ; 0294 _ 7E, E5
        nop                                             ; 0296 _ 90
        leave                                           ; 0297 _ C9
        ret                                             ; 0298 _ C3
; fillAll End of function

set_pict:; Function begin
        push    ebp                                     ; 0299 _ 55
        mov     ebp, esp                                ; 029A _ 89. E5
        sub     esp, 24                                 ; 029C _ 83. EC, 18
        call    io_load_eflags                          ; 029F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 02A4 _ 89. 45, F4
        call    io_cli                                  ; 02A7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 02AC _ 83. EC, 08
        push    0                                       ; 02AF _ 6A, 00
        push    968                                     ; 02B1 _ 68, 000003C8
        call    io_out8                                 ; 02B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02BB _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 02BE _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 02C1 _ 89. 45, F0
        jmp     ?_020                                   ; 02C4 _ EB, 5C

?_019:  mov     eax, dword [ebp+10H]                    ; 02C6 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 02C9 _ 0F B6. 00
        movzx   eax, al                                 ; 02CC _ 0F B6. C0
        sub     esp, 8                                  ; 02CF _ 83. EC, 08
        push    eax                                     ; 02D2 _ 50
        push    969                                     ; 02D3 _ 68, 000003C9
        call    io_out8                                 ; 02D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02DD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 02E0 _ 8B. 45, 10
        add     eax, 1                                  ; 02E3 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 02E6 _ 0F B6. 00
        movzx   eax, al                                 ; 02E9 _ 0F B6. C0
        sub     esp, 8                                  ; 02EC _ 83. EC, 08
        push    eax                                     ; 02EF _ 50
        push    969                                     ; 02F0 _ 68, 000003C9
        call    io_out8                                 ; 02F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02FA _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 02FD _ 8B. 45, 10
        add     eax, 2                                  ; 0300 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0303 _ 0F B6. 00
        movzx   eax, al                                 ; 0306 _ 0F B6. C0
        sub     esp, 8                                  ; 0309 _ 83. EC, 08
        push    eax                                     ; 030C _ 50
        push    969                                     ; 030D _ 68, 000003C9
        call    io_out8                                 ; 0312 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0317 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 031A _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 031E _ 83. 45, F0, 01
?_020:  mov     eax, dword [ebp-10H]                    ; 0322 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0325 _ 3B. 45, 0C
        jl      ?_019                                   ; 0328 _ 7C, 9C
        sub     esp, 12                                 ; 032A _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 032D _ FF. 75, F4
        call    io_store_eflags                         ; 0330 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0335 _ 83. C4, 10
        nop                                             ; 0338 _ 90
        leave                                           ; 0339 _ C9
        ret                                             ; 033A _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 033B _ 55
        mov     ebp, esp                                ; 033C _ 89. E5
        sub     esp, 8                                  ; 033E _ 83. EC, 08
        sub     esp, 4                                  ; 0341 _ 83. EC, 04
        push    pict                                    ; 0344 _ 68, 00000000(d)
        push    16                                      ; 0349 _ 6A, 10
        push    0                                       ; 034B _ 6A, 00
        call    set_pict                                ; 034D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0352 _ 83. C4, 10
        nop                                             ; 0355 _ 90
        leave                                           ; 0356 _ C9
        ret                                             ; 0357 _ C3
; pict_init End of function

CMain:  ; Function begin
        push    ebp                                     ; 0358 _ 55
        mov     ebp, esp                                ; 0359 _ 89. E5
        sub     esp, 24                                 ; 035B _ 83. EC, 18
        call    pict_init                               ; 035E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], 655360                 ; 0363 _ C7. 45, E8, 000A0000
        sub     esp, 8                                  ; 036A _ 83. EC, 08
        push    8                                       ; 036D _ 6A, 08
        push    dword [ebp-18H]                         ; 036F _ FF. 75, E8
        call    fillAll                                 ; 0372 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0377 _ 83. C4, 10
        mov     dword [ebp-14H], 320                    ; 037A _ C7. 45, EC, 00000140
        mov     dword [ebp-10H], 8                      ; 0381 _ C7. 45, F0, 00000008
        mov     dword [ebp-0CH], 16                     ; 0388 _ C7. 45, F4, 00000010
        sub     esp, 8                                  ; 038F _ 83. EC, 08
        push    FONT_LIST                               ; 0392 _ 68, 00000000(d)
        push    7                                       ; 0397 _ 6A, 07
        push    20                                      ; 0399 _ 6A, 14
        push    20                                      ; 039B _ 6A, 14
        push    dword [ebp-14H]                         ; 039D _ FF. 75, EC
        push    dword [ebp-18H]                         ; 03A0 _ FF. 75, E8
        call    showFont8                               ; 03A3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03A8 _ 83. C4, 20
        sub     esp, 12                                 ; 03AB _ 83. EC, 0C
        push    str.1567                                ; 03AE _ 68, 00000030(d)
        push    dword [ebp-0CH]                         ; 03B3 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 03B6 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03B9 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 03BC _ FF. 75, E8
        call    Print                                   ; 03BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03C4 _ 83. C4, 20
        sub     esp, 12                                 ; 03C7 _ 83. EC, 0C
        push    99                                      ; 03CA _ 6A, 63
        call    getAddrOffset                           ; 03CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D1 _ 83. C4, 10
        mov     edx, eax                                ; 03D4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 03D6 _ 8B. 45, F4
        add     eax, 20                                 ; 03D9 _ 83. C0, 14
        sub     esp, 8                                  ; 03DC _ 83. EC, 08
        push    edx                                     ; 03DF _ 52
        push    7                                       ; 03E0 _ 6A, 07
        push    eax                                     ; 03E2 _ 50
        push    20                                      ; 03E3 _ 6A, 14
        push    dword [ebp-14H]                         ; 03E5 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 03E8 _ FF. 75, E8
        call    showFont8                               ; 03EB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03F0 _ 83. C4, 20
?_021:  call    io_hlt                                  ; 03F3 _ E8, FFFFFFFC(rel)
        jmp     ?_021                                   ; 03F8 _ EB, F9
; CMain End of function


pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........

str.1567:                                               ; fword
        db 61H, 62H, 63H, 64H, 65H, 00H                 ; 0030 _ abcde.




