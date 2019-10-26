; Disassembly of file: main.o
; Sat Oct 26 07:43:06 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386
































































strlen: ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 16                                 ; 0003 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0006 _ C7. 45, FC, 00000000
        nop                                             ; 000D _ 90
?_001:  mov     eax, dword [ebp-4H]                     ; 000E _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 0011 _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 0014 _ 89. 55, FC
        mov     edx, eax                                ; 0017 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0019 _ 8B. 45, 08
        add     eax, edx                                ; 001C _ 01. D0
        movzx   eax, byte [eax]                         ; 001E _ 0F B6. 00
        test    al, al                                  ; 0021 _ 84. C0
        jnz     ?_001                                   ; 0023 _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 0025 _ 8B. 45, FC
        sub     eax, 1                                  ; 0028 _ 83. E8, 01
        leave                                           ; 002B _ C9
        ret                                             ; 002C _ C3
; strlen End of function

set_pict:; Function begin
        push    ebp                                     ; 002D _ 55
        mov     ebp, esp                                ; 002E _ 89. E5
        sub     esp, 24                                 ; 0030 _ 83. EC, 18
        call    io_load_eflags                          ; 0033 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0038 _ 89. 45, F4
        call    io_cli                                  ; 003B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0040 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 0043 _ FF. 75, 14
        push    968                                     ; 0046 _ 68, 000003C8
        call    io_out8                                 ; 004B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0050 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0053 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0056 _ 89. 45, F0
        jmp     ?_003                                   ; 0059 _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 005B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 005E _ 0F B6. 00
        shr     al, 2                                   ; 0061 _ C0. E8, 02
        movzx   eax, al                                 ; 0064 _ 0F B6. C0
        sub     esp, 8                                  ; 0067 _ 83. EC, 08
        push    eax                                     ; 006A _ 50
        push    969                                     ; 006B _ 68, 000003C9
        call    io_out8                                 ; 0070 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0075 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0078 _ 8B. 45, 10
        add     eax, 1                                  ; 007B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 007E _ 0F B6. 00
        shr     al, 2                                   ; 0081 _ C0. E8, 02
        movzx   eax, al                                 ; 0084 _ 0F B6. C0
        sub     esp, 8                                  ; 0087 _ 83. EC, 08
        push    eax                                     ; 008A _ 50
        push    969                                     ; 008B _ 68, 000003C9
        call    io_out8                                 ; 0090 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0095 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0098 _ 8B. 45, 10
        add     eax, 2                                  ; 009B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 009E _ 0F B6. 00
        shr     al, 2                                   ; 00A1 _ C0. E8, 02
        movzx   eax, al                                 ; 00A4 _ 0F B6. C0
        sub     esp, 8                                  ; 00A7 _ 83. EC, 08
        push    eax                                     ; 00AA _ 50
        push    969                                     ; 00AB _ 68, 000003C9
        call    io_out8                                 ; 00B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B5 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 00B8 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 00BC _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 00C0 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 00C3 _ 3B. 45, 0C
        jl      ?_002                                   ; 00C6 _ 7C, 93
        sub     esp, 12                                 ; 00C8 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 00CB _ FF. 75, F4
        call    io_store_eflags                         ; 00CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D3 _ 83. C4, 10
        nop                                             ; 00D6 _ 90
        leave                                           ; 00D7 _ C9
        ret                                             ; 00D8 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 00D9 _ 55
        mov     ebp, esp                                ; 00DA _ 89. E5
        sub     esp, 8                                  ; 00DC _ 83. EC, 08
        push    0                                       ; 00DF _ 6A, 00
        push    pict                                    ; 00E1 _ 68, 00000000(d)
        push    16                                      ; 00E6 _ 6A, 10
        push    0                                       ; 00E8 _ 6A, 00
        call    set_pict                                ; 00EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EF _ 83. C4, 10
        nop                                             ; 00F2 _ 90
        leave                                           ; 00F3 _ C9
        ret                                             ; 00F4 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 00F5 _ 55
        mov     ebp, esp                                ; 00F6 _ 89. E5
        sub     esp, 20                                 ; 00F8 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 00FB _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 00FE _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0101 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0104 _ 89. 45, FC
        jmp     ?_007                                   ; 0107 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 0109 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 010C _ 89. 45, F8
        jmp     ?_006                                   ; 010F _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 0111 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0114 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0118 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 011A _ 8B. 45, F8
        add     eax, edx                                ; 011D _ 01. D0
        mov     edx, eax                                ; 011F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0121 _ 8B. 45, 08
        add     edx, eax                                ; 0124 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0126 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 012A _ 88. 02
        add     dword [ebp-8H], 1                       ; 012C _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 0130 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0133 _ 3B. 45, 1C
        jle     ?_005                                   ; 0136 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0138 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 013C _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 013F _ 3B. 45, 20
        jle     ?_004                                   ; 0142 _ 7E, C5
        nop                                             ; 0144 _ 90
        leave                                           ; 0145 _ C9
        ret                                             ; 0146 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 0147 _ 55
        mov     ebp, esp                                ; 0148 _ 89. E5
        sub     esp, 20                                 ; 014A _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 014D _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0150 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0153 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 0157 _ 83. E8, 61
        shl     eax, 4                                  ; 015A _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 015D _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0162 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0165 _ 8B. 45, FC
        leave                                           ; 0168 _ C9
        ret                                             ; 0169 _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 016A _ 55
        mov     ebp, esp                                ; 016B _ 89. E5
        sub     esp, 20                                 ; 016D _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0170 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0173 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0176 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 017A _ 83. E8, 30
        shl     eax, 4                                  ; 017D _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0180 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0185 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0188 _ 8B. 45, FC
        leave                                           ; 018B _ C9
        ret                                             ; 018C _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 018D _ 55
        mov     ebp, esp                                ; 018E _ 89. E5
        sub     esp, 20                                 ; 0190 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0193 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0196 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0199 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 01A0 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 01A5 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 01A8 _ 8B. 45, 1C
        add     eax, edx                                ; 01AB _ 01. D0
        movzx   eax, byte [eax]                         ; 01AD _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 01B0 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 01B3 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 01B7 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 01B9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01BC _ 8B. 45, FC
        add     eax, edx                                ; 01BF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01C1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01C5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01C7 _ 8B. 45, 10
        add     eax, edx                                ; 01CA _ 01. D0
        mov     edx, eax                                ; 01CC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 01CE _ 8B. 45, 08
        add     edx, eax                                ; 01D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01D7 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 01D9 _ 0F BE. 45, FB
        and     eax, 40H                                ; 01DD _ 83. E0, 40
        test    eax, eax                                ; 01E0 _ 85. C0
        jz      ?_010                                   ; 01E2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01E4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01E7 _ 8B. 45, FC
        add     eax, edx                                ; 01EA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01EC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01F0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01F2 _ 8B. 45, 10
        add     eax, edx                                ; 01F5 _ 01. D0
        lea     edx, [eax+1H]                           ; 01F7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 01FA _ 8B. 45, 08
        add     edx, eax                                ; 01FD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01FF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0203 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0205 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0209 _ 83. E0, 20
        test    eax, eax                                ; 020C _ 85. C0
        jz      ?_011                                   ; 020E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0210 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0213 _ 8B. 45, FC
        add     eax, edx                                ; 0216 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0218 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 021C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 021E _ 8B. 45, 10
        add     eax, edx                                ; 0221 _ 01. D0
        lea     edx, [eax+2H]                           ; 0223 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0226 _ 8B. 45, 08
        add     edx, eax                                ; 0229 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 022B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 022F _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0231 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0235 _ 83. E0, 10
        test    eax, eax                                ; 0238 _ 85. C0
        jz      ?_012                                   ; 023A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 023C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 023F _ 8B. 45, FC
        add     eax, edx                                ; 0242 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0244 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0248 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 024A _ 8B. 45, 10
        add     eax, edx                                ; 024D _ 01. D0
        lea     edx, [eax+3H]                           ; 024F _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0252 _ 8B. 45, 08
        add     edx, eax                                ; 0255 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0257 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 025B _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 025D _ 0F BE. 45, FB
        and     eax, 08H                                ; 0261 _ 83. E0, 08
        test    eax, eax                                ; 0264 _ 85. C0
        jz      ?_013                                   ; 0266 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0268 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 026B _ 8B. 45, FC
        add     eax, edx                                ; 026E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0270 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0274 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0276 _ 8B. 45, 10
        add     eax, edx                                ; 0279 _ 01. D0
        lea     edx, [eax+4H]                           ; 027B _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 027E _ 8B. 45, 08
        add     edx, eax                                ; 0281 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0283 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0287 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0289 _ 0F BE. 45, FB
        and     eax, 04H                                ; 028D _ 83. E0, 04
        test    eax, eax                                ; 0290 _ 85. C0
        jz      ?_014                                   ; 0292 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0294 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0297 _ 8B. 45, FC
        add     eax, edx                                ; 029A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 029C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02A0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02A2 _ 8B. 45, 10
        add     eax, edx                                ; 02A5 _ 01. D0
        lea     edx, [eax+5H]                           ; 02A7 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 02AA _ 8B. 45, 08
        add     edx, eax                                ; 02AD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 02AF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02B3 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 02B5 _ 0F BE. 45, FB
        and     eax, 02H                                ; 02B9 _ 83. E0, 02
        test    eax, eax                                ; 02BC _ 85. C0
        jz      ?_015                                   ; 02BE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 02C0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 02C3 _ 8B. 45, FC
        add     eax, edx                                ; 02C6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 02C8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02CC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02CE _ 8B. 45, 10
        add     eax, edx                                ; 02D1 _ 01. D0
        lea     edx, [eax+6H]                           ; 02D3 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 02D6 _ 8B. 45, 08
        add     edx, eax                                ; 02D9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 02DB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02DF _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 02E1 _ 0F BE. 45, FB
        and     eax, 01H                                ; 02E5 _ 83. E0, 01
        test    eax, eax                                ; 02E8 _ 85. C0
        jz      ?_016                                   ; 02EA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 02EC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 02EF _ 8B. 45, FC
        add     eax, edx                                ; 02F2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 02F4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02F8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02FA _ 8B. 45, 10
        add     eax, edx                                ; 02FD _ 01. D0
        lea     edx, [eax+7H]                           ; 02FF _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0302 _ 8B. 45, 08
        add     edx, eax                                ; 0305 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0307 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 030B _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 030D _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 0311 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0315 _ 0F 8E, FFFFFE8A
        nop                                             ; 031B _ 90
        leave                                           ; 031C _ C9
        ret                                             ; 031D _ C3
