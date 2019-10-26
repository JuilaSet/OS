; Disassembly of file: main.o
; Sat Oct 26 04:26:40 2019
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
        jg      ?_047                                   ; 068B _ 7F, 17
        mov     dword [pointerX], 20                    ; 068D _ C7. 05, 00000000(d), 00000014
        mov     eax, dword [pointerY]                   ; 0697 _ A1, 00000000(d)
        add     eax, 16                                 ; 069C _ 83. C0, 10
        mov     dword [pointerY], eax                   ; 069F _ A3, 00000000(d)
?_047:  nop                                             ; 06A4 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06A5 _ 8B. 5D, FC
        leave                                           ; 06A8 _ C9
        ret                                             ; 06A9 _ C3
; Printf End of function

charToHex:; Function begin
        push    ebp                                     ; 06AA _ 55
        mov     ebp, esp                                ; 06AB _ 89. E5
        sub     esp, 4                                  ; 06AD _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 06B0 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 06B3 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 06B6 _ 80. 7D, FC, 09
        jle     ?_048                                   ; 06BA _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 06BC _ 0F B6. 45, FC
        add     eax, 87                                 ; 06C0 _ 83. C0, 57
        jmp     ?_049                                   ; 06C3 _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 06C5 _ 0F B6. 45, FC
        add     eax, 48                                 ; 06C9 _ 83. C0, 30
?_049:  leave                                           ; 06CC _ C9
        ret                                             ; 06CD _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 06CE _ 55
        mov     ebp, esp                                ; 06CF _ 89. E5
        sub     esp, 4                                  ; 06D1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 06D4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 06D7 _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 06DA _ 0F B6. 45, FC
        movsx   eax, al                                 ; 06DE _ 0F BE. C0
        and     eax, 0FH                                ; 06E1 _ 83. E0, 0F
        push    eax                                     ; 06E4 _ 50
        call    charToHex                               ; 06E5 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 06EA _ 83. C4, 04
        mov     byte [?_056], al                        ; 06ED _ A2, 000000D5(d)
        shr     byte [ebp-4H], 4                        ; 06F2 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 06F6 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 06FA _ 0F BE. C0
        and     eax, 0FH                                ; 06FD _ 83. E0, 0F
        push    eax                                     ; 0700 _ 50
        call    charToHex                               ; 0701 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0706 _ 83. C4, 04
        mov     byte [keystr.1624], al                  ; 0709 _ A2, 000000D4(d)
        mov     eax, keystr.1624                        ; 070E _ B8, 000000D4(d)
        leave                                           ; 0713 _ C9
        ret                                             ; 0714 _ C3
; charToHexStr End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0715 _ 55
        mov     ebp, esp                                ; 0716 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0718 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 071B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 071E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0720 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0723 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 0726 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0729 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 072C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0733 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 0736 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp+8H]                     ; 073D _ 8B. 45, 08
        mov     dword [eax+10H], 0                      ; 0740 _ C7. 40, 10, 00000000
        nop                                             ; 0747 _ 90
        pop     ebp                                     ; 0748 _ 5D
        ret                                             ; 0749 _ C3
; fifo8_init End of function

fifo8_w:; Function begin
        push    ebp                                     ; 074A _ 55
        mov     ebp, esp                                ; 074B _ 89. E5
        sub     esp, 4                                  ; 074D _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0750 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0753 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0756 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0759 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 075B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 075E _ 8B. 40, 10
        add     edx, eax                                ; 0761 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0763 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0767 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0769 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 076C _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 076F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0772 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0775 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0778 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 077B _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 077E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0781 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 0784 _ 8B. 48, 04
        mov     eax, edx                                ; 0787 _ 89. D0
        cdq                                             ; 0789 _ 99
        idiv    ecx                                     ; 078A _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 078C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 078F _ 89. 50, 10
        nop                                             ; 0792 _ 90
        leave                                           ; 0793 _ C9
        ret                                             ; 0794 _ C3
; fifo8_w End of function

fifo8_r:; Function begin
        push    ebp                                     ; 0795 _ 55
        mov     ebp, esp                                ; 0796 _ 89. E5
        sub     esp, 16                                 ; 0798 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 079B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 079E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 07A0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 07A3 _ 8B. 40, 0C
        add     eax, edx                                ; 07A6 _ 01. D0
        movzx   eax, byte [eax]                         ; 07A8 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 07AB _ 88. 45, FF
        mov     eax, dword [ebp+8H]                     ; 07AE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 07B1 _ 8B. 40, 08
        lea     edx, [eax-1H]                           ; 07B4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 07B7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 07BA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 07BD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 07C0 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 07C3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 07C6 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 07C9 _ 8B. 48, 04
        mov     eax, edx                                ; 07CC _ 89. D0
        cdq                                             ; 07CE _ 99
        idiv    ecx                                     ; 07CF _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 07D1 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 07D4 _ 89. 50, 0C
        movzx   eax, byte [ebp-1H]                      ; 07D7 _ 0F B6. 45, FF
        leave                                           ; 07DB _ C9
        ret                                             ; 07DC _ C3
