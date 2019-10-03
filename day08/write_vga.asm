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
        jmp     ?_016                                   ; 0213 _ EB, 44

?_015:  mov     edx, dword [ebp-4H]                     ; 0215 _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 0218 _ 8B. 45, 20
        add     eax, edx                                ; 021B _ 01. D0
        movzx   eax, byte [eax]                         ; 021D _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0220 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0223 _ 0F BE. 45, FB
        push    eax                                     ; 0227 _ 50
        call    getAddrOffset                           ; 0228 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 022D _ 83. C4, 04
        mov     ecx, eax                                ; 0230 _ 89. C1
        mov     eax, dword [ebp+18H]                    ; 0232 _ 8B. 45, 18
        imul    eax, dword [ebp-4H]                     ; 0235 _ 0F AF. 45, FC
        mov     edx, eax                                ; 0239 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 023B _ 8B. 45, 10
        add     eax, edx                                ; 023E _ 01. D0
        push    ecx                                     ; 0240 _ 51
        push    7                                       ; 0241 _ 6A, 07
        push    dword [ebp+14H]                         ; 0243 _ FF. 75, 14
        push    eax                                     ; 0246 _ 50
        push    dword [ebp+0CH]                         ; 0247 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 024A _ FF. 75, 08
        call    showFont8                               ; 024D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0252 _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 0255 _ 83. 45, FC, 01
?_016:  mov     edx, dword [ebp-4H]                     ; 0259 _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 025C _ 8B. 45, 20
        add     eax, edx                                ; 025F _ 01. D0
        movzx   eax, byte [eax]                         ; 0261 _ 0F B6. 00
        test    al, al                                  ; 0264 _ 84. C0
        jnz     ?_015                                   ; 0266 _ 75, AD
        nop                                             ; 0268 _ 90
        leave                                           ; 0269 _ C9
        ret                                             ; 026A _ C3
; Print End of function

fillAll:; Function begin
        push    ebp                                     ; 026B _ 55
        mov     ebp, esp                                ; 026C _ 89. E5
        sub     esp, 20                                 ; 026E _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0271 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0274 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0277 _ C7. 45, FC, 00000000
        jmp     ?_018                                   ; 027E _ EB, 12

?_017:  mov     edx, dword [ebp-4H]                     ; 0280 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0283 _ 8B. 45, 08
        add     edx, eax                                ; 0286 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0288 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 028C _ 88. 02
        add     dword [ebp-4H], 1                       ; 028E _ 83. 45, FC, 01
?_018:  cmp     dword [ebp-4H], 65534                   ; 0292 _ 81. 7D, FC, 0000FFFE
        jle     ?_017                                   ; 0299 _ 7E, E5
        nop                                             ; 029B _ 90
        leave                                           ; 029C _ C9
        ret                                             ; 029D _ C3
; fillAll End of function

set_pict:; Function begin
        push    ebp                                     ; 029E _ 55
        mov     ebp, esp                                ; 029F _ 89. E5
        sub     esp, 24                                 ; 02A1 _ 83. EC, 18
        call    io_load_eflags                          ; 02A4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 02A9 _ 89. 45, F4
        call    io_cli                                  ; 02AC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 02B1 _ 83. EC, 08
        push    0                                       ; 02B4 _ 6A, 00
        push    968                                     ; 02B6 _ 68, 000003C8
        call    io_out8                                 ; 02BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02C0 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 02C3 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 02C6 _ 89. 45, F0
        jmp     ?_020                                   ; 02C9 _ EB, 5C

?_019:  mov     eax, dword [ebp+10H]                    ; 02CB _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 02CE _ 0F B6. 00
        movzx   eax, al                                 ; 02D1 _ 0F B6. C0
        sub     esp, 8                                  ; 02D4 _ 83. EC, 08
        push    eax                                     ; 02D7 _ 50
        push    969                                     ; 02D8 _ 68, 000003C9
        call    io_out8                                 ; 02DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02E2 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 02E5 _ 8B. 45, 10
        add     eax, 1                                  ; 02E8 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 02EB _ 0F B6. 00
        movzx   eax, al                                 ; 02EE _ 0F B6. C0
        sub     esp, 8                                  ; 02F1 _ 83. EC, 08
        push    eax                                     ; 02F4 _ 50
        push    969                                     ; 02F5 _ 68, 000003C9
        call    io_out8                                 ; 02FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02FF _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0302 _ 8B. 45, 10
        add     eax, 2                                  ; 0305 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0308 _ 0F B6. 00
        movzx   eax, al                                 ; 030B _ 0F B6. C0
        sub     esp, 8                                  ; 030E _ 83. EC, 08
        push    eax                                     ; 0311 _ 50
        push    969                                     ; 0312 _ 68, 000003C9
        call    io_out8                                 ; 0317 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031C _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 031F _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0323 _ 83. 45, F0, 01