; showFont8 End of function

Print:  ; Function begin
        push    ebp                                     ; 031E _ 55
        mov     ebp, esp                                ; 031F _ 89. E5
        push    ebx                                     ; 0321 _ 53
        sub     esp, 16                                 ; 0322 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0325 _ C7. 45, F8, 00000000
        jmp     ?_023                                   ; 032C _ E9, 0000011C

?_018:  mov     edx, dword [ebp-8H]                     ; 0331 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 0334 _ 8B. 45, 24
        add     eax, edx                                ; 0337 _ 01. D0
        movzx   eax, byte [eax]                         ; 0339 _ 0F B6. 00
        mov     byte [ebp-9H], al                       ; 033C _ 88. 45, F7
        cmp     byte [ebp-9H], 57                       ; 033F _ 80. 7D, F7, 39
        jg      ?_019                                   ; 0343 _ 7F, 42
        cmp     byte [ebp-9H], 47                       ; 0345 _ 80. 7D, F7, 2F
        jle     ?_019                                   ; 0349 _ 7E, 3C
        movsx   eax, byte [ebp-9H]                      ; 034B _ 0F BE. 45, F7
        push    eax                                     ; 034F _ 50
        call    getAddrOffsetNumber                     ; 0350 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0355 _ 83. C4, 04
        mov     ebx, eax                                ; 0358 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 035A _ 8B. 45, 20
        movsx   eax, al                                 ; 035D _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0360 _ 8B. 55, 18
        mov     ecx, edx                                ; 0363 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0365 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 0369 _ 8B. 55, 10
        add     edx, ecx                                ; 036C _ 01. CA
        push    ebx                                     ; 036E _ 53
        push    eax                                     ; 036F _ 50
        push    dword [ebp+14H]                         ; 0370 _ FF. 75, 14
        push    edx                                     ; 0373 _ 52
        push    dword [ebp+0CH]                         ; 0374 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0377 _ FF. 75, 08
        call    showFont8                               ; 037A _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 037F _ 83. C4, 18
        jmp     ?_022                                   ; 0382 _ E9, 000000C2

?_019:  cmp     byte [ebp-9H], 122                      ; 0387 _ 80. 7D, F7, 7A
        jg      ?_020                                   ; 038B _ 7F, 3F
        cmp     byte [ebp-9H], 96                       ; 038D _ 80. 7D, F7, 60
        jle     ?_020                                   ; 0391 _ 7E, 39
        movsx   eax, byte [ebp-9H]                      ; 0393 _ 0F BE. 45, F7
        push    eax                                     ; 0397 _ 50
        call    getAddrOffsetAlpha                      ; 0398 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 039D _ 83. C4, 04
        mov     ebx, eax                                ; 03A0 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 03A2 _ 8B. 45, 20
        movsx   eax, al                                 ; 03A5 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 03A8 _ 8B. 55, 18
        mov     ecx, edx                                ; 03AB _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 03AD _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 03B1 _ 8B. 55, 10
        add     edx, ecx                                ; 03B4 _ 01. CA
        push    ebx                                     ; 03B6 _ 53
        push    eax                                     ; 03B7 _ 50
        push    dword [ebp+14H]                         ; 03B8 _ FF. 75, 14
        push    edx                                     ; 03BB _ 52
        push    dword [ebp+0CH]                         ; 03BC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03BF _ FF. 75, 08
        call    showFont8                               ; 03C2 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 03C7 _ 83. C4, 18
        jmp     ?_022                                   ; 03CA _ EB, 7D

?_020:  cmp     byte [ebp-9H], 90                       ; 03CC _ 80. 7D, F7, 5A
        jg      ?_021                                   ; 03D0 _ 7F, 45
        cmp     byte [ebp-9H], 64                       ; 03D2 _ 80. 7D, F7, 40
        jle     ?_021                                   ; 03D6 _ 7E, 3F
        movzx   eax, byte [ebp-9H]                      ; 03D8 _ 0F B6. 45, F7
        add     eax, 32                                 ; 03DC _ 83. C0, 20
        movsx   eax, al                                 ; 03DF _ 0F BE. C0
        push    eax                                     ; 03E2 _ 50
        call    getAddrOffsetAlpha                      ; 03E3 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 03E8 _ 83. C4, 04
        mov     ebx, eax                                ; 03EB _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 03ED _ 8B. 45, 20
        movsx   eax, al                                 ; 03F0 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 03F3 _ 8B. 55, 18
        mov     ecx, edx                                ; 03F6 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 03F8 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 03FC _ 8B. 55, 10
        add     edx, ecx                                ; 03FF _ 01. CA
        push    ebx                                     ; 0401 _ 53
        push    eax                                     ; 0402 _ 50
        push    dword [ebp+14H]                         ; 0403 _ FF. 75, 14
        push    edx                                     ; 0406 _ 52
        push    dword [ebp+0CH]                         ; 0407 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 040A _ FF. 75, 08
        call    showFont8                               ; 040D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0412 _ 83. C4, 18
        jmp     ?_022                                   ; 0415 _ EB, 32

