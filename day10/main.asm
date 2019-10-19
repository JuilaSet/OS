; Disassembly of file: main.o
; Sat Oct 19 06:33:53 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386
































set_pict:; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        call    io_load_eflags                          ; 0006 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 000B _ 89. 45, F4
        call    io_cli                                  ; 000E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0013 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 0016 _ FF. 75, 14
        push    968                                     ; 0019 _ 68, 000003C8
        call    io_out8                                 ; 001E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0023 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0026 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0029 _ 89. 45, F0
        jmp     ?_002                                   ; 002C _ EB, 65

?_001:  mov     eax, dword [ebp+10H]                    ; 002E _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0031 _ 0F B6. 00
        shr     al, 2                                   ; 0034 _ C0. E8, 02
        movzx   eax, al                                 ; 0037 _ 0F B6. C0
        sub     esp, 8                                  ; 003A _ 83. EC, 08
        push    eax                                     ; 003D _ 50
        push    969                                     ; 003E _ 68, 000003C9
        call    io_out8                                 ; 0043 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0048 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 004B _ 8B. 45, 10
        add     eax, 1                                  ; 004E _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0051 _ 0F B6. 00
        shr     al, 2                                   ; 0054 _ C0. E8, 02
        movzx   eax, al                                 ; 0057 _ 0F B6. C0
        sub     esp, 8                                  ; 005A _ 83. EC, 08
        push    eax                                     ; 005D _ 50
        push    969                                     ; 005E _ 68, 000003C9
        call    io_out8                                 ; 0063 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0068 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 006B _ 8B. 45, 10
        add     eax, 2                                  ; 006E _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0071 _ 0F B6. 00
        shr     al, 2                                   ; 0074 _ C0. E8, 02
        movzx   eax, al                                 ; 0077 _ 0F B6. C0
        sub     esp, 8                                  ; 007A _ 83. EC, 08
        push    eax                                     ; 007D _ 50
        push    969                                     ; 007E _ 68, 000003C9
        call    io_out8                                 ; 0083 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0088 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 008B _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 008F _ 83. 45, F0, 01
?_002:  mov     eax, dword [ebp-10H]                    ; 0093 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0096 _ 3B. 45, 0C
        jl      ?_001                                   ; 0099 _ 7C, 93
        sub     esp, 12                                 ; 009B _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 009E _ FF. 75, F4
        call    io_store_eflags                         ; 00A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A6 _ 83. C4, 10
        nop                                             ; 00A9 _ 90
        leave                                           ; 00AA _ C9
        ret                                             ; 00AB _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 00AC _ 55
        mov     ebp, esp                                ; 00AD _ 89. E5
        sub     esp, 8                                  ; 00AF _ 83. EC, 08
        push    0                                       ; 00B2 _ 6A, 00
        push    pict                                    ; 00B4 _ 68, 00000000(d)
        push    16                                      ; 00B9 _ 6A, 10
        push    0                                       ; 00BB _ 6A, 00
        call    set_pict                                ; 00BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C2 _ 83. C4, 10
        nop                                             ; 00C5 _ 90
        leave                                           ; 00C6 _ C9
        ret                                             ; 00C7 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 00C8 _ 55
        mov     ebp, esp                                ; 00C9 _ 89. E5
        sub     esp, 20                                 ; 00CB _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 00CE _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 00D1 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 00D4 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 00D7 _ 89. 45, FC
        jmp     ?_006                                   ; 00DA _ EB, 33

?_003:  mov     eax, dword [ebp+14H]                    ; 00DC _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 00DF _ 89. 45, F8
        jmp     ?_005                                   ; 00E2 _ EB, 1F

?_004:  mov     eax, dword [ebp-4H]                     ; 00E4 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 00E7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00EB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 00ED _ 8B. 45, F8
        add     eax, edx                                ; 00F0 _ 01. D0
        mov     edx, eax                                ; 00F2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 00F4 _ 8B. 45, 08
        add     edx, eax                                ; 00F7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 00F9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 00FD _ 88. 02
        add     dword [ebp-8H], 1                       ; 00FF _ 83. 45, F8, 01