?_020:  mov     eax, dword [ebp-10H]                    ; 0327 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 032A _ 3B. 45, 0C
        jl      ?_019                                   ; 032D _ 7C, 9C
        sub     esp, 12                                 ; 032F _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0332 _ FF. 75, F4
        call    io_store_eflags                         ; 0335 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 033A _ 83. C4, 10
        nop                                             ; 033D _ 90
        leave                                           ; 033E _ C9
        ret                                             ; 033F _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 0340 _ 55
        mov     ebp, esp                                ; 0341 _ 89. E5
        sub     esp, 8                                  ; 0343 _ 83. EC, 08
        sub     esp, 4                                  ; 0346 _ 83. EC, 04
        push    pict                                    ; 0349 _ 68, 00000000(d)
        push    16                                      ; 034E _ 6A, 10
        push    0                                       ; 0350 _ 6A, 00
        call    set_pict                                ; 0352 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0357 _ 83. C4, 10
        nop                                             ; 035A _ 90
        leave                                           ; 035B _ C9
        ret                                             ; 035C _ C3
; pict_init End of function

CMain:  ; Function begin
        push    ebp                                     ; 035D _ 55
        mov     ebp, esp                                ; 035E _ 89. E5
        sub     esp, 24                                 ; 0360 _ 83. EC, 18
        call    pict_init                               ; 0363 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], 655360                 ; 0368 _ C7. 45, E8, 000A0000
        sub     esp, 8                                  ; 036F _ 83. EC, 08
        push    8                                       ; 0372 _ 6A, 08
        push    dword [ebp-18H]                         ; 0374 _ FF. 75, E8
        call    fillAll                                 ; 0377 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037C _ 83. C4, 10
        mov     dword [ebp-14H], 320                    ; 037F _ C7. 45, EC, 00000140
        mov     dword [ebp-10H], 8                      ; 0386 _ C7. 45, F0, 00000008
        mov     dword [ebp-0CH], 16                     ; 038D _ C7. 45, F4, 00000010
        sub     esp, 8                                  ; 0394 _ 83. EC, 08
        push    FONT_LIST                               ; 0397 _ 68, 00000000(d)
        push    7                                       ; 039C _ 6A, 07
        push    20                                      ; 039E _ 6A, 14
        push    20                                      ; 03A0 _ 6A, 14
        push    dword [ebp-14H]                         ; 03A2 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 03A5 _ FF. 75, E8
        call    showFont8                               ; 03A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03AD _ 83. C4, 20
        sub     esp, 4                                  ; 03B0 _ 83. EC, 04
        push    ?_022                                   ; 03B3 _ 68, 00000000(d)
        push    dword [ebp-0CH]                         ; 03B8 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 03BB _ FF. 75, F0
        push    20                                      ; 03BE _ 6A, 14
        push    20                                      ; 03C0 _ 6A, 14
        push    dword [ebp-14H]                         ; 03C2 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 03C5 _ FF. 75, E8
        call    Print                                   ; 03C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03CD _ 83. C4, 20
        sub     esp, 12                                 ; 03D0 _ 83. EC, 0C
        push    99                                      ; 03D3 _ 6A, 63
        call    getAddrOffset                           ; 03D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03DA _ 83. C4, 10
        mov     edx, eax                                ; 03DD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 03DF _ 8B. 45, F4
        add     eax, 20                                 ; 03E2 _ 83. C0, 14
        sub     esp, 8                                  ; 03E5 _ 83. EC, 08
        push    edx                                     ; 03E8 _ 52
        push    7                                       ; 03E9 _ 6A, 07
        push    eax                                     ; 03EB _ 50
        push    20                                      ; 03EC _ 6A, 14
        push    dword [ebp-14H]                         ; 03EE _ FF. 75, EC
        push    dword [ebp-18H]                         ; 03F1 _ FF. 75, E8
        call    showFont8                               ; 03F4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03F9 _ 83. C4, 20
?_021:  call    io_hlt                                  ; 03FC _ E8, FFFFFFFC(rel)
        jmp     ?_021                                   ; 0401 _ EB, F9
; CMain End of function

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........


?_022:                                                  ; byte
        db 61H, 62H, 63H, 64H, 65H, 00H                 ; 0000 _ abcde.