?_021:  cmp     byte [ebp-9H], 32                       ; 0417 _ 80. 7D, F7, 20
        jnz     ?_022                                   ; 041B _ 75, 2C
        mov     eax, dword [ebp+20H]                    ; 041D _ 8B. 45, 20
        movsx   eax, al                                 ; 0420 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0423 _ 8B. 55, 18
        mov     ecx, edx                                ; 0426 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0428 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 042C _ 8B. 55, 10
        add     edx, ecx                                ; 042F _ 01. CA
        push    vsFont_EMPTY                            ; 0431 _ 68, 00000000(d)
        push    eax                                     ; 0436 _ 50
        push    dword [ebp+14H]                         ; 0437 _ FF. 75, 14
        push    edx                                     ; 043A _ 52
        push    dword [ebp+0CH]                         ; 043B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 043E _ FF. 75, 08
        call    showFont8                               ; 0441 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0446 _ 83. C4, 18
?_022:  add     dword [ebp-8H], 1                       ; 0449 _ 83. 45, F8, 01
?_023:  mov     edx, dword [ebp-8H]                     ; 044D _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 0450 _ 8B. 45, 24
        add     eax, edx                                ; 0453 _ 01. D0
        movzx   eax, byte [eax]                         ; 0455 _ 0F B6. 00
        test    al, al                                  ; 0458 _ 84. C0
        jne     ?_018                                   ; 045A _ 0F 85, FFFFFED1
        nop                                             ; 0460 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0461 _ 8B. 5D, FC
        leave                                           ; 0464 _ C9
        ret                                             ; 0465 _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 0466 _ 55
        mov     ebp, esp                                ; 0467 _ 89. E5
        sub     esp, 4                                  ; 0469 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 046C _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 046F _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0472 _ 80. 7D, FC, 2A
        jnz     ?_024                                   ; 0476 _ 75, 0A
        mov     eax, 0                                  ; 0478 _ B8, 00000000
        jmp     ?_039                                   ; 047D _ E9, 000000D2

?_024:  cmp     byte [ebp-4H], 114                      ; 0482 _ 80. 7D, FC, 72
        jnz     ?_025                                   ; 0486 _ 75, 0A
        mov     eax, 1                                  ; 0488 _ B8, 00000001
        jmp     ?_039                                   ; 048D _ E9, 000000C2

?_025:  cmp     byte [ebp-4H], 103                      ; 0492 _ 80. 7D, FC, 67
        jnz     ?_026                                   ; 0496 _ 75, 0A
        mov     eax, 2                                  ; 0498 _ B8, 00000002
        jmp     ?_039                                   ; 049D _ E9, 000000B2

?_026:  cmp     byte [ebp-4H], 121                      ; 04A2 _ 80. 7D, FC, 79
        jnz     ?_027                                   ; 04A6 _ 75, 0A
        mov     eax, 3                                  ; 04A8 _ B8, 00000003
        jmp     ?_039                                   ; 04AD _ E9, 000000A2

?_027:  cmp     byte [ebp-4H], 98                       ; 04B2 _ 80. 7D, FC, 62
        jnz     ?_028                                   ; 04B6 _ 75, 0A
        mov     eax, 4                                  ; 04B8 _ B8, 00000004
        jmp     ?_039                                   ; 04BD _ E9, 00000092

?_028:  cmp     byte [ebp-4H], 112                      ; 04C2 _ 80. 7D, FC, 70
        jnz     ?_029                                   ; 04C6 _ 75, 0A
        mov     eax, 5                                  ; 04C8 _ B8, 00000005
        jmp     ?_039                                   ; 04CD _ E9, 00000082

?_029:  cmp     byte [ebp-4H], 108                      ; 04D2 _ 80. 7D, FC, 6C
        jnz     ?_030                                   ; 04D6 _ 75, 07
        mov     eax, 6                                  ; 04D8 _ B8, 00000006
        jmp     ?_039                                   ; 04DD _ EB, 75

?_030:  cmp     byte [ebp-4H], 119                      ; 04DF _ 80. 7D, FC, 77
        jnz     ?_031                                   ; 04E3 _ 75, 07
        mov     eax, 7                                  ; 04E5 _ B8, 00000007
        jmp     ?_039                                   ; 04EA _ EB, 68

?_031:  cmp     byte [ebp-4H], 45                       ; 04EC _ 80. 7D, FC, 2D
        jnz     ?_032                                   ; 04F0 _ 75, 07
        mov     eax, 8                                  ; 04F2 _ B8, 00000008
        jmp     ?_039                                   ; 04F7 _ EB, 5B

?_032:  cmp     byte [ebp-4H], 82                       ; 04F9 _ 80. 7D, FC, 52
        jnz     ?_033                                   ; 04FD _ 75, 07
        mov     eax, 9                                  ; 04FF _ B8, 00000009
        jmp     ?_039                                   ; 0504 _ EB, 4E

?_033:  cmp     byte [ebp-4H], 71                       ; 0506 _ 80. 7D, FC, 47
        jnz     ?_034                                   ; 050A _ 75, 07
        mov     eax, 10                                 ; 050C _ B8, 0000000A
        jmp     ?_039                                   ; 0511 _ EB, 41

?_034:  cmp     byte [ebp-4H], 89                       ; 0513 _ 80. 7D, FC, 59
        jnz     ?_035                                   ; 0517 _ 75, 07
        mov     eax, 11                                 ; 0519 _ B8, 0000000B
        jmp     ?_039                                   ; 051E _ EB, 34

?_035:  cmp     byte [ebp-4H], 66                       ; 0520 _ 80. 7D, FC, 42
        jnz     ?_036                                   ; 0524 _ 75, 07
        mov     eax, 12                                 ; 0526 _ B8, 0000000C
        jmp     ?_039                                   ; 052B _ EB, 27

?_036:  cmp     byte [ebp-4H], 80                       ; 052D _ 80. 7D, FC, 50
        jnz     ?_037                                   ; 0531 _ 75, 07
        mov     eax, 13                                 ; 0533 _ B8, 0000000D
        jmp     ?_039                                   ; 0538 _ EB, 1A

?_037:  cmp     byte [ebp-4H], 115                      ; 053A _ 80. 7D, FC, 73
        jnz     ?_038                                   ; 053E _ 75, 07
        mov     eax, 14                                 ; 0540 _ B8, 0000000E
        jmp     ?_039                                   ; 0545 _ EB, 0D

?_038:  cmp     byte [ebp-4H], 61                       ; 0547 _ 80. 7D, FC, 3D
        jnz     ?_039                                   ; 054B _ 75, 07
        mov     eax, 15                                 ; 054D _ B8, 0000000F
        jmp     ?_039                                   ; 0552 _ EB, 00

?_039:  leave                                           ; 0554 _ C9
        ret                                             ; 0555 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 0556 _ 55
        mov     ebp, esp                                ; 0557 _ 89. E5
        push    ebx                                     ; 0559 _ 53
        sub     esp, 16                                 ; 055A _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 055D _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0564 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 056B _ C7. 45, F8, 00000000