?_005:  mov     eax, dword [ebp-8H]                     ; 0103 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0106 _ 3B. 45, 1C
        jle     ?_004                                   ; 0109 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 010B _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 010F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0112 _ 3B. 45, 20
        jle     ?_003                                   ; 0115 _ 7E, C5
        nop                                             ; 0117 _ 90
        leave                                           ; 0118 _ C9
        ret                                             ; 0119 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 011A _ 55
        mov     ebp, esp                                ; 011B _ 89. E5
        sub     esp, 20                                 ; 011D _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0120 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0123 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0126 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 012A _ 83. E8, 61
        shl     eax, 4                                  ; 012D _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 0130 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0135 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0138 _ 8B. 45, FC
        leave                                           ; 013B _ C9
        ret                                             ; 013C _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 013D _ 55
        mov     ebp, esp                                ; 013E _ 89. E5
        sub     esp, 20                                 ; 0140 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0143 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0146 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0149 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 014D _ 83. E8, 30
        shl     eax, 4                                  ; 0150 _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0153 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0158 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 015B _ 8B. 45, FC
        leave                                           ; 015E _ C9
        ret                                             ; 015F _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 0160 _ 55
        mov     ebp, esp                                ; 0161 _ 89. E5
        sub     esp, 20                                 ; 0163 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0166 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0169 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 016C _ C7. 45, FC, 00000000
        jmp     ?_016                                   ; 0173 _ E9, 0000016C

?_007:  mov     edx, dword [ebp-4H]                     ; 0178 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 017B _ 8B. 45, 1C
        add     eax, edx                                ; 017E _ 01. D0
        movzx   eax, byte [eax]                         ; 0180 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0183 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0186 _ 80. 7D, FB, 00
        jns     ?_008                                   ; 018A _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 018C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 018F _ 8B. 45, FC
        add     eax, edx                                ; 0192 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0194 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0198 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 019A _ 8B. 45, 10
        add     eax, edx                                ; 019D _ 01. D0
        mov     edx, eax                                ; 019F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 01A1 _ 8B. 45, 08
        add     edx, eax                                ; 01A4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01A6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01AA _ 88. 02