; fifo8_r End of function

fifo8_isEmpty:; Function begin
        push    ebp                                     ; 07DD _ 55
        mov     ebp, esp                                ; 07DE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 07E0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 07E3 _ 8B. 40, 08
        test    eax, eax                                ; 07E6 _ 85. C0
        sete    al                                      ; 07E8 _ 0F 94. C0
        movzx   eax, al                                 ; 07EB _ 0F B6. C0
        pop     ebp                                     ; 07EE _ 5D
        ret                                             ; 07EF _ C3
; fifo8_isEmpty End of function

keybuf_init:; Function begin
        push    ebp                                     ; 07F0 _ 55
        mov     ebp, esp                                ; 07F1 _ 89. E5
        mov     dword [keybuf+20H], 0                   ; 07F3 _ C7. 05, 00000020(d), 00000000
        mov     dword [keybuf+24H], 0                   ; 07FD _ C7. 05, 00000024(d), 00000000
        mov     dword [keybuf+28H], 0                   ; 0807 _ C7. 05, 00000028(d), 00000000
        nop                                             ; 0811 _ 90
        pop     ebp                                     ; 0812 _ 5D
        ret                                             ; 0813 _ C3
; keybuf_init End of function

keybuf_w8:; Function begin
        push    ebp                                     ; 0814 _ 55
        mov     ebp, esp                                ; 0815 _ 89. E5
        sub     esp, 4                                  ; 0817 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 081A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 081D _ 88. 45, FC
        mov     eax, dword [keybuf+24H]                 ; 0820 _ A1, 00000024(d)
        movzx   edx, byte [ebp-4H]                      ; 0825 _ 0F B6. 55, FC
        mov     byte [keybuf+eax], dl                   ; 0829 _ 88. 90, 00000000(d)
        mov     eax, dword [keybuf+28H]                 ; 082F _ A1, 00000028(d)
        add     eax, 1                                  ; 0834 _ 83. C0, 01
        mov     dword [keybuf+28H], eax                 ; 0837 _ A3, 00000028(d)
        mov     eax, dword [keybuf+24H]                 ; 083C _ A1, 00000024(d)
        lea     edx, [eax+1H]                           ; 0841 _ 8D. 50, 01
        mov     eax, edx                                ; 0844 _ 89. D0
        sar     eax, 31                                 ; 0846 _ C1. F8, 1F
        shr     eax, 27                                 ; 0849 _ C1. E8, 1B
        add     edx, eax                                ; 084C _ 01. C2
        and     edx, 1FH                                ; 084E _ 83. E2, 1F
        sub     edx, eax                                ; 0851 _ 29. C2
        mov     eax, edx                                ; 0853 _ 89. D0
        mov     dword [keybuf+24H], eax                 ; 0855 _ A3, 00000024(d)
        nop                                             ; 085A _ 90
        leave                                           ; 085B _ C9
        ret                                             ; 085C _ C3
; keybuf_w8 End of function

keybuf_r8:; Function begin
        push    ebp                                     ; 085D _ 55
        mov     ebp, esp                                ; 085E _ 89. E5
        sub     esp, 16                                 ; 0860 _ 83. EC, 10
        mov     eax, dword [keybuf+20H]                 ; 0863 _ A1, 00000020(d)
        movzx   eax, byte [keybuf+eax]                  ; 0868 _ 0F B6. 80, 00000000(d)
        mov     byte [ebp-1H], al                       ; 086F _ 88. 45, FF
        mov     eax, dword [keybuf+28H]                 ; 0872 _ A1, 00000028(d)
        sub     eax, 1                                  ; 0877 _ 83. E8, 01
        mov     dword [keybuf+28H], eax                 ; 087A _ A3, 00000028(d)
        mov     eax, dword [keybuf+20H]                 ; 087F _ A1, 00000020(d)
        lea     edx, [eax+1H]                           ; 0884 _ 8D. 50, 01
        mov     eax, edx                                ; 0887 _ 89. D0
        sar     eax, 31                                 ; 0889 _ C1. F8, 1F
        shr     eax, 27                                 ; 088C _ C1. E8, 1B
        add     edx, eax                                ; 088F _ 01. C2
        and     edx, 1FH                                ; 0891 _ 83. E2, 1F
        sub     edx, eax                                ; 0894 _ 29. C2
        mov     eax, edx                                ; 0896 _ 89. D0
        mov     dword [keybuf+20H], eax                 ; 0898 _ A3, 00000020(d)
        movzx   eax, byte [ebp-1H]                      ; 089D _ 0F B6. 45, FF
        leave                                           ; 08A1 _ C9
        ret                                             ; 08A2 _ C3