?_040:  mov     edx, dword [ebp-8H]                     ; 0572 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0575 _ 8B. 45, 18
        add     eax, edx                                ; 0578 _ 01. D0
        movzx   eax, byte [eax]                         ; 057A _ 0F B6. 00
        test    al, al                                  ; 057D _ 84. C0
        jnz     ?_041                                   ; 057F _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0581 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0584 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0587 _ 8B. 45, 18
        add     eax, edx                                ; 058A _ 01. D0
        movzx   eax, byte [eax]                         ; 058C _ 0F B6. 00
        test    al, al                                  ; 058F _ 84. C0
        jz      ?_044                                   ; 0591 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0593 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0597 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 059E _ EB, 4C

?_041:  mov     edx, dword [ebp-8H]                     ; 05A0 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 05A3 _ 8B. 45, 18
        add     eax, edx                                ; 05A6 _ 01. D0
        movzx   eax, byte [eax]                         ; 05A8 _ 0F B6. 00
        cmp     al, 46                                  ; 05AB _ 3C, 2E
        jz      ?_042                                   ; 05AD _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 05AF _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 05B2 _ 8B. 45, F0
        add     eax, edx                                ; 05B5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05B7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05BB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05BD _ 8B. 45, 10
        add     edx, eax                                ; 05C0 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 05C2 _ 8B. 45, F4
        add     eax, edx                                ; 05C5 _ 01. D0
        mov     edx, eax                                ; 05C7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05C9 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 05CC _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 05CF _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 05D2 _ 8B. 45, 18
        add     eax, edx                                ; 05D5 _ 01. D0
        movzx   eax, byte [eax]                         ; 05D7 _ 0F B6. 00
        movsx   eax, al                                 ; 05DA _ 0F BE. C0
        push    eax                                     ; 05DD _ 50
        call    charToPictColor                         ; 05DE _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 05E3 _ 83. C4, 04
        mov     byte [ebx], al                          ; 05E6 _ 88. 03
?_042:  add     dword [ebp-0CH], 1                      ; 05E8 _ 83. 45, F4, 01
?_043:  add     dword [ebp-8H], 1                       ; 05EC _ 83. 45, F8, 01
        jmp     ?_040                                   ; 05F0 _ EB, 80

?_044:  nop                                             ; 05F2 _ 90
        mov     ebx, dword [ebp-4H]                     ; 05F3 _ 8B. 5D, FC
        leave                                           ; 05F6 _ C9
        ret                                             ; 05F7 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 05F8 _ 55
        mov     ebp, esp                                ; 05F9 _ 89. E5
        sub     esp, 16                                 ; 05FB _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 05FE _ C7. 45, FC, 00000000
        jmp     ?_046                                   ; 0605 _ EB, 11

?_045:  mov     edx, dword [ebp-4H]                     ; 0607 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 060A _ 8B. 45, 08
        add     eax, edx                                ; 060D _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 060F _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0612 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0614 _ 83. 45, FC, 01
?_046:  cmp     dword [ebp-4H], 65534                   ; 0618 _ 81. 7D, FC, 0000FFFE
        jle     ?_045                                   ; 061F _ 7E, E6
        nop                                             ; 0621 _ 90
        leave                                           ; 0622 _ C9
        ret                                             ; 0623 _ C3
; fillAll End of function

Printf: ; Function begin
        push    ebp                                     ; 0624 _ 55
        mov     ebp, esp                                ; 0625 _ 89. E5
        push    ebx                                     ; 0627 _ 53
        sub     esp, 16                                 ; 0628 _ 83. EC, 10
        push    dword [ebp+8H]                          ; 062B _ FF. 75, 08
        call    strlen                                  ; 062E _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0633 _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 0636 _ 89. 45, F8
        mov     ebx, dword [height]                     ; 0639 _ 8B. 1D, 00000000(d)
        mov     ecx, dword [width]                      ; 063F _ 8B. 0D, 00000000(d)
        mov     edx, dword [pointerY]                   ; 0645 _ 8B. 15, 00000000(d)
        mov     eax, dword [pointerX]                   ; 064B _ A1, 00000000(d)
        push    dword [ebp+8H]                          ; 0650 _ FF. 75, 08
        push    7                                       ; 0653 _ 6A, 07
        push    ebx                                     ; 0655 _ 53
        push    ecx                                     ; 0656 _ 51
        push    edx                                     ; 0657 _ 52
        push    eax                                     ; 0658 _ 50
        push    dword [ebp+10H]                         ; 0659 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 065C _ FF. 75, 0C
        call    Print                                   ; 065F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0664 _ 83. C4, 20
        mov     eax, dword [width]                      ; 0667 _ A1, 00000000(d)
        imul    eax, dword [ebp-8H]                     ; 066C _ 0F AF. 45, F8
        mov     edx, eax                                ; 0670 _ 89. C2
        mov     eax, dword [pointerX]                   ; 0672 _ A1, 00000000(d)
        add     eax, edx                                ; 0677 _ 01. D0
        mov     dword [pointerX], eax                   ; 0679 _ A3, 00000000(d)
        mov     eax, dword [ebp+10H]                    ; 067E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0681 _ 8D. 50, EC
        mov     eax, dword [pointerX]                   ; 0684 _ A1, 00000000(d)
        cmp     edx, eax                                ; 0689 _ 39. C2
        jg      ?_047                                   ; 068B _ 7F, 2B
        mov     dword [pointerX], 20                    ; 068D _ C7. 05, 00000000(d), 00000014
        mov     eax, dword [pointerY]                   ; 0697 _ A1, 00000000(d)
        add     eax, 16                                 ; 069C _ 83. C0, 10
        mov     dword [pointerY], eax                   ; 069F _ A3, 00000000(d)
        mov     eax, dword [pointerY]                   ; 06A4 _ A1, 00000000(d)
        cmp     eax, dword [ebp+14H]                    ; 06A9 _ 3B. 45, 14
        jl      ?_047                                   ; 06AC _ 7C, 0A
        mov     dword [pointerY], 18                    ; 06AE _ C7. 05, 00000000(d), 00000012
?_047:  nop                                             ; 06B8 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06B9 _ 8B. 5D, FC
        leave                                           ; 06BC _ C9
        ret                                             ; 06BD _ C3
; Printf End of function

charToHex:; Function begin
        push    ebp                                     ; 06BE _ 55
        mov     ebp, esp                                ; 06BF _ 89. E5
        sub     esp, 4                                  ; 06C1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 06C4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 06C7 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 06CA _ 80. 7D, FC, 09
        jle     ?_048                                   ; 06CE _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 06D0 _ 0F B6. 45, FC
        add     eax, 87                                 ; 06D4 _ 83. C0, 57
        jmp     ?_049                                   ; 06D7 _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 06D9 _ 0F B6. 45, FC
        add     eax, 48                                 ; 06DD _ 83. C0, 30
?_049:  leave                                           ; 06E0 _ C9
        ret                                             ; 06E1 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 06E2 _ 55
        mov     ebp, esp                                ; 06E3 _ 89. E5
        sub     esp, 4                                  ; 06E5 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 06E8 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 06EB _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 06EE _ 0F B6. 45, FC
        movsx   eax, al                                 ; 06F2 _ 0F BE. C0
        and     eax, 0FH                                ; 06F5 _ 83. E0, 0F
        push    eax                                     ; 06F8 _ 50
        call    charToHex                               ; 06F9 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 06FE _ 83. C4, 04
        mov     byte [?_067], al                        ; 0701 _ A2, 00000145(d)
        shr     byte [ebp-4H], 4                        ; 0706 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 070A _ 0F B6. 45, FC
        movsx   eax, al                                 ; 070E _ 0F BE. C0
        and     eax, 0FH                                ; 0711 _ 83. E0, 0F
        push    eax                                     ; 0714 _ 50
        call    charToHex                               ; 0715 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 071A _ 83. C4, 04
        mov     byte [keystr.1625], al                  ; 071D _ A2, 00000144(d)
        mov     eax, keystr.1625                        ; 0722 _ B8, 00000144(d)
        leave                                           ; 0727 _ C9
        ret                                             ; 0728 _ C3