?_008:  movsx   eax, byte [ebp-5H]                      ; 01AC _ 0F BE. 45, FB
        and     eax, 40H                                ; 01B0 _ 83. E0, 40
        test    eax, eax                                ; 01B3 _ 85. C0
        jz      ?_009                                   ; 01B5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01B7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01BA _ 8B. 45, FC
        add     eax, edx                                ; 01BD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01BF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01C3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01C5 _ 8B. 45, 10
        add     eax, edx                                ; 01C8 _ 01. D0
        lea     edx, [eax+1H]                           ; 01CA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 01CD _ 8B. 45, 08
        add     edx, eax                                ; 01D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01D6 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 01D8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 01DC _ 83. E0, 20
        test    eax, eax                                ; 01DF _ 85. C0
        jz      ?_010                                   ; 01E1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01E3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01E6 _ 8B. 45, FC
        add     eax, edx                                ; 01E9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01EB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01EF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01F1 _ 8B. 45, 10
        add     eax, edx                                ; 01F4 _ 01. D0
        lea     edx, [eax+2H]                           ; 01F6 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 01F9 _ 8B. 45, 08
        add     edx, eax                                ; 01FC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01FE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0202 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0204 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0208 _ 83. E0, 10
        test    eax, eax                                ; 020B _ 85. C0
        jz      ?_011                                   ; 020D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 020F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0212 _ 8B. 45, FC
        add     eax, edx                                ; 0215 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0217 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 021B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 021D _ 8B. 45, 10
        add     eax, edx                                ; 0220 _ 01. D0
        lea     edx, [eax+3H]                           ; 0222 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0225 _ 8B. 45, 08
        add     edx, eax                                ; 0228 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 022A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 022E _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0230 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0234 _ 83. E0, 08
        test    eax, eax                                ; 0237 _ 85. C0
        jz      ?_012                                   ; 0239 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 023B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 023E _ 8B. 45, FC
        add     eax, edx                                ; 0241 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0243 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0247 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0249 _ 8B. 45, 10
        add     eax, edx                                ; 024C _ 01. D0
        lea     edx, [eax+4H]                           ; 024E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0251 _ 8B. 45, 08
        add     edx, eax                                ; 0254 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0256 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 025A _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 025C _ 0F BE. 45, FB
        and     eax, 04H                                ; 0260 _ 83. E0, 04
        test    eax, eax                                ; 0263 _ 85. C0
        jz      ?_013                                   ; 0265 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0267 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 026A _ 8B. 45, FC
        add     eax, edx                                ; 026D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 026F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0273 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0275 _ 8B. 45, 10
        add     eax, edx                                ; 0278 _ 01. D0
        lea     edx, [eax+5H]                           ; 027A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 027D _ 8B. 45, 08
        add     edx, eax                                ; 0280 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0282 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0286 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0288 _ 0F BE. 45, FB
        and     eax, 02H                                ; 028C _ 83. E0, 02
        test    eax, eax                                ; 028F _ 85. C0
        jz      ?_014                                   ; 0291 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0293 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0296 _ 8B. 45, FC
        add     eax, edx                                ; 0299 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 029B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 029F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02A1 _ 8B. 45, 10
        add     eax, edx                                ; 02A4 _ 01. D0
        lea     edx, [eax+6H]                           ; 02A6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 02A9 _ 8B. 45, 08
        add     edx, eax                                ; 02AC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 02AE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02B2 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 02B4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 02B8 _ 83. E0, 01
        test    eax, eax                                ; 02BB _ 85. C0
        jz      ?_015                                   ; 02BD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 02BF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 02C2 _ 8B. 45, FC
        add     eax, edx                                ; 02C5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 02C7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02CB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02CD _ 8B. 45, 10
        add     eax, edx                                ; 02D0 _ 01. D0
        lea     edx, [eax+7H]                           ; 02D2 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 02D5 _ 8B. 45, 08
        add     edx, eax                                ; 02D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 02DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02DE _ 88. 02
?_015:  add     dword [ebp-4H], 1                       ; 02E0 _ 83. 45, FC, 01
?_016:  cmp     dword [ebp-4H], 15                      ; 02E4 _ 83. 7D, FC, 0F
        jle     ?_007                                   ; 02E8 _ 0F 8E, FFFFFE8A
        nop                                             ; 02EE _ 90
        leave                                           ; 02EF _ C9
        ret                                             ; 02F0 _ C3
; showFont8 End of function

Print:  ; Function begin
        push    ebp                                     ; 02F1 _ 55
        mov     ebp, esp                                ; 02F2 _ 89. E5
        push    ebx                                     ; 02F4 _ 53
        sub     esp, 16                                 ; 02F5 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 02F8 _ C7. 45, F8, 00000000
        jmp     ?_022                                   ; 02FF _ E9, 000000A6

?_017:  mov     edx, dword [ebp-8H]                     ; 0304 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 0307 _ 8B. 45, 24
        add     eax, edx                                ; 030A _ 01. D0
        movzx   eax, byte [eax]                         ; 030C _ 0F B6. 00
        mov     byte [ebp-9H], al                       ; 030F _ 88. 45, F7
        cmp     byte [ebp-9H], 57                       ; 0312 _ 80. 7D, F7, 39
        jg      ?_018                                   ; 0316 _ 7F, 3F
        cmp     byte [ebp-9H], 47                       ; 0318 _ 80. 7D, F7, 2F
        jle     ?_018                                   ; 031C _ 7E, 39
        movsx   eax, byte [ebp-9H]                      ; 031E _ 0F BE. 45, F7
        push    eax                                     ; 0322 _ 50
        call    getAddrOffsetNumber                     ; 0323 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0328 _ 83. C4, 04
        mov     ebx, eax                                ; 032B _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 032D _ 8B. 45, 20
        movsx   eax, al                                 ; 0330 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0333 _ 8B. 55, 18
        mov     ecx, edx                                ; 0336 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0338 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 033C _ 8B. 55, 10
        add     edx, ecx                                ; 033F _ 01. CA
        push    ebx                                     ; 0341 _ 53
        push    eax                                     ; 0342 _ 50
        push    dword [ebp+14H]                         ; 0343 _ FF. 75, 14
        push    edx                                     ; 0346 _ 52
        push    dword [ebp+0CH]                         ; 0347 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 034A _ FF. 75, 08
        call    showFont8                               ; 034D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0352 _ 83. C4, 18
        jmp     ?_021                                   ; 0355 _ EB, 4F