; keybuf_r8 End of function

keybuf_isEmpty:; Function begin
        push    ebp                                     ; 08A3 _ 55
        mov     ebp, esp                                ; 08A4 _ 89. E5
        mov     eax, dword [keybuf+28H]                 ; 08A6 _ A1, 00000028(d)
        test    eax, eax                                ; 08AB _ 85. C0
        sete    al                                      ; 08AD _ 0F 94. C0
        movzx   eax, al                                 ; 08B0 _ 0F B6. C0
        pop     ebp                                     ; 08B3 _ 5D
        ret                                             ; 08B4 _ C3
; keybuf_isEmpty End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 08B5 _ 55
        mov     ebp, esp                                ; 08B6 _ 89. E5
        sub     esp, 8                                  ; 08B8 _ 83. EC, 08
?_050:  sub     esp, 12                                 ; 08BB _ 83. EC, 0C
        push    100                                     ; 08BE _ 6A, 64
        call    io_in8                                  ; 08C0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08C5 _ 83. C4, 10
        movsx   eax, al                                 ; 08C8 _ 0F BE. C0
        and     eax, 02H                                ; 08CB _ 83. E0, 02
        test    eax, eax                                ; 08CE _ 85. C0
        jz      ?_051                                   ; 08D0 _ 74, 02
        jmp     ?_050                                   ; 08D2 _ EB, E7

?_051:  nop                                             ; 08D4 _ 90
        nop                                             ; 08D5 _ 90
        leave                                           ; 08D6 _ C9
        ret                                             ; 08D7 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 08D8 _ 55
        mov     ebp, esp                                ; 08D9 _ 89. E5
        sub     esp, 8                                  ; 08DB _ 83. EC, 08
        call    wait_KBC_sendready                      ; 08DE _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08E3 _ 83. EC, 08
        push    96                                      ; 08E6 _ 6A, 60
        push    100                                     ; 08E8 _ 6A, 64
        call    io_out8                                 ; 08EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08EF _ 83. C4, 10
        call    wait_KBC_sendready                      ; 08F2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08F7 _ 83. EC, 08
        push    71                                      ; 08FA _ 6A, 47
        push    96                                      ; 08FC _ 6A, 60
        call    io_out8                                 ; 08FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0903 _ 83. C4, 10
        nop                                             ; 0906 _ 90
        leave                                           ; 0907 _ C9
        ret                                             ; 0908 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0909 _ 55
        mov     ebp, esp                                ; 090A _ 89. E5
        sub     esp, 8                                  ; 090C _ 83. EC, 08
        call    wait_KBC_sendready                      ; 090F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0914 _ 83. EC, 08
        push    212                                     ; 0917 _ 68, 000000D4
        push    100                                     ; 091C _ 6A, 64
        call    io_out8                                 ; 091E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0923 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0926 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 092B _ 83. EC, 08
        push    244                                     ; 092E _ 68, 000000F4
        push    96                                      ; 0933 _ 6A, 60
        call    io_out8                                 ; 0935 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 093A _ 83. C4, 10
        nop                                             ; 093D _ 90
        leave                                           ; 093E _ C9
        ret                                             ; 093F _ C3