; charToHexStr End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0729 _ 55
        mov     ebp, esp                                ; 072A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 072C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 072F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 0732 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0734 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0737 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 073A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 073D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0740 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0747 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 074A _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp+8H]                     ; 0751 _ 8B. 45, 08
        mov     dword [eax+10H], 0                      ; 0754 _ C7. 40, 10, 00000000
        nop                                             ; 075B _ 90
        pop     ebp                                     ; 075C _ 5D
        ret                                             ; 075D _ C3
; fifo8_init End of function

fifo8_w:; Function begin
        push    ebp                                     ; 075E _ 55
        mov     ebp, esp                                ; 075F _ 89. E5
        sub     esp, 4                                  ; 0761 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0764 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0767 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 076A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 076D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 076F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0772 _ 8B. 40, 10
        add     edx, eax                                ; 0775 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0777 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 077B _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 077D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0780 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0783 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0786 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0789 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 078C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 078F _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0792 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0795 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 0798 _ 8B. 48, 04
        mov     eax, edx                                ; 079B _ 89. D0
        cdq                                             ; 079D _ 99
        idiv    ecx                                     ; 079E _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 07A0 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 07A3 _ 89. 50, 10
        nop                                             ; 07A6 _ 90
        leave                                           ; 07A7 _ C9
        ret                                             ; 07A8 _ C3
; fifo8_w End of function

fifo8_r:; Function begin
        push    ebp                                     ; 07A9 _ 55
        mov     ebp, esp                                ; 07AA _ 89. E5
        sub     esp, 16                                 ; 07AC _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 07AF _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 07B2 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 07B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 07B7 _ 8B. 40, 0C
        add     eax, edx                                ; 07BA _ 01. D0
        movzx   eax, byte [eax]                         ; 07BC _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 07BF _ 88. 45, FF
        mov     eax, dword [ebp+8H]                     ; 07C2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 07C5 _ 8B. 40, 08
        lea     edx, [eax-1H]                           ; 07C8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 07CB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 07CE _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 07D1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 07D4 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 07D7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 07DA _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 07DD _ 8B. 48, 04
        mov     eax, edx                                ; 07E0 _ 89. D0
        cdq                                             ; 07E2 _ 99
        idiv    ecx                                     ; 07E3 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 07E5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 07E8 _ 89. 50, 0C
        movzx   eax, byte [ebp-1H]                      ; 07EB _ 0F B6. 45, FF
        leave                                           ; 07EF _ C9
        ret                                             ; 07F0 _ C3
; fifo8_r End of function

fifo8_isEmpty:; Function begin
        push    ebp                                     ; 07F1 _ 55
        mov     ebp, esp                                ; 07F2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 07F4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 07F7 _ 8B. 40, 08
        test    eax, eax                                ; 07FA _ 85. C0
        sete    al                                      ; 07FC _ 0F 94. C0
        movzx   eax, al                                 ; 07FF _ 0F B6. C0
        pop     ebp                                     ; 0802 _ 5D
        ret                                             ; 0803 _ C3
; fifo8_isEmpty End of function

fifo8_isFull:; Function begin
        push    ebp                                     ; 0804 _ 55
        mov     ebp, esp                                ; 0805 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0807 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 080A _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 080D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0810 _ 8B. 40, 04
        cmp     edx, eax                                ; 0813 _ 39. C2
        sete    al                                      ; 0815 _ 0F 94. C0
        movzx   eax, al                                 ; 0818 _ 0F B6. C0
        pop     ebp                                     ; 081B _ 5D
        ret                                             ; 081C _ C3
; fifo8_isFull End of function

keybuf_init:; Function begin
        push    ebp                                     ; 081D _ 55
        mov     ebp, esp                                ; 081E _ 89. E5
        mov     dword [keybuf+80H], 0                   ; 0820 _ C7. 05, 00000080(d), 00000000
        mov     dword [keybuf+84H], 0                   ; 082A _ C7. 05, 00000084(d), 00000000
        mov     dword [keybuf+88H], 0                   ; 0834 _ C7. 05, 00000088(d), 00000000
        nop                                             ; 083E _ 90
        pop     ebp                                     ; 083F _ 5D
        ret                                             ; 0840 _ C3
; keybuf_init End of function

keybuf_w8:; Function begin
        push    ebp                                     ; 0841 _ 55
        mov     ebp, esp                                ; 0842 _ 89. E5
        sub     esp, 4                                  ; 0844 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0847 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 084A _ 88. 45, FC
        mov     eax, dword [keybuf+84H]                 ; 084D _ A1, 00000084(d)
        movzx   edx, byte [ebp-4H]                      ; 0852 _ 0F B6. 55, FC
        mov     byte [keybuf+eax], dl                   ; 0856 _ 88. 90, 00000000(d)
        mov     eax, dword [keybuf+88H]                 ; 085C _ A1, 00000088(d)
        add     eax, 1                                  ; 0861 _ 83. C0, 01
        mov     dword [keybuf+88H], eax                 ; 0864 _ A3, 00000088(d)
        mov     eax, dword [keybuf+84H]                 ; 0869 _ A1, 00000084(d)
        lea     edx, [eax+1H]                           ; 086E _ 8D. 50, 01
        mov     eax, edx                                ; 0871 _ 89. D0
        sar     eax, 31                                 ; 0873 _ C1. F8, 1F
        shr     eax, 25                                 ; 0876 _ C1. E8, 19
        add     edx, eax                                ; 0879 _ 01. C2
        and     edx, 7FH                                ; 087B _ 83. E2, 7F
        sub     edx, eax                                ; 087E _ 29. C2
        mov     eax, edx                                ; 0880 _ 89. D0
        mov     dword [keybuf+84H], eax                 ; 0882 _ A3, 00000084(d)
        nop                                             ; 0887 _ 90
        leave                                           ; 0888 _ C9
        ret                                             ; 0889 _ C3
; keybuf_w8 End of function

keybuf_r8:; Function begin
        push    ebp                                     ; 088A _ 55
        mov     ebp, esp                                ; 088B _ 89. E5
        sub     esp, 16                                 ; 088D _ 83. EC, 10
        mov     eax, dword [keybuf+80H]                 ; 0890 _ A1, 00000080(d)
        movzx   eax, byte [keybuf+eax]                  ; 0895 _ 0F B6. 80, 00000000(d)
        mov     byte [ebp-1H], al                       ; 089C _ 88. 45, FF
        mov     eax, dword [keybuf+88H]                 ; 089F _ A1, 00000088(d)
        sub     eax, 1                                  ; 08A4 _ 83. E8, 01
        mov     dword [keybuf+88H], eax                 ; 08A7 _ A3, 00000088(d)
        mov     eax, dword [keybuf+80H]                 ; 08AC _ A1, 00000080(d)
        lea     edx, [eax+1H]                           ; 08B1 _ 8D. 50, 01
        mov     eax, edx                                ; 08B4 _ 89. D0
        sar     eax, 31                                 ; 08B6 _ C1. F8, 1F
        shr     eax, 25                                 ; 08B9 _ C1. E8, 19
        add     edx, eax                                ; 08BC _ 01. C2
        and     edx, 7FH                                ; 08BE _ 83. E2, 7F
        sub     edx, eax                                ; 08C1 _ 29. C2
        mov     eax, edx                                ; 08C3 _ 89. D0
        mov     dword [keybuf+80H], eax                 ; 08C5 _ A3, 00000080(d)
        movzx   eax, byte [ebp-1H]                      ; 08CA _ 0F B6. 45, FF
        leave                                           ; 08CE _ C9
        ret                                             ; 08CF _ C3