?_018:  cmp     byte [ebp-9H], 122                      ; 0357 _ 80. 7D, F7, 7A
        jg      ?_019                                   ; 035B _ 7F, 06
        cmp     byte [ebp-9H], 96                       ; 035D _ 80. 7D, F7, 60
        jg      ?_020                                   ; 0361 _ 7F, 0C
?_019:  cmp     byte [ebp-9H], 90                       ; 0363 _ 80. 7D, F7, 5A
        jg      ?_021                                   ; 0367 _ 7F, 3D
        cmp     byte [ebp-9H], 64                       ; 0369 _ 80. 7D, F7, 40
        jle     ?_021                                   ; 036D _ 7E, 37
?_020:  movsx   eax, byte [ebp-9H]                      ; 036F _ 0F BE. 45, F7
        push    eax                                     ; 0373 _ 50
        call    getAddrOffsetAlpha                      ; 0374 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0379 _ 83. C4, 04
        mov     ebx, eax                                ; 037C _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 037E _ 8B. 45, 20
        movsx   eax, al                                 ; 0381 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0384 _ 8B. 55, 18
        mov     ecx, edx                                ; 0387 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0389 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 038D _ 8B. 55, 10
        add     edx, ecx                                ; 0390 _ 01. CA
        push    ebx                                     ; 0392 _ 53
        push    eax                                     ; 0393 _ 50
        push    dword [ebp+14H]                         ; 0394 _ FF. 75, 14
        push    edx                                     ; 0397 _ 52
        push    dword [ebp+0CH]                         ; 0398 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 039B _ FF. 75, 08
        call    showFont8                               ; 039E _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 03A3 _ 83. C4, 18
?_021:  add     dword [ebp-8H], 1                       ; 03A6 _ 83. 45, F8, 01
?_022:  mov     edx, dword [ebp-8H]                     ; 03AA _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 03AD _ 8B. 45, 24
        add     eax, edx                                ; 03B0 _ 01. D0
        movzx   eax, byte [eax]                         ; 03B2 _ 0F B6. 00
        test    al, al                                  ; 03B5 _ 84. C0
        jne     ?_017                                   ; 03B7 _ 0F 85, FFFFFF47
        nop                                             ; 03BD _ 90
        mov     ebx, dword [ebp-4H]                     ; 03BE _ 8B. 5D, FC
        leave                                           ; 03C1 _ C9
        ret                                             ; 03C2 _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 03C3 _ 55
        mov     ebp, esp                                ; 03C4 _ 89. E5
        sub     esp, 4                                  ; 03C6 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 03C9 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 03CC _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 03CF _ 80. 7D, FC, 2A
        jnz     ?_023                                   ; 03D3 _ 75, 0A
        mov     eax, 0                                  ; 03D5 _ B8, 00000000
        jmp     ?_038                                   ; 03DA _ E9, 000000D2

?_023:  cmp     byte [ebp-4H], 114                      ; 03DF _ 80. 7D, FC, 72
        jnz     ?_024                                   ; 03E3 _ 75, 0A
        mov     eax, 1                                  ; 03E5 _ B8, 00000001
        jmp     ?_038                                   ; 03EA _ E9, 000000C2

?_024:  cmp     byte [ebp-4H], 103                      ; 03EF _ 80. 7D, FC, 67
        jnz     ?_025                                   ; 03F3 _ 75, 0A
        mov     eax, 2                                  ; 03F5 _ B8, 00000002
        jmp     ?_038                                   ; 03FA _ E9, 000000B2