; enable_mouse End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0940 _ 55
        mov     ebp, esp                                ; 0941 _ 89. E5
        sub     esp, 24                                 ; 0943 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0946 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 094B _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 094E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0955 _ 98
        mov     dword [ebp-10H], eax                    ; 0956 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0959 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0960 _ 98
        mov     dword [ebp-0CH], eax                    ; 0961 _ 89. 45, F4
        sub     esp, 8                                  ; 0964 _ 83. EC, 08
        push    33                                      ; 0967 _ 6A, 21
        push    32                                      ; 0969 _ 6A, 20
        call    io_out8                                 ; 096B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0970 _ 83. C4, 10
        sub     esp, 12                                 ; 0973 _ 83. EC, 0C
        push    96                                      ; 0976 _ 6A, 60
        call    io_in8                                  ; 0978 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 097D _ 83. C4, 10
        sub     esp, 4                                  ; 0980 _ 83. EC, 04
        push    dword [ebp-10H]                         ; 0983 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0986 _ FF. 75, EC
        push    ?_057                                   ; 0989 _ 68, 00000000(d)
        call    Printf                                  ; 098E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0993 _ 83. C4, 10
        nop                                             ; 0996 _ 90
        leave                                           ; 0997 _ C9
        ret                                             ; 0998 _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 0999 _ 55
        mov     ebp, esp                                ; 099A _ 89. E5
        sub     esp, 24                                 ; 099C _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 099F _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 09A4 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 09A7 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 09AE _ 98
        mov     dword [ebp-10H], eax                    ; 09AF _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 09B2 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 09B9 _ 98
        mov     dword [ebp-0CH], eax                    ; 09BA _ 89. 45, F4
        sub     esp, 8                                  ; 09BD _ 83. EC, 08
        push    33                                      ; 09C0 _ 6A, 21
        push    32                                      ; 09C2 _ 6A, 20
        call    io_out8                                 ; 09C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09C9 _ 83. C4, 10
        sub     esp, 12                                 ; 09CC _ 83. EC, 0C
        push    96                                      ; 09CF _ 6A, 60
        call    io_in8                                  ; 09D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09D6 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 09D9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 09DC _ 0F B6. 45, EB
        sub     esp, 12                                 ; 09E0 _ 83. EC, 0C
        push    eax                                     ; 09E3 _ 50
        call    keybuf_w8                               ; 09E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09E9 _ 83. C4, 10
        nop                                             ; 09EC _ 90
        leave                                           ; 09ED _ C9
        ret                                             ; 09EE _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 09EF _ 55
        mov     ebp, esp                                ; 09F0 _ 89. E5
        sub     esp, 24                                 ; 09F2 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 09F5 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 09FA _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 09FD _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0A04 _ 98
        mov     dword [ebp-10H], eax                    ; 0A05 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0A08 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0A0F _ 98
        mov     dword [ebp-0CH], eax                    ; 0A10 _ 89. 45, F4
        sub     esp, 8                                  ; 0A13 _ 83. EC, 08
        push    32                                      ; 0A16 _ 6A, 20
        push    32                                      ; 0A18 _ 6A, 20
        call    io_out8                                 ; 0A1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A1F _ 83. C4, 10
        sub     esp, 8                                  ; 0A22 _ 83. EC, 08
        push    32                                      ; 0A25 _ 6A, 20
        push    160                                     ; 0A27 _ 68, 000000A0
        call    io_out8                                 ; 0A2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A31 _ 83. C4, 10
        sub     esp, 12                                 ; 0A34 _ 83. EC, 0C
        push    96                                      ; 0A37 _ 6A, 60
        call    io_in8                                  ; 0A39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A3E _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0A41 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0A44 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0A48 _ 83. EC, 08
        push    eax                                     ; 0A4B _ 50
        push    MOUSE_FIFO8                             ; 0A4C _ 68, 00000000(d)
        call    fifo8_w                                 ; 0A51 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A56 _ 83. C4, 10
        nop                                             ; 0A59 _ 90
        leave                                           ; 0A5A _ C9
        ret                                             ; 0A5B _ C3
; intHandlerFromC_mouse End of function

CMain:  ; Function begin
        push    ebp                                     ; 0A5C _ 55
        mov     ebp, esp                                ; 0A5D _ 89. E5
        sub     esp, 40                                 ; 0A5F _ 83. EC, 28
        call    pict_init                               ; 0A62 _ E8, FFFFFFFC(rel)
        call    keybuf_init                             ; 0A67 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0A6C _ 83. EC, 04
        push    128                                     ; 0A6F _ 68, 00000080
        push    mouse_buf                               ; 0A74 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 0A79 _ 68, 00000000(d)
        call    fifo8_init                              ; 0A7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A83 _ 83. C4, 10
        call    init_keyboard                           ; 0A86 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0A8B _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0A90 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0A95 _ A1, 00000000(d)
        mov     dword [ebp-1CH], eax                    ; 0A9A _ 89. 45, E4
        movzx   eax, word [bootInfo+4H]                 ; 0A9D _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AA4 _ 98
        mov     dword [ebp-18H], eax                    ; 0AA5 _ 89. 45, E8
        movzx   eax, word [bootInfo+6H]                 ; 0AA8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0AAF _ 98
        mov     dword [ebp-14H], eax                    ; 0AB0 _ 89. 45, EC
        sub     esp, 8                                  ; 0AB3 _ 83. EC, 08
        push    15                                      ; 0AB6 _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0AB8 _ FF. 75, E4
        call    fillAll                                 ; 0ABB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC0 _ 83. C4, 10
        sub     esp, 12                                 ; 0AC3 _ 83. EC, 0C
        push    cursor                                  ; 0AC6 _ 68, 00000000(d)
        push    20                                      ; 0ACB _ 6A, 14
        push    20                                      ; 0ACD _ 6A, 14
        push    dword [ebp-18H]                         ; 0ACF _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0AD2 _ FF. 75, E4
        call    PrintRGB                                ; 0AD5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0ADA _ 83. C4, 20
        sub     esp, 4                                  ; 0ADD _ 83. EC, 04
        push    dword [ebp-18H]                         ; 0AE0 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0AE3 _ FF. 75, E4
        push    ?_058                                   ; 0AE6 _ 68, 00000003(d)
        call    Printf                                  ; 0AEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF0 _ 83. C4, 10