; keybuf_r8 End of function

keybuf_isEmpty:; Function begin
        push    ebp                                     ; 08D0 _ 55
        mov     ebp, esp                                ; 08D1 _ 89. E5
        mov     eax, dword [keybuf+88H]                 ; 08D3 _ A1, 00000088(d)
        test    eax, eax                                ; 08D8 _ 85. C0
        sete    al                                      ; 08DA _ 0F 94. C0
        movzx   eax, al                                 ; 08DD _ 0F B6. C0
        pop     ebp                                     ; 08E0 _ 5D
        ret                                             ; 08E1 _ C3
; keybuf_isEmpty End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 08E2 _ 55
        mov     ebp, esp                                ; 08E3 _ 89. E5
        sub     esp, 8                                  ; 08E5 _ 83. EC, 08
?_050:  sub     esp, 12                                 ; 08E8 _ 83. EC, 0C
        push    100                                     ; 08EB _ 6A, 64
        call    io_in8                                  ; 08ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08F2 _ 83. C4, 10
        movsx   eax, al                                 ; 08F5 _ 0F BE. C0
        and     eax, 02H                                ; 08F8 _ 83. E0, 02
        test    eax, eax                                ; 08FB _ 85. C0
        jz      ?_051                                   ; 08FD _ 74, 02
        jmp     ?_050                                   ; 08FF _ EB, E7

?_051:  nop                                             ; 0901 _ 90
        nop                                             ; 0902 _ 90
        leave                                           ; 0903 _ C9
        ret                                             ; 0904 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0905 _ 55
        mov     ebp, esp                                ; 0906 _ 89. E5
        sub     esp, 8                                  ; 0908 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 090B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0910 _ 83. EC, 08
        push    96                                      ; 0913 _ 6A, 60
        push    100                                     ; 0915 _ 6A, 64
        call    io_out8                                 ; 0917 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 091C _ 83. C4, 10
        call    wait_KBC_sendready                      ; 091F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0924 _ 83. EC, 08
        push    71                                      ; 0927 _ 6A, 47
        push    96                                      ; 0929 _ 6A, 60
        call    io_out8                                 ; 092B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0930 _ 83. C4, 10
        nop                                             ; 0933 _ 90
        leave                                           ; 0934 _ C9
        ret                                             ; 0935 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0936 _ 55
        mov     ebp, esp                                ; 0937 _ 89. E5
        sub     esp, 8                                  ; 0939 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 093C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0941 _ 83. EC, 08
        push    212                                     ; 0944 _ 68, 000000D4
        push    100                                     ; 0949 _ 6A, 64
        call    io_out8                                 ; 094B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0950 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0953 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0958 _ 83. EC, 08
        push    244                                     ; 095B _ 68, 000000F4
        push    96                                      ; 0960 _ 6A, 60
        call    io_out8                                 ; 0962 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0967 _ 83. C4, 10
        nop                                             ; 096A _ 90
        leave                                           ; 096B _ C9
        ret                                             ; 096C _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 096D _ 55
        mov     ebp, esp                                ; 096E _ 89. E5
        sub     esp, 4                                  ; 0970 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0973 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0976 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0979 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 097C _ 0F B6. 40, 03
        test    al, al                                  ; 0980 _ 84. C0
        jnz     ?_053                                   ; 0982 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0984 _ 80. 7D, FC, FA
        jnz     ?_052                                   ; 0988 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 098A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 098D _ C6. 40, 03, 01
?_052:  mov     eax, 0                                  ; 0991 _ B8, 00000000
        jmp     ?_060                                   ; 0996 _ E9, 0000010F

?_053:  mov     eax, dword [ebp+8H]                     ; 099B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 099E _ 0F B6. 40, 03
        cmp     al, 1                                   ; 09A2 _ 3C, 01
        jnz     ?_055                                   ; 09A4 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 09A6 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 09AA _ 25, 000000C8
        cmp     eax, 8                                  ; 09AF _ 83. F8, 08
        jnz     ?_054                                   ; 09B2 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 09B4 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 09B7 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 09BB _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 09BD _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 09C0 _ C6. 40, 03, 02
?_054:  mov     eax, 0                                  ; 09C4 _ B8, 00000000
        jmp     ?_060                                   ; 09C9 _ E9, 000000DC

?_055:  mov     eax, dword [ebp+8H]                     ; 09CE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 09D1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 09D5 _ 3C, 02
        jnz     ?_056                                   ; 09D7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 09D9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 09DC _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 09E0 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 09E3 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 09E6 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 09EA _ B8, 00000000
        jmp     ?_060                                   ; 09EF _ E9, 000000B6

?_056:  mov     eax, dword [ebp+8H]                     ; 09F4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 09F7 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 09FB _ 3C, 03
        jne     ?_059                                   ; 09FD _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0A03 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0A06 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0A0A _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0A0D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0A10 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0A14 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0A17 _ 0F B6. 00
        movzx   eax, al                                 ; 0A1A _ 0F B6. C0
        and     eax, 07H                                ; 0A1D _ 83. E0, 07
        mov     edx, eax                                ; 0A20 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A22 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0A25 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0A28 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0A2B _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0A2F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0A32 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0A35 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0A3B _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0A3F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0A42 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A45 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0A48 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0A4B _ 0F B6. 00
        movzx   eax, al                                 ; 0A4E _ 0F B6. C0
        and     eax, 10H                                ; 0A51 _ 83. E0, 10
        test    eax, eax                                ; 0A54 _ 85. C0
        jz      ?_057                                   ; 0A56 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0A58 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0A5B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0A5E _ 0D, FFFFFF00
        mov     edx, eax                                ; 0A63 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A65 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0A68 _ 89. 50, 04
?_057:  mov     eax, dword [ebp+8H]                     ; 0A6B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0A6E _ 0F B6. 00
        movzx   eax, al                                 ; 0A71 _ 0F B6. C0
        and     eax, 20H                                ; 0A74 _ 83. E0, 20
        test    eax, eax                                ; 0A77 _ 85. C0
        jz      ?_058                                   ; 0A79 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0A7B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A7E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0A81 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0A86 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A88 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A8B _ 89. 50, 08
?_058:  mov     eax, dword [ebp+8H]                     ; 0A8E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A91 _ 8B. 40, 08
        neg     eax                                     ; 0A94 _ F7. D8
        mov     edx, eax                                ; 0A96 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A98 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A9B _ 89. 50, 08
        mov     eax, 1                                  ; 0A9E _ B8, 00000001
        jmp     ?_060                                   ; 0AA3 _ EB, 05

?_059:  mov     eax, 4294967295                         ; 0AA5 _ B8, FFFFFFFF
?_060:  leave                                           ; 0AAA _ C9
        ret                                             ; 0AAB _ C3