?_025:  cmp     byte [ebp-4H], 121                      ; 03FF _ 80. 7D, FC, 79
        jnz     ?_026                                   ; 0403 _ 75, 0A
        mov     eax, 3                                  ; 0405 _ B8, 00000003
        jmp     ?_038                                   ; 040A _ E9, 000000A2

?_026:  cmp     byte [ebp-4H], 98                       ; 040F _ 80. 7D, FC, 62
        jnz     ?_027                                   ; 0413 _ 75, 0A
        mov     eax, 4                                  ; 0415 _ B8, 00000004
        jmp     ?_038                                   ; 041A _ E9, 00000092

?_027:  cmp     byte [ebp-4H], 112                      ; 041F _ 80. 7D, FC, 70
        jnz     ?_028                                   ; 0423 _ 75, 0A
        mov     eax, 5                                  ; 0425 _ B8, 00000005
        jmp     ?_038                                   ; 042A _ E9, 00000082

?_028:  cmp     byte [ebp-4H], 108                      ; 042F _ 80. 7D, FC, 6C
        jnz     ?_029                                   ; 0433 _ 75, 07
        mov     eax, 6                                  ; 0435 _ B8, 00000006
        jmp     ?_038                                   ; 043A _ EB, 75

?_029:  cmp     byte [ebp-4H], 119                      ; 043C _ 80. 7D, FC, 77
        jnz     ?_030                                   ; 0440 _ 75, 07
        mov     eax, 7                                  ; 0442 _ B8, 00000007
        jmp     ?_038                                   ; 0447 _ EB, 68

?_030:  cmp     byte [ebp-4H], 45                       ; 0449 _ 80. 7D, FC, 2D
        jnz     ?_031                                   ; 044D _ 75, 07
        mov     eax, 8                                  ; 044F _ B8, 00000008
        jmp     ?_038                                   ; 0454 _ EB, 5B

?_031:  cmp     byte [ebp-4H], 82                       ; 0456 _ 80. 7D, FC, 52
        jnz     ?_032                                   ; 045A _ 75, 07
        mov     eax, 9                                  ; 045C _ B8, 00000009
        jmp     ?_038                                   ; 0461 _ EB, 4E

?_032:  cmp     byte [ebp-4H], 71                       ; 0463 _ 80. 7D, FC, 47
        jnz     ?_033                                   ; 0467 _ 75, 07
        mov     eax, 10                                 ; 0469 _ B8, 0000000A
        jmp     ?_038                                   ; 046E _ EB, 41

?_033:  cmp     byte [ebp-4H], 89                       ; 0470 _ 80. 7D, FC, 59
        jnz     ?_034                                   ; 0474 _ 75, 07
        mov     eax, 11                                 ; 0476 _ B8, 0000000B
        jmp     ?_038                                   ; 047B _ EB, 34

?_034:  cmp     byte [ebp-4H], 66                       ; 047D _ 80. 7D, FC, 42
        jnz     ?_035                                   ; 0481 _ 75, 07
        mov     eax, 12                                 ; 0483 _ B8, 0000000C
        jmp     ?_038                                   ; 0488 _ EB, 27

?_035:  cmp     byte [ebp-4H], 80                       ; 048A _ 80. 7D, FC, 50
        jnz     ?_036                                   ; 048E _ 75, 07
        mov     eax, 13                                 ; 0490 _ B8, 0000000D
        jmp     ?_038                                   ; 0495 _ EB, 1A

?_036:  cmp     byte [ebp-4H], 115                      ; 0497 _ 80. 7D, FC, 73
        jnz     ?_037                                   ; 049B _ 75, 07
        mov     eax, 14                                 ; 049D _ B8, 0000000E
        jmp     ?_038                                   ; 04A2 _ EB, 0D

?_037:  cmp     byte [ebp-4H], 61                       ; 04A4 _ 80. 7D, FC, 3D
        jnz     ?_038                                   ; 04A8 _ 75, 07
        mov     eax, 15                                 ; 04AA _ B8, 0000000F
        jmp     ?_038                                   ; 04AF _ EB, 00