?_052:  call    io_cli                                  ; 0AF3 _ E8, FFFFFFFC(rel)
        call    keybuf_isEmpty                          ; 0AF8 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0AFD _ 85. C0
        jz      ?_053                                   ; 0AFF _ 74, 07
        call    io_stihlt                               ; 0B01 _ E8, FFFFFFFC(rel)
        jmp     ?_054                                   ; 0B06 _ EB, 46

?_053:  call    io_sti                                  ; 0B08 _ E8, FFFFFFFC(rel)
        call    keybuf_r8                               ; 0B0D _ E8, FFFFFFFC(rel)
        movzx   eax, al                                 ; 0B12 _ 0F B6. C0
        sub     esp, 12                                 ; 0B15 _ 83. EC, 0C
        push    eax                                     ; 0B18 _ 50
        call    charToHexStr                            ; 0B19 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B1E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 0B21 _ 89. 45, F0
        sub     esp, 4                                  ; 0B24 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 0B27 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0B2A _ FF. 75, E4
        push    dword [ebp-10H]                         ; 0B2D _ FF. 75, F0
        call    Printf                                  ; 0B30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B35 _ 83. C4, 10
        sub     esp, 4                                  ; 0B38 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 0B3B _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0B3E _ FF. 75, E4
        push    ?_059                                   ; 0B41 _ 68, 0000000D(d)
        call    Printf                                  ; 0B46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B4B _ 83. C4, 10
?_054:  sub     esp, 12                                 ; 0B4E _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0B51 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0B56 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5B _ 83. C4, 10
        test    eax, eax                                ; 0B5E _ 85. C0
        jz      ?_055                                   ; 0B60 _ 74, 07
        call    io_stihlt                               ; 0B62 _ E8, FFFFFFFC(rel)
        jmp     ?_052                                   ; 0B67 _ EB, 8A

?_055:  call    io_sti                                  ; 0B69 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0B6E _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0B71 _ 68, 00000000(d)
        call    fifo8_r                                 ; 0B76 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B7B _ 83. C4, 10
        movzx   eax, al                                 ; 0B7E _ 0F B6. C0
        sub     esp, 12                                 ; 0B81 _ 83. EC, 0C
        push    eax                                     ; 0B84 _ 50
        call    charToHexStr                            ; 0B85 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B8A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0B8D _ 89. 45, F4
        sub     esp, 4                                  ; 0B90 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 0B93 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0B96 _ FF. 75, E4
        push    dword [ebp-0CH]                         ; 0B99 _ FF. 75, F4
        call    Printf                                  ; 0B9C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BA1 _ 83. C4, 10
        sub     esp, 4                                  ; 0BA4 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 0BA7 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0BAA _ FF. 75, E4
        push    ?_059                                   ; 0BAD _ 68, 0000000D(d)
        call    Printf                                  ; 0BB2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BB7 _ 83. C4, 10
        jmp     ?_052                                   ; 0BBA _ E9, FFFFFF34
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

pointerY: dd 00000014H                                  ; 01BC _ 20 




keybuf:                                                 ; byte
        resd    16                                      ; 0000

mouse_buf:                                              ; byte
        resb    128                                     ; 0040

MOUSE_FIFO8:                                            ; byte
        resb    20                                      ; 00C0

keystr.1624:                                            ; byte
        resb    1                                       ; 00D4

?_056:  resb    2                                       ; 00D5




?_057:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.

?_058:                                                  ; byte
        db 53H, 79H, 73H, 20H, 73H, 74H, 61H, 72H       ; 0003 _ Sys star
        db 74H, 00H                                     ; 000B _ t.

?_059:                                                  ; byte
        db 20H, 00H                                     ; 000D _  .