; mouse_decode End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0AAC _ 55
        mov     ebp, esp                                ; 0AAD _ 89. E5
        sub     esp, 24                                 ; 0AAF _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AB2 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0AB7 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0ABA _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AC1 _ 98
        mov     dword [ebp-10H], eax                    ; 0AC2 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0AC5 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0ACC _ 98
        mov     dword [ebp-0CH], eax                    ; 0ACD _ 89. 45, F4
        sub     esp, 8                                  ; 0AD0 _ 83. EC, 08
        push    33                                      ; 0AD3 _ 6A, 21
        push    32                                      ; 0AD5 _ 6A, 20
        call    io_out8                                 ; 0AD7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADC _ 83. C4, 10
        sub     esp, 12                                 ; 0ADF _ 83. EC, 0C
        push    96                                      ; 0AE2 _ 6A, 60
        call    io_in8                                  ; 0AE4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AE9 _ 83. C4, 10
        push    dword [ebp-0CH]                         ; 0AEC _ FF. 75, F4
        push    dword [ebp-10H]                         ; 0AEF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0AF2 _ FF. 75, EC
        push    ?_068                                   ; 0AF5 _ 68, 00000000(d)
        call    Printf                                  ; 0AFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AFF _ 83. C4, 10
        nop                                             ; 0B02 _ 90
        leave                                           ; 0B03 _ C9
        ret                                             ; 0B04 _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 0B05 _ 55
        mov     ebp, esp                                ; 0B06 _ 89. E5
        sub     esp, 24                                 ; 0B08 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B0B _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B10 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0B13 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B1A _ 98
        mov     dword [ebp-10H], eax                    ; 0B1B _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0B1E _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B25 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B26 _ 89. 45, F4
        sub     esp, 8                                  ; 0B29 _ 83. EC, 08
        push    33                                      ; 0B2C _ 6A, 21
        push    32                                      ; 0B2E _ 6A, 20
        call    io_out8                                 ; 0B30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B35 _ 83. C4, 10
        sub     esp, 12                                 ; 0B38 _ 83. EC, 0C
        push    96                                      ; 0B3B _ 6A, 60
        call    io_in8                                  ; 0B3D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B42 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B45 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B48 _ 0F B6. 45, EB
        sub     esp, 12                                 ; 0B4C _ 83. EC, 0C
        push    eax                                     ; 0B4F _ 50
        call    keybuf_w8                               ; 0B50 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B55 _ 83. C4, 10
        nop                                             ; 0B58 _ 90
        leave                                           ; 0B59 _ C9
        ret                                             ; 0B5A _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 0B5B _ 55
        mov     ebp, esp                                ; 0B5C _ 89. E5
        sub     esp, 24                                 ; 0B5E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B61 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B66 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0B69 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B70 _ 98
        mov     dword [ebp-10H], eax                    ; 0B71 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0B74 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B7B _ 98
        mov     dword [ebp-0CH], eax                    ; 0B7C _ 89. 45, F4
        sub     esp, 8                                  ; 0B7F _ 83. EC, 08
        push    32                                      ; 0B82 _ 6A, 20
        push    160                                     ; 0B84 _ 68, 000000A0
        call    io_out8                                 ; 0B89 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B8E _ 83. C4, 10
        sub     esp, 8                                  ; 0B91 _ 83. EC, 08
        push    32                                      ; 0B94 _ 6A, 20
        push    32                                      ; 0B96 _ 6A, 20
        call    io_out8                                 ; 0B98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B9D _ 83. C4, 10
        sub     esp, 12                                 ; 0BA0 _ 83. EC, 0C
        push    96                                      ; 0BA3 _ 6A, 60
        call    io_in8                                  ; 0BA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BAA _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0BAD _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0BB0 _ 0F B6. 45, EB
        sub     esp, 12                                 ; 0BB4 _ 83. EC, 0C
        push    eax                                     ; 0BB7 _ 50
        call    keybuf_w8                               ; 0BB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BBD _ 83. C4, 10
        nop                                             ; 0BC0 _ 90
        leave                                           ; 0BC1 _ C9
        ret                                             ; 0BC2 _ C3
; intHandlerFromC_mouse End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0BC3 _ 55
        mov     ebp, esp                                ; 0BC4 _ 89. E5
        push    ebx                                     ; 0BC6 _ 53
        mov     eax, dword [ebp+10H]                    ; 0BC7 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0BCA _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0BCD _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0BD0 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0BD3 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0BD5 _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0BD8 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0BDB _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0BDE _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0BE1 _ 8B. 00
        push    ebx                                     ; 0BE3 _ 53
        push    ecx                                     ; 0BE4 _ 51
        push    edx                                     ; 0BE5 _ 52
        push    eax                                     ; 0BE6 _ 50
        push    15                                      ; 0BE7 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0BE9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BEC _ FF. 75, 08
        call    boxfill8                                ; 0BEF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0BF4 _ 83. C4, 1C
        nop                                             ; 0BF7 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0BF8 _ 8B. 5D, FC
        leave                                           ; 0BFB _ C9
        ret                                             ; 0BFC _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0BFD _ 55
        mov     ebp, esp                                ; 0BFE _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0C00 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0C03 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0C06 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0C09 _ 8B. 00
        push    cursor                                  ; 0C0B _ 68, 00000000(d)
        push    edx                                     ; 0C10 _ 52
        push    eax                                     ; 0C11 _ 50
        push    dword [ebp+0CH]                         ; 0C12 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C15 _ FF. 75, 08
        call    PrintRGB                                ; 0C18 _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0C1D _ 83. C4, 14
        nop                                             ; 0C20 _ 90
        leave                                           ; 0C21 _ C9
        ret                                             ; 0C22 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0C23 _ 55
        mov     ebp, esp                                ; 0C24 _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0C26 _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0C2C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C2F _ 8B. 40, 04
        add     eax, edx                                ; 0C32 _ 01. D0
        mov     dword [cur_pos], eax                    ; 0C34 _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0C39 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0C3F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C42 _ 8B. 40, 08
        add     eax, edx                                ; 0C45 _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0C47 _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0C4C _ A1, 00000000(d)
        test    eax, eax                                ; 0C51 _ 85. C0
        jns     ?_061                                   ; 0C53 _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0C55 _ C7. 05, 00000000(d), 00000000
?_061:  mov     eax, dword [cur_pos+4H]                 ; 0C5F _ A1, 00000004(d)
        test    eax, eax                                ; 0C64 _ 85. C0
        jns     ?_062                                   ; 0C66 _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0C68 _ C7. 05, 00000004(d), 00000000
?_062:  mov     eax, dword [cur_pos]                    ; 0C72 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0C77 _ 3B. 45, 0C
        jle     ?_063                                   ; 0C7A _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0C7C _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0C7F _ A3, 00000000(d)
?_063:  mov     eax, dword [cur_pos+4H]                 ; 0C84 _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0C89 _ 3B. 45, 10
        jle     ?_064                                   ; 0C8C _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0C8E _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0C91 _ A3, 00000004(d)
?_064:  nop                                             ; 0C96 _ 90
        pop     ebp                                     ; 0C97 _ 5D
        ret                                             ; 0C98 _ C3
; computeMousePosition End of function