?_038:  leave                                           ; 04B1 _ C9
        ret                                             ; 04B2 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 04B3 _ 55
        mov     ebp, esp                                ; 04B4 _ 89. E5
        push    ebx                                     ; 04B6 _ 53
        sub     esp, 16                                 ; 04B7 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 04BA _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 04C1 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 04C8 _ C7. 45, F8, 00000000
?_039:  mov     edx, dword [ebp-8H]                     ; 04CF _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 04D2 _ 8B. 45, 18
        add     eax, edx                                ; 04D5 _ 01. D0
        movzx   eax, byte [eax]                         ; 04D7 _ 0F B6. 00
        test    al, al                                  ; 04DA _ 84. C0
        jnz     ?_040                                   ; 04DC _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 04DE _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 04E1 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 04E4 _ 8B. 45, 18
        add     eax, edx                                ; 04E7 _ 01. D0
        movzx   eax, byte [eax]                         ; 04E9 _ 0F B6. 00
        test    al, al                                  ; 04EC _ 84. C0
        jz      ?_043                                   ; 04EE _ 74, 5F
        add     dword [ebp-10H], 1                      ; 04F0 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 04F4 _ C7. 45, F4, 00000000
        jmp     ?_042                                   ; 04FB _ EB, 4C

?_040:  mov     edx, dword [ebp-8H]                     ; 04FD _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0500 _ 8B. 45, 18
        add     eax, edx                                ; 0503 _ 01. D0
        movzx   eax, byte [eax]                         ; 0505 _ 0F B6. 00
        cmp     al, 46                                  ; 0508 _ 3C, 2E
        jz      ?_041                                   ; 050A _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 050C _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 050F _ 8B. 45, F0
        add     eax, edx                                ; 0512 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0514 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0518 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 051A _ 8B. 45, 10
        add     edx, eax                                ; 051D _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 051F _ 8B. 45, F4
        add     eax, edx                                ; 0522 _ 01. D0
        mov     edx, eax                                ; 0524 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0526 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0529 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 052C _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 052F _ 8B. 45, 18
        add     eax, edx                                ; 0532 _ 01. D0
        movzx   eax, byte [eax]                         ; 0534 _ 0F B6. 00
        movsx   eax, al                                 ; 0537 _ 0F BE. C0
        push    eax                                     ; 053A _ 50
        call    charToPictColor                         ; 053B _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0540 _ 83. C4, 04
        mov     byte [ebx], al                          ; 0543 _ 88. 03
?_041:  add     dword [ebp-0CH], 1                      ; 0545 _ 83. 45, F4, 01
?_042:  add     dword [ebp-8H], 1                       ; 0549 _ 83. 45, F8, 01
        jmp     ?_039                                   ; 054D _ EB, 80

?_043:  nop                                             ; 054F _ 90
        mov     ebx, dword [ebp-4H]                     ; 0550 _ 8B. 5D, FC
        leave                                           ; 0553 _ C9
        ret                                             ; 0554 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0555 _ 55
        mov     ebp, esp                                ; 0556 _ 89. E5
        sub     esp, 16                                 ; 0558 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 055B _ C7. 45, FC, 00000000
        jmp     ?_045                                   ; 0562 _ EB, 11

?_044:  mov     edx, dword [ebp-4H]                     ; 0564 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0567 _ 8B. 45, 08
        add     eax, edx                                ; 056A _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 056C _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 056F _ 88. 10
        add     dword [ebp-4H], 1                       ; 0571 _ 83. 45, FC, 01
?_045:  cmp     dword [ebp-4H], 65534                   ; 0575 _ 81. 7D, FC, 0000FFFE
        jle     ?_044                                   ; 057C _ 7E, E6
        nop                                             ; 057E _ 90
        leave                                           ; 057F _ C9
        ret                                             ; 0580 _ C3
; fillAll End of function