CMain:  ; Function begin
        push    ebp                                     ; 0C99 _ 55
        mov     ebp, esp                                ; 0C9A _ 89. E5
        sub     esp, 40                                 ; 0C9C _ 83. EC, 28
        call    pict_init                               ; 0C9F _ E8, FFFFFFFC(rel)
        call    keybuf_init                             ; 0CA4 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0CA9 _ 83. EC, 04
        push    128                                     ; 0CAC _ 68, 00000080
        push    mouse_buf                               ; 0CB1 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 0CB6 _ 68, 00000000(d)
        call    fifo8_init                              ; 0CBB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CC0 _ 83. C4, 10
        call    init_keyboard                           ; 0CC3 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0CC8 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0CCD _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0CD2 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0CD7 _ 89. 45, E8
        movzx   eax, word [bootInfo+4H]                 ; 0CDA _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0CE1 _ 98
        mov     dword [ebp-14H], eax                    ; 0CE2 _ 89. 45, EC
        movzx   eax, word [bootInfo+6H]                 ; 0CE5 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0CEC _ 98
        mov     dword [ebp-10H], eax                    ; 0CED _ 89. 45, F0
        sub     esp, 8                                  ; 0CF0 _ 83. EC, 08
        push    15                                      ; 0CF3 _ 6A, 0F
        push    dword [ebp-18H]                         ; 0CF5 _ FF. 75, E8
        call    fillAll                                 ; 0CF8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CFD _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 0D00 _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0D06 _ A1, 00000000(d)
        sub     esp, 12                                 ; 0D0B _ 83. EC, 0C
        push    cursor                                  ; 0D0E _ 68, 00000000(d)
        push    edx                                     ; 0D13 _ 52
        push    eax                                     ; 0D14 _ 50
        push    dword [ebp-14H]                         ; 0D15 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0D18 _ FF. 75, E8
        call    PrintRGB                                ; 0D1B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D20 _ 83. C4, 20
?_065:  call    io_cli                                  ; 0D23 _ E8, FFFFFFFC(rel)
        call    keybuf_isEmpty                          ; 0D28 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0D2D _ 85. C0
        jz      ?_066                                   ; 0D2F _ 74, 07
        call    io_stihlt                               ; 0D31 _ E8, FFFFFFFC(rel)
        jmp     ?_065                                   ; 0D36 _ EB, EB

?_066:  call    io_sti                                  ; 0D38 _ E8, FFFFFFFC(rel)
        call    keybuf_r8                               ; 0D3D _ E8, FFFFFFFC(rel)
        mov     byte [ebp-19H], al                      ; 0D42 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0D45 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0D49 _ 83. EC, 0C
        push    eax                                     ; 0D4C _ 50
        call    charToHexStr                            ; 0D4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D52 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0D55 _ 89. 45, F4
        push    dword [ebp-10H]                         ; 0D58 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0D5B _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0D5E _ FF. 75, E8
        push    dword [ebp-0CH]                         ; 0D61 _ FF. 75, F4
        call    Printf                                  ; 0D64 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D69 _ 83. C4, 10
        movzx   eax, byte [ebp-19H]                     ; 0D6C _ 0F B6. 45, E7
        sub     esp, 8                                  ; 0D70 _ 83. EC, 08
        push    eax                                     ; 0D73 _ 50
        push    mdec                                    ; 0D74 _ 68, 00000000(d)
        call    mouse_decode                            ; 0D79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D7E _ 83. C4, 10
        test    eax, eax                                ; 0D81 _ 85. C0
        jz      ?_065                                   ; 0D83 _ 74, 9E
        sub     esp, 4                                  ; 0D85 _ 83. EC, 04
        push    cur_pos                                 ; 0D88 _ 68, 00000000(d)
        push    dword [ebp-14H]                         ; 0D8D _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0D90 _ FF. 75, E8
        call    eraseMouse                              ; 0D93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D98 _ 83. C4, 10
        sub     esp, 4                                  ; 0D9B _ 83. EC, 04
        push    dword [ebp-10H]                         ; 0D9E _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0DA1 _ FF. 75, EC
        push    mdec                                    ; 0DA4 _ 68, 00000000(d)
        call    computeMousePosition                    ; 0DA9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DAE _ 83. C4, 10
        sub     esp, 4                                  ; 0DB1 _ 83. EC, 04
        push    cur_pos                                 ; 0DB4 _ 68, 00000000(d)
        push    dword [ebp-14H]                         ; 0DB9 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0DBC _ FF. 75, E8
        call    drawMouse                               ; 0DBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DC4 _ 83. C4, 10
        jmp     ?_065                                   ; 0DC7 _ E9, FFFFFF57
; CMain End of function




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
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0068 _ ........
        db 00H, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0070 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0078 _ ........
        db 2EH, 00H, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0080 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ ........
        db 2EH, 2EH, 00H, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0090 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH       ; 0098 _ .......*
        db 2EH, 2EH, 2EH, 00H, 2EH, 2EH, 2EH, 2EH       ; 00A0 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH       ; 00A8 _ .......*
        db 77H, 2AH, 2EH, 2EH, 00H, 2EH, 2EH, 2EH       ; 00B0 _ w*......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH       ; 00B8 _ .......*
        db 77H, 77H, 77H, 2AH, 2EH, 00H, 2EH, 2EH       ; 00C0 _ www*....
        db 2EH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH       ; 00C8 _ .*.....*
        db 77H, 77H, 77H, 2AH, 2EH, 2EH, 00H, 2EH       ; 00D0 _ www*....
        db 2EH, 2AH, 77H, 2AH, 2EH, 2EH, 2EH, 2AH       ; 00D8 _ .*w*...*
        db 77H, 77H, 77H, 2AH, 2EH, 2EH, 2EH, 00H       ; 00E0 _ www*....
        db 2EH, 2AH, 77H, 77H, 77H, 2AH, 2EH, 2AH       ; 00E8 _ .*www*.*
        db 77H, 77H, 77H, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F0 _ www*....
        db 00H, 2EH, 2EH, 2AH, 77H, 77H, 77H, 2AH       ; 00F8 _ ...*www*
        db 77H, 77H, 77H, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ www*....
        db 2EH, 00H, 2EH, 2EH, 2EH, 2AH, 77H, 77H       ; 0108 _ .....*ww
        db 77H, 77H, 77H, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ www*....
        db 2EH, 2EH, 00H, 2EH, 2EH, 2EH, 2EH, 2AH       ; 0118 _ .......*
        db 77H, 77H, 77H, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ www*....
        db 2EH, 2EH, 2EH, 00H, 2EH, 2EH, 2EH, 2EH       ; 0128 _ ........
        db 2EH, 2AH, 77H, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ .*w*....
        db 2EH, 2EH, 2EH, 2EH, 00H, 2EH, 2EH, 2EH       ; 0138 _ ........
        db 2EH, 2EH, 2EH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ...*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 00H, 2EH, 2EH       ; 0148 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 00H, 2EH       ; 0158 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 00H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H                           ; 0170 _ ....

bootInfo: dq 00C80140000A0000H                          ; 0174 _ 00C80140000A0000 
        db 00H, 00H, 00H, 00H                           ; 017C _ ....

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0180 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0188 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0190 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0198 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 01A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 01A8 _ ........

width:  dd 00000008H                                    ; 01B0 _ 8 

height: dd 00000010H                                    ; 01B4 _ 16 

pointerX: dd 00000014H                                  ; 01B8 _ 20 

pointerY: dd 00000012H                                  ; 01BC _ 18 

cur_pos: dq 0000001400000014H                           ; 01C0 _ 0000001400000014 




keybuf:                                                 ; byte
        resd    40                                      ; 0000

mouse_buf:                                              ; byte
        resb    128                                     ; 00A0

MOUSE_FIFO8:                                            ; byte
        resb    20                                      ; 0120

mdec:                                                   ; oword
        resb    16                                      ; 0134

keystr.1625:                                            ; byte
        resb    1                                       ; 0144

?_067:  resb    2                                       ; 0145




?_068:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.