CMain:  ; Function begin
        push    ebp                                     ; 0581 _ 55
        mov     ebp, esp                                ; 0582 _ 89. E5
        sub     esp, 24                                 ; 0584 _ 83. EC, 18
        call    pict_init                               ; 0587 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 058C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0591 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0594 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 059B _ 98
        mov     dword [ebp-10H], eax                    ; 059C _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 059F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 05A6 _ 98
        mov     dword [ebp-0CH], eax                    ; 05A7 _ 89. 45, F4
        sub     esp, 8                                  ; 05AA _ 83. EC, 08
        push    15                                      ; 05AD _ 6A, 0F
        push    dword [ebp-14H]                         ; 05AF _ FF. 75, EC
        call    fillAll                                 ; 05B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05B7 _ 83. C4, 10
        sub     esp, 12                                 ; 05BA _ 83. EC, 0C
        push    cursor                                  ; 05BD _ 68, 00000000(d)
        push    20                                      ; 05C2 _ 6A, 14
        push    20                                      ; 05C4 _ 6A, 14
        push    dword [ebp-10H]                         ; 05C6 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 05C9 _ FF. 75, EC
        call    PrintRGB                                ; 05CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05D1 _ 83. C4, 20
?_046:  call    io_hlt                                  ; 05D4 _ E8, FFFFFFFC(rel)
        jmp     ?_046                                   ; 05D9 _ EB, F9
; CMain End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 05DB _ 55
        mov     ebp, esp                                ; 05DC _ 89. E5
        sub     esp, 24                                 ; 05DE _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 05E1 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 05E6 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 05E9 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 05F0 _ 98
        mov     dword [ebp-10H], eax                    ; 05F1 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 05F4 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 05FB _ 98
        mov     dword [ebp-0CH], eax                    ; 05FC _ 89. 45, F4
        push    imgHook                                 ; 05FF _ 68, 00000000(d)
        push    20                                      ; 0604 _ 6A, 14
        push    20                                      ; 0606 _ 6A, 14
        push    dword [ebp-10H]                         ; 0608 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 060B _ FF. 75, EC
        call    PrintRGB                                ; 060E _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0613 _ 83. C4, 14
?_047:  call    io_hlt                                  ; 0616 _ E8, FFFFFFFC(rel)
        jmp     ?_047                                   ; 061B _ EB, F9
; intHandlerFromC End of function




cursor:                                                 ; byte
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0000 _ *.......
        db 00H, 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0008 _ .**.....
        db 2EH, 00H, 2AH, 77H, 2AH, 2EH, 2EH, 2EH       ; 0010 _ ..*w*...
        db 2EH, 2EH, 00H, 2AH, 77H, 77H, 2AH, 2EH       ; 0018 _ ...*ww*.
        db 2EH, 2EH, 2EH, 00H, 2AH, 77H, 77H, 77H       ; 0020 _ ....*www
        db 2AH, 2EH, 2EH, 2EH, 00H, 2AH, 77H, 2AH       ; 0028 _ *....*w*
        db 2AH, 2AH, 2AH, 2EH, 2EH, 00H, 2AH, 2AH       ; 0030 _ ***...**
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 00H, 2AH       ; 0038 _ **.....*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 00H       ; 0040 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

imgHook:                                                ; byte
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0060 _ ........
        db 00H, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0068 _ ........
        db 2EH, 00H, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0070 _ ........
        db 73H, 2EH, 00H, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0078 _ s.......
        db 73H, 2EH, 2EH, 00H, 2EH, 2EH, 2EH, 2EH       ; 0080 _ s.......
        db 73H, 2EH, 2EH, 2EH, 00H, 2EH, 73H, 2EH       ; 0088 _ s.....s.
        db 73H, 2EH, 2EH, 2EH, 2EH, 00H, 2EH, 2EH       ; 0090 _ s.......
        db 73H, 2EH, 2EH, 2EH, 2EH, 2EH, 00H, 2EH       ; 0098 _ s.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 00H       ; 00A0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 00C0 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 00C8 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 00D0 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 00D8 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00E0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00E8 _ ........

bootInfo: dq 00C80140000A0000H                          ; 00F0 _ 00C80140000A0000 

width:  dd 00000008H                                    ; 00F8 _ 8 

height: dd 00000010H                                    ; 00FC _ 16 





