; Disassembly of file: main.o
; Thu Nov  7 04:17:39 2019
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

intToHexStr:; Function begin
        push    ebp                                     ; 002D _ 55
        mov     ebp, esp                                ; 002E _ 89. E5
        sub     esp, 16                                 ; 0030 _ 83. EC, 10
        mov     dword [ebp-0CH], 2                      ; 0033 _ C7. 45, F4, 00000002
        jmp     ?_003                                   ; 003A _ EB, 0F

?_002:  mov     eax, dword [ebp-0CH]                    ; 003C _ 8B. 45, F4
        add     eax, str.1506                           ; 003F _ 05, 000001C8(d)
        mov     byte [eax], 48                          ; 0044 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0047 _ 83. 45, F4, 01
?_003:  cmp     dword [ebp-0CH], 9                      ; 004B _ 83. 7D, F4, 09
        jle     ?_002                                   ; 004F _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0051 _ C7. 45, F8, 00000009
        jmp     ?_007                                   ; 0058 _ EB, 42

?_004:  mov     eax, dword [ebp+8H]                     ; 005A _ 8B. 45, 08
        and     eax, 0FH                                ; 005D _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0060 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0063 _ 8B. 45, 08
        shr     eax, 4                                  ; 0066 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0069 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 006C _ 83. 7D, FC, 09
        jle     ?_005                                   ; 0070 _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 0072 _ 8B. 45, FC
        add     eax, 55                                 ; 0075 _ 83. C0, 37
        mov     edx, eax                                ; 0078 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 007A _ 8B. 45, F8
        add     eax, str.1506                           ; 007D _ 05, 000001C8(d)
        mov     byte [eax], dl                          ; 0082 _ 88. 10
        jmp     ?_006                                   ; 0084 _ EB, 12

?_005:  mov     eax, dword [ebp-4H]                     ; 0086 _ 8B. 45, FC
        add     eax, 48                                 ; 0089 _ 83. C0, 30
        mov     edx, eax                                ; 008C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 008E _ 8B. 45, F8
        add     eax, str.1506                           ; 0091 _ 05, 000001C8(d)
        mov     byte [eax], dl                          ; 0096 _ 88. 10
?_006:  sub     dword [ebp-8H], 1                       ; 0098 _ 83. 6D, F8, 01
?_007:  cmp     dword [ebp-8H], 1                       ; 009C _ 83. 7D, F8, 01
        jle     ?_008                                   ; 00A0 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 00A2 _ 83. 7D, 08, 00
        jnz     ?_004                                   ; 00A6 _ 75, B2
?_008:  mov     eax, str.1506                           ; 00A8 _ B8, 000001C8(d)
        leave                                           ; 00AD _ C9
        ret                                             ; 00AE _ C3
; intToHexStr End of function

fifo8_init:; Function begin
        push    ebp                                     ; 00AF _ 55
        mov     ebp, esp                                ; 00B0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 00B2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 00B5 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 00B8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 00BA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 00BD _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 00C0 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 00C3 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 00C6 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 00CD _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 00D0 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp+8H]                     ; 00D7 _ 8B. 45, 08
        mov     dword [eax+10H], 0                      ; 00DA _ C7. 40, 10, 00000000
        nop                                             ; 00E1 _ 90
        pop     ebp                                     ; 00E2 _ 5D
        ret                                             ; 00E3 _ C3
; fifo8_init End of function

fifo8_w:; Function begin
        push    ebp                                     ; 00E4 _ 55
        mov     ebp, esp                                ; 00E5 _ 89. E5
        sub     esp, 4                                  ; 00E7 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 00EA _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 00ED _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 00F0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 00F3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 00F5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 00F8 _ 8B. 40, 10
        add     edx, eax                                ; 00FB _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 00FD _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0101 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0103 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0106 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0109 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 010C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 010F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0112 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0115 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0118 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 011B _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 011E _ 8B. 48, 04
        mov     eax, edx                                ; 0121 _ 89. D0
        cdq                                             ; 0123 _ 99
        idiv    ecx                                     ; 0124 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 0126 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0129 _ 89. 50, 10
        nop                                             ; 012C _ 90
        leave                                           ; 012D _ C9
        ret                                             ; 012E _ C3
; fifo8_w End of function

fifo8_r:; Function begin
        push    ebp                                     ; 012F _ 55
        mov     ebp, esp                                ; 0130 _ 89. E5
        sub     esp, 16                                 ; 0132 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0135 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0138 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 013A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 013D _ 8B. 40, 0C
        add     eax, edx                                ; 0140 _ 01. D0
        movzx   eax, byte [eax]                         ; 0142 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0145 _ 88. 45, FF
        mov     eax, dword [ebp+8H]                     ; 0148 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 014B _ 8B. 40, 08
        lea     edx, [eax-1H]                           ; 014E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0151 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0154 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0157 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 015A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 015D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0160 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 0163 _ 8B. 48, 04
        mov     eax, edx                                ; 0166 _ 89. D0
        cdq                                             ; 0168 _ 99
        idiv    ecx                                     ; 0169 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 016B _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 016E _ 89. 50, 0C
        movzx   eax, byte [ebp-1H]                      ; 0171 _ 0F B6. 45, FF
        leave                                           ; 0175 _ C9
        ret                                             ; 0176 _ C3
; fifo8_r End of function

fifo8_isEmpty:; Function begin
        push    ebp                                     ; 0177 _ 55
        mov     ebp, esp                                ; 0178 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 017A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 017D _ 8B. 40, 08
        test    eax, eax                                ; 0180 _ 85. C0
        sete    al                                      ; 0182 _ 0F 94. C0
        movzx   eax, al                                 ; 0185 _ 0F B6. C0
        pop     ebp                                     ; 0188 _ 5D
        ret                                             ; 0189 _ C3
; fifo8_isEmpty End of function

fifo8_isFull:; Function begin
        push    ebp                                     ; 018A _ 55
        mov     ebp, esp                                ; 018B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 018D _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0190 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0193 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0196 _ 8B. 40, 04
        cmp     edx, eax                                ; 0199 _ 39. C2
        sete    al                                      ; 019B _ 0F 94. C0
        movzx   eax, al                                 ; 019E _ 0F B6. C0
        pop     ebp                                     ; 01A1 _ 5D
        ret                                             ; 01A2 _ C3
; fifo8_isFull End of function

set_pict:; Function begin
        push    ebp                                     ; 01A3 _ 55
        mov     ebp, esp                                ; 01A4 _ 89. E5
        sub     esp, 24                                 ; 01A6 _ 83. EC, 18
        call    io_load_eflags                          ; 01A9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 01AE _ 89. 45, F4
        call    io_cli                                  ; 01B1 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 01B6 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 01B9 _ FF. 75, 14
        push    968                                     ; 01BC _ 68, 000003C8
        call    io_out8                                 ; 01C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C6 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 01C9 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 01CC _ 89. 45, F0
        jmp     ?_010                                   ; 01CF _ EB, 65

?_009:  mov     eax, dword [ebp+10H]                    ; 01D1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 01D4 _ 0F B6. 00
        shr     al, 2                                   ; 01D7 _ C0. E8, 02
        movzx   eax, al                                 ; 01DA _ 0F B6. C0
        sub     esp, 8                                  ; 01DD _ 83. EC, 08
        push    eax                                     ; 01E0 _ 50
        push    969                                     ; 01E1 _ 68, 000003C9
        call    io_out8                                 ; 01E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01EB _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 01EE _ 8B. 45, 10
        add     eax, 1                                  ; 01F1 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 01F4 _ 0F B6. 00
        shr     al, 2                                   ; 01F7 _ C0. E8, 02
        movzx   eax, al                                 ; 01FA _ 0F B6. C0
        sub     esp, 8                                  ; 01FD _ 83. EC, 08
        push    eax                                     ; 0200 _ 50
        push    969                                     ; 0201 _ 68, 000003C9
        call    io_out8                                 ; 0206 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 020B _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 020E _ 8B. 45, 10
        add     eax, 2                                  ; 0211 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0214 _ 0F B6. 00
        shr     al, 2                                   ; 0217 _ C0. E8, 02
        movzx   eax, al                                 ; 021A _ 0F B6. C0
        sub     esp, 8                                  ; 021D _ 83. EC, 08
        push    eax                                     ; 0220 _ 50
        push    969                                     ; 0221 _ 68, 000003C9
        call    io_out8                                 ; 0226 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 022B _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 022E _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0232 _ 83. 45, F0, 01
?_010:  mov     eax, dword [ebp-10H]                    ; 0236 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0239 _ 3B. 45, 0C
        jl      ?_009                                   ; 023C _ 7C, 93
        sub     esp, 12                                 ; 023E _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0241 _ FF. 75, F4
        call    io_store_eflags                         ; 0244 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0249 _ 83. C4, 10
        nop                                             ; 024C _ 90
        leave                                           ; 024D _ C9
        ret                                             ; 024E _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 024F _ 55
        mov     ebp, esp                                ; 0250 _ 89. E5
        sub     esp, 8                                  ; 0252 _ 83. EC, 08
        push    0                                       ; 0255 _ 6A, 00
        push    pict                                    ; 0257 _ 68, 00000000(d)
        push    16                                      ; 025C _ 6A, 10
        push    0                                       ; 025E _ 6A, 00
        call    set_pict                                ; 0260 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0265 _ 83. C4, 10
        nop                                             ; 0268 _ 90
        leave                                           ; 0269 _ C9
        ret                                             ; 026A _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 026B _ 55
        mov     ebp, esp                                ; 026C _ 89. E5
        sub     esp, 20                                 ; 026E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0271 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0274 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0277 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 027A _ 89. 45, FC
        jmp     ?_014                                   ; 027D _ EB, 33

?_011:  mov     eax, dword [ebp+14H]                    ; 027F _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0282 _ 89. 45, F8
        jmp     ?_013                                   ; 0285 _ EB, 1F

?_012:  mov     eax, dword [ebp-4H]                     ; 0287 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 028A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 028E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0290 _ 8B. 45, F8
        add     eax, edx                                ; 0293 _ 01. D0
        mov     edx, eax                                ; 0295 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0297 _ 8B. 45, 08
        add     edx, eax                                ; 029A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 029C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02A0 _ 88. 02
        add     dword [ebp-8H], 1                       ; 02A2 _ 83. 45, F8, 01
?_013:  mov     eax, dword [ebp-8H]                     ; 02A6 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 02A9 _ 3B. 45, 1C
        jle     ?_012                                   ; 02AC _ 7E, D9
        add     dword [ebp-4H], 1                       ; 02AE _ 83. 45, FC, 01
?_014:  mov     eax, dword [ebp-4H]                     ; 02B2 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 02B5 _ 3B. 45, 20
        jle     ?_011                                   ; 02B8 _ 7E, C5
        nop                                             ; 02BA _ 90
        leave                                           ; 02BB _ C9
        ret                                             ; 02BC _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 02BD _ 55
        mov     ebp, esp                                ; 02BE _ 89. E5
        sub     esp, 20                                 ; 02C0 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 02C3 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 02C6 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 02C9 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 02CD _ 83. E8, 61
        shl     eax, 4                                  ; 02D0 _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 02D3 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 02D8 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 02DB _ 8B. 45, FC
        leave                                           ; 02DE _ C9
        ret                                             ; 02DF _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 02E0 _ 55
        mov     ebp, esp                                ; 02E1 _ 89. E5
        sub     esp, 20                                 ; 02E3 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 02E6 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 02E9 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 02EC _ 0F BE. 45, EC
        sub     eax, 48                                 ; 02F0 _ 83. E8, 30
        shl     eax, 4                                  ; 02F3 _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 02F6 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 02FB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 02FE _ 8B. 45, FC
        leave                                           ; 0301 _ C9
        ret                                             ; 0302 _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 0303 _ 55
        mov     ebp, esp                                ; 0304 _ 89. E5
        sub     esp, 20                                 ; 0306 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0309 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 030C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 030F _ C7. 45, FC, 00000000
        jmp     ?_024                                   ; 0316 _ E9, 0000016C

?_015:  mov     edx, dword [ebp-4H]                     ; 031B _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 031E _ 8B. 45, 1C
        add     eax, edx                                ; 0321 _ 01. D0
        movzx   eax, byte [eax]                         ; 0323 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0326 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0329 _ 80. 7D, FB, 00
        jns     ?_016                                   ; 032D _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 032F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0332 _ 8B. 45, FC
        add     eax, edx                                ; 0335 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0337 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 033B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 033D _ 8B. 45, 10
        add     eax, edx                                ; 0340 _ 01. D0
        mov     edx, eax                                ; 0342 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0344 _ 8B. 45, 08
        add     edx, eax                                ; 0347 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0349 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 034D _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 034F _ 0F BE. 45, FB
        and     eax, 40H                                ; 0353 _ 83. E0, 40
        test    eax, eax                                ; 0356 _ 85. C0
        jz      ?_017                                   ; 0358 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 035A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 035D _ 8B. 45, FC
        add     eax, edx                                ; 0360 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0362 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0366 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0368 _ 8B. 45, 10
        add     eax, edx                                ; 036B _ 01. D0
        lea     edx, [eax+1H]                           ; 036D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0370 _ 8B. 45, 08
        add     edx, eax                                ; 0373 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0375 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0379 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 037B _ 0F BE. 45, FB
        and     eax, 20H                                ; 037F _ 83. E0, 20
        test    eax, eax                                ; 0382 _ 85. C0
        jz      ?_018                                   ; 0384 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0386 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0389 _ 8B. 45, FC
        add     eax, edx                                ; 038C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 038E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0392 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0394 _ 8B. 45, 10
        add     eax, edx                                ; 0397 _ 01. D0
        lea     edx, [eax+2H]                           ; 0399 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 039C _ 8B. 45, 08
        add     edx, eax                                ; 039F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03A1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03A5 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 03A7 _ 0F BE. 45, FB
        and     eax, 10H                                ; 03AB _ 83. E0, 10
        test    eax, eax                                ; 03AE _ 85. C0
        jz      ?_019                                   ; 03B0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03B2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03B5 _ 8B. 45, FC
        add     eax, edx                                ; 03B8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03BA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03BE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03C0 _ 8B. 45, 10
        add     eax, edx                                ; 03C3 _ 01. D0
        lea     edx, [eax+3H]                           ; 03C5 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 03C8 _ 8B. 45, 08
        add     edx, eax                                ; 03CB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03CD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03D1 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 03D3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 03D7 _ 83. E0, 08
        test    eax, eax                                ; 03DA _ 85. C0
        jz      ?_020                                   ; 03DC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03DE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03E1 _ 8B. 45, FC
        add     eax, edx                                ; 03E4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03E6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03EA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03EC _ 8B. 45, 10
        add     eax, edx                                ; 03EF _ 01. D0
        lea     edx, [eax+4H]                           ; 03F1 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 03F4 _ 8B. 45, 08
        add     edx, eax                                ; 03F7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03F9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03FD _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 03FF _ 0F BE. 45, FB
        and     eax, 04H                                ; 0403 _ 83. E0, 04
        test    eax, eax                                ; 0406 _ 85. C0
        jz      ?_021                                   ; 0408 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 040A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 040D _ 8B. 45, FC
        add     eax, edx                                ; 0410 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0412 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0416 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0418 _ 8B. 45, 10
        add     eax, edx                                ; 041B _ 01. D0
        lea     edx, [eax+5H]                           ; 041D _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0420 _ 8B. 45, 08
        add     edx, eax                                ; 0423 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0425 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0429 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 042B _ 0F BE. 45, FB
        and     eax, 02H                                ; 042F _ 83. E0, 02
        test    eax, eax                                ; 0432 _ 85. C0
        jz      ?_022                                   ; 0434 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0436 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0439 _ 8B. 45, FC
        add     eax, edx                                ; 043C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 043E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0442 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0444 _ 8B. 45, 10
        add     eax, edx                                ; 0447 _ 01. D0
        lea     edx, [eax+6H]                           ; 0449 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 044C _ 8B. 45, 08
        add     edx, eax                                ; 044F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0451 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0455 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0457 _ 0F BE. 45, FB
        and     eax, 01H                                ; 045B _ 83. E0, 01
        test    eax, eax                                ; 045E _ 85. C0
        jz      ?_023                                   ; 0460 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0462 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0465 _ 8B. 45, FC
        add     eax, edx                                ; 0468 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 046A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 046E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0470 _ 8B. 45, 10
        add     eax, edx                                ; 0473 _ 01. D0
        lea     edx, [eax+7H]                           ; 0475 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0478 _ 8B. 45, 08
        add     edx, eax                                ; 047B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 047D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0481 _ 88. 02
?_023:  add     dword [ebp-4H], 1                       ; 0483 _ 83. 45, FC, 01
?_024:  cmp     dword [ebp-4H], 15                      ; 0487 _ 83. 7D, FC, 0F
        jle     ?_015                                   ; 048B _ 0F 8E, FFFFFE8A
        nop                                             ; 0491 _ 90
        leave                                           ; 0492 _ C9
        ret                                             ; 0493 _ C3
; showFont8 End of function

Print:  ; Function begin
        push    ebp                                     ; 0494 _ 55
        mov     ebp, esp                                ; 0495 _ 89. E5
        push    ebx                                     ; 0497 _ 53
        sub     esp, 16                                 ; 0498 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 049B _ C7. 45, F8, 00000000
        jmp     ?_030                                   ; 04A2 _ E9, 0000011C

?_025:  mov     edx, dword [ebp-8H]                     ; 04A7 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 04AA _ 8B. 45, 24
        add     eax, edx                                ; 04AD _ 01. D0
        movzx   eax, byte [eax]                         ; 04AF _ 0F B6. 00
        mov     byte [ebp-9H], al                       ; 04B2 _ 88. 45, F7
        cmp     byte [ebp-9H], 57                       ; 04B5 _ 80. 7D, F7, 39
        jg      ?_026                                   ; 04B9 _ 7F, 42
        cmp     byte [ebp-9H], 47                       ; 04BB _ 80. 7D, F7, 2F
        jle     ?_026                                   ; 04BF _ 7E, 3C
        movsx   eax, byte [ebp-9H]                      ; 04C1 _ 0F BE. 45, F7
        push    eax                                     ; 04C5 _ 50
        call    getAddrOffsetNumber                     ; 04C6 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 04CB _ 83. C4, 04
        mov     ebx, eax                                ; 04CE _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 04D0 _ 8B. 45, 20
        movsx   eax, al                                 ; 04D3 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 04D6 _ 8B. 55, 18
        mov     ecx, edx                                ; 04D9 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 04DB _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 04DF _ 8B. 55, 10
        add     edx, ecx                                ; 04E2 _ 01. CA
        push    ebx                                     ; 04E4 _ 53
        push    eax                                     ; 04E5 _ 50
        push    dword [ebp+14H]                         ; 04E6 _ FF. 75, 14
        push    edx                                     ; 04E9 _ 52
        push    dword [ebp+0CH]                         ; 04EA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04ED _ FF. 75, 08
        call    showFont8                               ; 04F0 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 04F5 _ 83. C4, 18
        jmp     ?_029                                   ; 04F8 _ E9, 000000C2

?_026:  cmp     byte [ebp-9H], 122                      ; 04FD _ 80. 7D, F7, 7A
        jg      ?_027                                   ; 0501 _ 7F, 3F
        cmp     byte [ebp-9H], 96                       ; 0503 _ 80. 7D, F7, 60
        jle     ?_027                                   ; 0507 _ 7E, 39
        movsx   eax, byte [ebp-9H]                      ; 0509 _ 0F BE. 45, F7
        push    eax                                     ; 050D _ 50
        call    getAddrOffsetAlpha                      ; 050E _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0513 _ 83. C4, 04
        mov     ebx, eax                                ; 0516 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 0518 _ 8B. 45, 20
        movsx   eax, al                                 ; 051B _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 051E _ 8B. 55, 18
        mov     ecx, edx                                ; 0521 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0523 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 0527 _ 8B. 55, 10
        add     edx, ecx                                ; 052A _ 01. CA
        push    ebx                                     ; 052C _ 53
        push    eax                                     ; 052D _ 50
        push    dword [ebp+14H]                         ; 052E _ FF. 75, 14
        push    edx                                     ; 0531 _ 52
        push    dword [ebp+0CH]                         ; 0532 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0535 _ FF. 75, 08
        call    showFont8                               ; 0538 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 053D _ 83. C4, 18
        jmp     ?_029                                   ; 0540 _ EB, 7D

?_027:  cmp     byte [ebp-9H], 90                       ; 0542 _ 80. 7D, F7, 5A
        jg      ?_028                                   ; 0546 _ 7F, 45
        cmp     byte [ebp-9H], 64                       ; 0548 _ 80. 7D, F7, 40
        jle     ?_028                                   ; 054C _ 7E, 3F
        movzx   eax, byte [ebp-9H]                      ; 054E _ 0F B6. 45, F7
        add     eax, 32                                 ; 0552 _ 83. C0, 20
        movsx   eax, al                                 ; 0555 _ 0F BE. C0
        push    eax                                     ; 0558 _ 50
        call    getAddrOffsetAlpha                      ; 0559 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 055E _ 83. C4, 04
        mov     ebx, eax                                ; 0561 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 0563 _ 8B. 45, 20
        movsx   eax, al                                 ; 0566 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0569 _ 8B. 55, 18
        mov     ecx, edx                                ; 056C _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 056E _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 0572 _ 8B. 55, 10
        add     edx, ecx                                ; 0575 _ 01. CA
        push    ebx                                     ; 0577 _ 53
        push    eax                                     ; 0578 _ 50
        push    dword [ebp+14H]                         ; 0579 _ FF. 75, 14
        push    edx                                     ; 057C _ 52
        push    dword [ebp+0CH]                         ; 057D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0580 _ FF. 75, 08
        call    showFont8                               ; 0583 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0588 _ 83. C4, 18
        jmp     ?_029                                   ; 058B _ EB, 32

?_028:  cmp     byte [ebp-9H], 32                       ; 058D _ 80. 7D, F7, 20
        jnz     ?_029                                   ; 0591 _ 75, 2C
        mov     eax, dword [ebp+20H]                    ; 0593 _ 8B. 45, 20
        movsx   eax, al                                 ; 0596 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0599 _ 8B. 55, 18
        mov     ecx, edx                                ; 059C _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 059E _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 05A2 _ 8B. 55, 10
        add     edx, ecx                                ; 05A5 _ 01. CA
        push    vsFont_EMPTY                            ; 05A7 _ 68, 00000000(d)
        push    eax                                     ; 05AC _ 50
        push    dword [ebp+14H]                         ; 05AD _ FF. 75, 14
        push    edx                                     ; 05B0 _ 52
        push    dword [ebp+0CH]                         ; 05B1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05B4 _ FF. 75, 08
        call    showFont8                               ; 05B7 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05BC _ 83. C4, 18
?_029:  add     dword [ebp-8H], 1                       ; 05BF _ 83. 45, F8, 01
?_030:  mov     edx, dword [ebp-8H]                     ; 05C3 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 05C6 _ 8B. 45, 24
        add     eax, edx                                ; 05C9 _ 01. D0
        movzx   eax, byte [eax]                         ; 05CB _ 0F B6. 00
        test    al, al                                  ; 05CE _ 84. C0
        jne     ?_025                                   ; 05D0 _ 0F 85, FFFFFED1
        nop                                             ; 05D6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 05D7 _ 8B. 5D, FC
        leave                                           ; 05DA _ C9
        ret                                             ; 05DB _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 05DC _ 55
        mov     ebp, esp                                ; 05DD _ 89. E5
        sub     esp, 4                                  ; 05DF _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 05E2 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 05E5 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 05E8 _ 80. 7D, FC, 2A
        jnz     ?_031                                   ; 05EC _ 75, 0A
        mov     eax, 0                                  ; 05EE _ B8, 00000000
        jmp     ?_046                                   ; 05F3 _ E9, 000000D2

?_031:  cmp     byte [ebp-4H], 114                      ; 05F8 _ 80. 7D, FC, 72
        jnz     ?_032                                   ; 05FC _ 75, 0A
        mov     eax, 1                                  ; 05FE _ B8, 00000001
        jmp     ?_046                                   ; 0603 _ E9, 000000C2

?_032:  cmp     byte [ebp-4H], 103                      ; 0608 _ 80. 7D, FC, 67
        jnz     ?_033                                   ; 060C _ 75, 0A
        mov     eax, 2                                  ; 060E _ B8, 00000002
        jmp     ?_046                                   ; 0613 _ E9, 000000B2

?_033:  cmp     byte [ebp-4H], 121                      ; 0618 _ 80. 7D, FC, 79
        jnz     ?_034                                   ; 061C _ 75, 0A
        mov     eax, 3                                  ; 061E _ B8, 00000003
        jmp     ?_046                                   ; 0623 _ E9, 000000A2

?_034:  cmp     byte [ebp-4H], 98                       ; 0628 _ 80. 7D, FC, 62
        jnz     ?_035                                   ; 062C _ 75, 0A
        mov     eax, 4                                  ; 062E _ B8, 00000004
        jmp     ?_046                                   ; 0633 _ E9, 00000092

?_035:  cmp     byte [ebp-4H], 112                      ; 0638 _ 80. 7D, FC, 70
        jnz     ?_036                                   ; 063C _ 75, 0A
        mov     eax, 5                                  ; 063E _ B8, 00000005
        jmp     ?_046                                   ; 0643 _ E9, 00000082

?_036:  cmp     byte [ebp-4H], 108                      ; 0648 _ 80. 7D, FC, 6C
        jnz     ?_037                                   ; 064C _ 75, 07
        mov     eax, 6                                  ; 064E _ B8, 00000006
        jmp     ?_046                                   ; 0653 _ EB, 75

?_037:  cmp     byte [ebp-4H], 119                      ; 0655 _ 80. 7D, FC, 77
        jnz     ?_038                                   ; 0659 _ 75, 07
        mov     eax, 7                                  ; 065B _ B8, 00000007
        jmp     ?_046                                   ; 0660 _ EB, 68

?_038:  cmp     byte [ebp-4H], 45                       ; 0662 _ 80. 7D, FC, 2D
        jnz     ?_039                                   ; 0666 _ 75, 07
        mov     eax, 8                                  ; 0668 _ B8, 00000008
        jmp     ?_046                                   ; 066D _ EB, 5B

?_039:  cmp     byte [ebp-4H], 82                       ; 066F _ 80. 7D, FC, 52
        jnz     ?_040                                   ; 0673 _ 75, 07
        mov     eax, 9                                  ; 0675 _ B8, 00000009
        jmp     ?_046                                   ; 067A _ EB, 4E

?_040:  cmp     byte [ebp-4H], 71                       ; 067C _ 80. 7D, FC, 47
        jnz     ?_041                                   ; 0680 _ 75, 07
        mov     eax, 10                                 ; 0682 _ B8, 0000000A
        jmp     ?_046                                   ; 0687 _ EB, 41

?_041:  cmp     byte [ebp-4H], 89                       ; 0689 _ 80. 7D, FC, 59
        jnz     ?_042                                   ; 068D _ 75, 07
        mov     eax, 11                                 ; 068F _ B8, 0000000B
        jmp     ?_046                                   ; 0694 _ EB, 34

?_042:  cmp     byte [ebp-4H], 66                       ; 0696 _ 80. 7D, FC, 42
        jnz     ?_043                                   ; 069A _ 75, 07
        mov     eax, 12                                 ; 069C _ B8, 0000000C
        jmp     ?_046                                   ; 06A1 _ EB, 27

?_043:  cmp     byte [ebp-4H], 80                       ; 06A3 _ 80. 7D, FC, 50
        jnz     ?_044                                   ; 06A7 _ 75, 07
        mov     eax, 13                                 ; 06A9 _ B8, 0000000D
        jmp     ?_046                                   ; 06AE _ EB, 1A

?_044:  cmp     byte [ebp-4H], 115                      ; 06B0 _ 80. 7D, FC, 73
        jnz     ?_045                                   ; 06B4 _ 75, 07
        mov     eax, 14                                 ; 06B6 _ B8, 0000000E
        jmp     ?_046                                   ; 06BB _ EB, 0D

?_045:  cmp     byte [ebp-4H], 61                       ; 06BD _ 80. 7D, FC, 3D
        jnz     ?_046                                   ; 06C1 _ 75, 07
        mov     eax, 15                                 ; 06C3 _ B8, 0000000F
        jmp     ?_046                                   ; 06C8 _ EB, 00

?_046:  leave                                           ; 06CA _ C9
        ret                                             ; 06CB _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 06CC _ 55
        mov     ebp, esp                                ; 06CD _ 89. E5
        push    ebx                                     ; 06CF _ 53
        sub     esp, 16                                 ; 06D0 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 06D3 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 06DA _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 06E1 _ C7. 45, F8, 00000000
?_047:  mov     edx, dword [ebp-8H]                     ; 06E8 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 06EB _ 8B. 45, 18
        add     eax, edx                                ; 06EE _ 01. D0
        movzx   eax, byte [eax]                         ; 06F0 _ 0F B6. 00
        test    al, al                                  ; 06F3 _ 84. C0
        jnz     ?_048                                   ; 06F5 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 06F7 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 06FA _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 06FD _ 8B. 45, 18
        add     eax, edx                                ; 0700 _ 01. D0
        movzx   eax, byte [eax]                         ; 0702 _ 0F B6. 00
        test    al, al                                  ; 0705 _ 84. C0
        jz      ?_051                                   ; 0707 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0709 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 070D _ C7. 45, F4, 00000000
        jmp     ?_050                                   ; 0714 _ EB, 4C

?_048:  mov     edx, dword [ebp-8H]                     ; 0716 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0719 _ 8B. 45, 18
        add     eax, edx                                ; 071C _ 01. D0
        movzx   eax, byte [eax]                         ; 071E _ 0F B6. 00
        cmp     al, 46                                  ; 0721 _ 3C, 2E
        jz      ?_049                                   ; 0723 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0725 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 0728 _ 8B. 45, F0
        add     eax, edx                                ; 072B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 072D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0731 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0733 _ 8B. 45, 10
        add     edx, eax                                ; 0736 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 0738 _ 8B. 45, F4
        add     eax, edx                                ; 073B _ 01. D0
        mov     edx, eax                                ; 073D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 073F _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0742 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0745 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0748 _ 8B. 45, 18
        add     eax, edx                                ; 074B _ 01. D0
        movzx   eax, byte [eax]                         ; 074D _ 0F B6. 00
        movsx   eax, al                                 ; 0750 _ 0F BE. C0
        push    eax                                     ; 0753 _ 50
        call    charToPictColor                         ; 0754 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0759 _ 83. C4, 04
        mov     byte [ebx], al                          ; 075C _ 88. 03
?_049:  add     dword [ebp-0CH], 1                      ; 075E _ 83. 45, F4, 01
?_050:  add     dword [ebp-8H], 1                       ; 0762 _ 83. 45, F8, 01
        jmp     ?_047                                   ; 0766 _ EB, 80

?_051:  nop                                             ; 0768 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0769 _ 8B. 5D, FC
        leave                                           ; 076C _ C9
        ret                                             ; 076D _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 076E _ 55
        mov     ebp, esp                                ; 076F _ 89. E5
        sub     esp, 16                                 ; 0771 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0774 _ C7. 45, FC, 00000000
        jmp     ?_053                                   ; 077B _ EB, 11

?_052:  mov     edx, dword [ebp-4H]                     ; 077D _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0780 _ 8B. 45, 08
        add     eax, edx                                ; 0783 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0785 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0788 _ 88. 10
        add     dword [ebp-4H], 1                       ; 078A _ 83. 45, FC, 01
?_053:  cmp     dword [ebp-4H], 65534                   ; 078E _ 81. 7D, FC, 0000FFFE
        jle     ?_052                                   ; 0795 _ 7E, E6
        nop                                             ; 0797 _ 90
        leave                                           ; 0798 _ C9
        ret                                             ; 0799 _ C3
; fillAll End of function

Printf: ; Function begin
        push    ebp                                     ; 079A _ 55
        mov     ebp, esp                                ; 079B _ 89. E5
        push    ebx                                     ; 079D _ 53
        sub     esp, 16                                 ; 079E _ 83. EC, 10
        push    dword [ebp+8H]                          ; 07A1 _ FF. 75, 08
        call    strlen                                  ; 07A4 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 07A9 _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 07AC _ 89. 45, F8
        mov     ebx, dword [height]                     ; 07AF _ 8B. 1D, 00000000(d)
        mov     ecx, dword [width]                      ; 07B5 _ 8B. 0D, 00000000(d)
        mov     edx, dword [pointerY]                   ; 07BB _ 8B. 15, 00000000(d)
        mov     eax, dword [pointerX]                   ; 07C1 _ A1, 00000000(d)
        push    dword [ebp+8H]                          ; 07C6 _ FF. 75, 08
        push    7                                       ; 07C9 _ 6A, 07
        push    ebx                                     ; 07CB _ 53
        push    ecx                                     ; 07CC _ 51
        push    edx                                     ; 07CD _ 52
        push    eax                                     ; 07CE _ 50
        push    dword [ebp+10H]                         ; 07CF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 07D2 _ FF. 75, 0C
        call    Print                                   ; 07D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07DA _ 83. C4, 20
        mov     eax, dword [width]                      ; 07DD _ A1, 00000000(d)
        imul    eax, dword [ebp-8H]                     ; 07E2 _ 0F AF. 45, F8
        mov     edx, eax                                ; 07E6 _ 89. C2
        mov     eax, dword [pointerX]                   ; 07E8 _ A1, 00000000(d)
        add     eax, edx                                ; 07ED _ 01. D0
        mov     dword [pointerX], eax                   ; 07EF _ A3, 00000000(d)
        mov     eax, dword [ebp+10H]                    ; 07F4 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 07F7 _ 8D. 50, EC
        mov     eax, dword [pointerX]                   ; 07FA _ A1, 00000000(d)
        cmp     edx, eax                                ; 07FF _ 39. C2
        jg      ?_054                                   ; 0801 _ 7F, 2B
        mov     dword [pointerX], 20                    ; 0803 _ C7. 05, 00000000(d), 00000014
        mov     eax, dword [pointerY]                   ; 080D _ A1, 00000000(d)
        add     eax, 16                                 ; 0812 _ 83. C0, 10
        mov     dword [pointerY], eax                   ; 0815 _ A3, 00000000(d)
        mov     eax, dword [pointerY]                   ; 081A _ A1, 00000000(d)
        cmp     eax, dword [ebp+14H]                    ; 081F _ 3B. 45, 14
        jl      ?_054                                   ; 0822 _ 7C, 0A
        mov     dword [pointerY], 18                    ; 0824 _ C7. 05, 00000000(d), 00000012
?_054:  nop                                             ; 082E _ 90
        mov     ebx, dword [ebp-4H]                     ; 082F _ 8B. 5D, FC
        leave                                           ; 0832 _ C9
        ret                                             ; 0833 _ C3
; Printf End of function

charToHex:; Function begin
        push    ebp                                     ; 0834 _ 55
        mov     ebp, esp                                ; 0835 _ 89. E5
        sub     esp, 4                                  ; 0837 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 083A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 083D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0840 _ 80. 7D, FC, 09
        jle     ?_055                                   ; 0844 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0846 _ 0F B6. 45, FC
        add     eax, 87                                 ; 084A _ 83. C0, 57
        jmp     ?_056                                   ; 084D _ EB, 07

?_055:  movzx   eax, byte [ebp-4H]                      ; 084F _ 0F B6. 45, FC
        add     eax, 48                                 ; 0853 _ 83. C0, 30
?_056:  leave                                           ; 0856 _ C9
        ret                                             ; 0857 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0858 _ 55
        mov     ebp, esp                                ; 0859 _ 89. E5
        sub     esp, 4                                  ; 085B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 085E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0861 _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 0864 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0868 _ 0F BE. C0
        and     eax, 0FH                                ; 086B _ 83. E0, 0F
        push    eax                                     ; 086E _ 50
        call    charToHex                               ; 086F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0874 _ 83. C4, 04
        mov     byte [?_076], al                        ; 0877 _ A2, 000001B9(d)
        shr     byte [ebp-4H], 4                        ; 087C _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 0880 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0884 _ 0F BE. C0
        and     eax, 0FH                                ; 0887 _ 83. E0, 0F
        push    eax                                     ; 088A _ 50
        call    charToHex                               ; 088B _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0890 _ 83. C4, 04
        mov     byte [keystr.1664], al                  ; 0893 _ A2, 000001B8(d)
        mov     eax, keystr.1664                        ; 0898 _ B8, 000001B8(d)
        leave                                           ; 089D _ C9
        ret                                             ; 089E _ C3
; charToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 089F _ 55
        mov     ebp, esp                                ; 08A0 _ 89. E5
        sub     esp, 8                                  ; 08A2 _ 83. EC, 08
?_057:  sub     esp, 12                                 ; 08A5 _ 83. EC, 0C
        push    100                                     ; 08A8 _ 6A, 64
        call    io_in8                                  ; 08AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08AF _ 83. C4, 10
        movsx   eax, al                                 ; 08B2 _ 0F BE. C0
        and     eax, 02H                                ; 08B5 _ 83. E0, 02
        test    eax, eax                                ; 08B8 _ 85. C0
        jz      ?_058                                   ; 08BA _ 74, 02
        jmp     ?_057                                   ; 08BC _ EB, E7

?_058:  nop                                             ; 08BE _ 90
        nop                                             ; 08BF _ 90
        leave                                           ; 08C0 _ C9
        ret                                             ; 08C1 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 08C2 _ 55
        mov     ebp, esp                                ; 08C3 _ 89. E5
        sub     esp, 8                                  ; 08C5 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 08C8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08CD _ 83. EC, 08
        push    96                                      ; 08D0 _ 6A, 60
        push    100                                     ; 08D2 _ 6A, 64
        call    io_out8                                 ; 08D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08D9 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 08DC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08E1 _ 83. EC, 08
        push    71                                      ; 08E4 _ 6A, 47
        push    96                                      ; 08E6 _ 6A, 60
        call    io_out8                                 ; 08E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08ED _ 83. C4, 10
        nop                                             ; 08F0 _ 90
        leave                                           ; 08F1 _ C9
        ret                                             ; 08F2 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 08F3 _ 55
        mov     ebp, esp                                ; 08F4 _ 89. E5
        sub     esp, 8                                  ; 08F6 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 08F9 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08FE _ 83. EC, 08
        push    212                                     ; 0901 _ 68, 000000D4
        push    100                                     ; 0906 _ 6A, 64
        call    io_out8                                 ; 0908 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 090D _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0910 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0915 _ 83. EC, 08
        push    244                                     ; 0918 _ 68, 000000F4
        push    96                                      ; 091D _ 6A, 60
        call    io_out8                                 ; 091F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0924 _ 83. C4, 10
        nop                                             ; 0927 _ 90
        leave                                           ; 0928 _ C9
        ret                                             ; 0929 _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 092A _ 55
        mov     ebp, esp                                ; 092B _ 89. E5
        sub     esp, 4                                  ; 092D _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0930 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0933 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0936 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0939 _ 0F B6. 40, 03
        test    al, al                                  ; 093D _ 84. C0
        jnz     ?_060                                   ; 093F _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0941 _ 80. 7D, FC, FA
        jnz     ?_059                                   ; 0945 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0947 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 094A _ C6. 40, 03, 01
?_059:  mov     eax, 0                                  ; 094E _ B8, 00000000
        jmp     ?_067                                   ; 0953 _ E9, 0000010F

?_060:  mov     eax, dword [ebp+8H]                     ; 0958 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 095B _ 0F B6. 40, 03
        cmp     al, 1                                   ; 095F _ 3C, 01
        jnz     ?_062                                   ; 0961 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0963 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0967 _ 25, 000000C8
        cmp     eax, 8                                  ; 096C _ 83. F8, 08
        jnz     ?_061                                   ; 096F _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0971 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0974 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0978 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 097A _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 097D _ C6. 40, 03, 02
?_061:  mov     eax, 0                                  ; 0981 _ B8, 00000000
        jmp     ?_067                                   ; 0986 _ E9, 000000DC

?_062:  mov     eax, dword [ebp+8H]                     ; 098B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 098E _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0992 _ 3C, 02
        jnz     ?_063                                   ; 0994 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0996 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0999 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 099D _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 09A0 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 09A3 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 09A7 _ B8, 00000000
        jmp     ?_067                                   ; 09AC _ E9, 000000B6

?_063:  mov     eax, dword [ebp+8H]                     ; 09B1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 09B4 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 09B8 _ 3C, 03
        jne     ?_066                                   ; 09BA _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 09C0 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 09C3 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 09C7 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 09CA _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 09CD _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 09D1 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 09D4 _ 0F B6. 00
        movzx   eax, al                                 ; 09D7 _ 0F B6. C0
        and     eax, 07H                                ; 09DA _ 83. E0, 07
        mov     edx, eax                                ; 09DD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09DF _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 09E2 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 09E5 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 09E8 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 09EC _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 09EF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 09F2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 09F5 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 09F8 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 09FC _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 09FF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A02 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0A05 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0A08 _ 0F B6. 00
        movzx   eax, al                                 ; 0A0B _ 0F B6. C0
        and     eax, 10H                                ; 0A0E _ 83. E0, 10
        test    eax, eax                                ; 0A11 _ 85. C0
        jz      ?_064                                   ; 0A13 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0A15 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0A18 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0A1B _ 0D, FFFFFF00
        mov     edx, eax                                ; 0A20 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A22 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0A25 _ 89. 50, 04
?_064:  mov     eax, dword [ebp+8H]                     ; 0A28 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0A2B _ 0F B6. 00
        movzx   eax, al                                 ; 0A2E _ 0F B6. C0
        and     eax, 20H                                ; 0A31 _ 83. E0, 20
        test    eax, eax                                ; 0A34 _ 85. C0
        jz      ?_065                                   ; 0A36 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A3B _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0A3E _ 0D, FFFFFF00
        mov     edx, eax                                ; 0A43 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A45 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A48 _ 89. 50, 08
?_065:  mov     eax, dword [ebp+8H]                     ; 0A4B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A4E _ 8B. 40, 08
        neg     eax                                     ; 0A51 _ F7. D8
        mov     edx, eax                                ; 0A53 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A55 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A58 _ 89. 50, 08
        mov     eax, 1                                  ; 0A5B _ B8, 00000001
        jmp     ?_067                                   ; 0A60 _ EB, 05

?_066:  mov     eax, 4294967295                         ; 0A62 _ B8, FFFFFFFF
?_067:  leave                                           ; 0A67 _ C9
        ret                                             ; 0A68 _ C3
; mouse_decode End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0A69 _ 55
        mov     ebp, esp                                ; 0A6A _ 89. E5
        sub     esp, 24                                 ; 0A6C _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0A6F _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0A74 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0A77 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0A7E _ 98
        mov     dword [ebp-10H], eax                    ; 0A7F _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0A82 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0A89 _ 98
        mov     dword [ebp-0CH], eax                    ; 0A8A _ 89. 45, F4
        sub     esp, 8                                  ; 0A8D _ 83. EC, 08
        push    33                                      ; 0A90 _ 6A, 21
        push    32                                      ; 0A92 _ 6A, 20
        call    io_out8                                 ; 0A94 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A99 _ 83. C4, 10
        sub     esp, 12                                 ; 0A9C _ 83. EC, 0C
        push    96                                      ; 0A9F _ 6A, 60
        call    io_in8                                  ; 0AA1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA6 _ 83. C4, 10
        push    dword [ebp-0CH]                         ; 0AA9 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 0AAC _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0AAF _ FF. 75, EC
        push    ?_077                                   ; 0AB2 _ 68, 00000000(d)
        call    Printf                                  ; 0AB7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ABC _ 83. C4, 10
        nop                                             ; 0ABF _ 90
        leave                                           ; 0AC0 _ C9
        ret                                             ; 0AC1 _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 0AC2 _ 55
        mov     ebp, esp                                ; 0AC3 _ 89. E5
        sub     esp, 24                                 ; 0AC5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AC8 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0ACD _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0AD0 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AD7 _ 98
        mov     dword [ebp-10H], eax                    ; 0AD8 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0ADB _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0AE2 _ 98
        mov     dword [ebp-0CH], eax                    ; 0AE3 _ 89. 45, F4
        sub     esp, 8                                  ; 0AE6 _ 83. EC, 08
        push    33                                      ; 0AE9 _ 6A, 21
        push    32                                      ; 0AEB _ 6A, 20
        call    io_out8                                 ; 0AED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF2 _ 83. C4, 10
        sub     esp, 12                                 ; 0AF5 _ 83. EC, 0C
        push    96                                      ; 0AF8 _ 6A, 60
        call    io_in8                                  ; 0AFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AFF _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B02 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B05 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B09 _ 83. EC, 08
        push    eax                                     ; 0B0C _ 50
        push    KEY_FIFO8                               ; 0B0D _ 68, 00000000(d)
        call    fifo8_w                                 ; 0B12 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B17 _ 83. C4, 10
        nop                                             ; 0B1A _ 90
        leave                                           ; 0B1B _ C9
        ret                                             ; 0B1C _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 0B1D _ 55
        mov     ebp, esp                                ; 0B1E _ 89. E5
        sub     esp, 24                                 ; 0B20 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B23 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B28 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0B2B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B32 _ 98
        mov     dword [ebp-10H], eax                    ; 0B33 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0B36 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B3D _ 98
        mov     dword [ebp-0CH], eax                    ; 0B3E _ 89. 45, F4
        sub     esp, 8                                  ; 0B41 _ 83. EC, 08
        push    32                                      ; 0B44 _ 6A, 20
        push    160                                     ; 0B46 _ 68, 000000A0
        call    io_out8                                 ; 0B4B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B50 _ 83. C4, 10
        sub     esp, 8                                  ; 0B53 _ 83. EC, 08
        push    32                                      ; 0B56 _ 6A, 20
        push    32                                      ; 0B58 _ 6A, 20
        call    io_out8                                 ; 0B5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5F _ 83. C4, 10
        sub     esp, 12                                 ; 0B62 _ 83. EC, 0C
        push    96                                      ; 0B65 _ 6A, 60
        call    io_in8                                  ; 0B67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B6C _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B6F _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B72 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B76 _ 83. EC, 08
        push    eax                                     ; 0B79 _ 50
        push    MOUSE_FIFO8                             ; 0B7A _ 68, 00000000(d)
        call    fifo8_w                                 ; 0B7F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B84 _ 83. C4, 10
        nop                                             ; 0B87 _ 90
        leave                                           ; 0B88 _ C9
        ret                                             ; 0B89 _ C3
; intHandlerFromC_mouse End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0B8A _ 55
        mov     ebp, esp                                ; 0B8B _ 89. E5
        push    ebx                                     ; 0B8D _ 53
        mov     eax, dword [ebp+10H]                    ; 0B8E _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0B91 _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0B94 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0B97 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0B9A _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0B9C _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0B9F _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0BA2 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0BA5 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0BA8 _ 8B. 00
        push    ebx                                     ; 0BAA _ 53
        push    ecx                                     ; 0BAB _ 51
        push    edx                                     ; 0BAC _ 52
        push    eax                                     ; 0BAD _ 50
        push    15                                      ; 0BAE _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0BB0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BB3 _ FF. 75, 08
        call    boxfill8                                ; 0BB6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0BBB _ 83. C4, 1C
        nop                                             ; 0BBE _ 90
        mov     ebx, dword [ebp-4H]                     ; 0BBF _ 8B. 5D, FC
        leave                                           ; 0BC2 _ C9
        ret                                             ; 0BC3 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0BC4 _ 55
        mov     ebp, esp                                ; 0BC5 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0BC7 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0BCA _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0BCD _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0BD0 _ 8B. 00
        push    cursor                                  ; 0BD2 _ 68, 00000000(d)
        push    edx                                     ; 0BD7 _ 52
        push    eax                                     ; 0BD8 _ 50
        push    dword [ebp+0CH]                         ; 0BD9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BDC _ FF. 75, 08
        call    PrintRGB                                ; 0BDF _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0BE4 _ 83. C4, 14
        nop                                             ; 0BE7 _ 90
        leave                                           ; 0BE8 _ C9
        ret                                             ; 0BE9 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0BEA _ 55
        mov     ebp, esp                                ; 0BEB _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0BED _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0BF3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0BF6 _ 8B. 40, 04
        add     eax, edx                                ; 0BF9 _ 01. D0
        mov     dword [cur_pos], eax                    ; 0BFB _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0C00 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0C06 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C09 _ 8B. 40, 08
        add     eax, edx                                ; 0C0C _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0C0E _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0C13 _ A1, 00000000(d)
        test    eax, eax                                ; 0C18 _ 85. C0
        jns     ?_068                                   ; 0C1A _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0C1C _ C7. 05, 00000000(d), 00000000
?_068:  mov     eax, dword [cur_pos+4H]                 ; 0C26 _ A1, 00000004(d)
        test    eax, eax                                ; 0C2B _ 85. C0
        jns     ?_069                                   ; 0C2D _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0C2F _ C7. 05, 00000004(d), 00000000
?_069:  mov     eax, dword [cur_pos]                    ; 0C39 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0C3E _ 3B. 45, 0C
        jle     ?_070                                   ; 0C41 _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0C43 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0C46 _ A3, 00000000(d)
?_070:  mov     eax, dword [cur_pos+4H]                 ; 0C4B _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0C50 _ 3B. 45, 10
        jle     ?_071                                   ; 0C53 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0C55 _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0C58 _ A3, 00000004(d)
?_071:  nop                                             ; 0C5D _ 90
        pop     ebp                                     ; 0C5E _ 5D
        ret                                             ; 0C5F _ C3
; computeMousePosition End of function

CMain:  ; Function begin
        push    ebp                                     ; 0C60 _ 55
        mov     ebp, esp                                ; 0C61 _ 89. E5
        sub     esp, 56                                 ; 0C63 _ 83. EC, 38
        call    pict_init                               ; 0C66 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0C6B _ 83. EC, 04
        push    128                                     ; 0C6E _ 68, 00000080
        push    key_buf                                 ; 0C73 _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 0C78 _ 68, 00000000(d)
        call    fifo8_init                              ; 0C7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C82 _ 83. C4, 10
        sub     esp, 4                                  ; 0C85 _ 83. EC, 04
        push    256                                     ; 0C88 _ 68, 00000100
        push    mouse_buf                               ; 0C8D _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 0C92 _ 68, 00000000(d)
        call    fifo8_init                              ; 0C97 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C9C _ 83. C4, 10
        call    init_keyboard                           ; 0C9F _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0CA4 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0CA9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0CAE _ A1, 00000000(d)
        mov     dword [ebp-28H], eax                    ; 0CB3 _ 89. 45, D8
        movzx   eax, word [bootInfo+4H]                 ; 0CB6 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0CBD _ 98
        mov     dword [ebp-24H], eax                    ; 0CBE _ 89. 45, DC
        movzx   eax, word [bootInfo+6H]                 ; 0CC1 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0CC8 _ 98
        mov     dword [ebp-20H], eax                    ; 0CC9 _ 89. 45, E0
        sub     esp, 8                                  ; 0CCC _ 83. EC, 08
        push    15                                      ; 0CCF _ 6A, 0F
        push    dword [ebp-28H]                         ; 0CD1 _ FF. 75, D8
        call    fillAll                                 ; 0CD4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD9 _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 0CDC _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0CE2 _ A1, 00000000(d)
        sub     esp, 12                                 ; 0CE7 _ 83. EC, 0C
        push    cursor                                  ; 0CEA _ 68, 00000000(d)
        push    edx                                     ; 0CEF _ 52
        push    eax                                     ; 0CF0 _ 50
        push    dword [ebp-24H]                         ; 0CF1 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0CF4 _ FF. 75, D8
        call    PrintRGB                                ; 0CF7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CFC _ 83. C4, 20
        call    GET_MEMOTY_BLOCK_COUNT                  ; 0CFF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 0D04 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0D07 _ 8B. 45, E4
        sub     esp, 12                                 ; 0D0A _ 83. EC, 0C
        push    eax                                     ; 0D0D _ 50
        call    intToHexStr                             ; 0D0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D13 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0D16 _ 89. 45, E8
        push    dword [ebp-20H]                         ; 0D19 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0D1C _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0D1F _ FF. 75, D8
        push    dword [ebp-18H]                         ; 0D22 _ FF. 75, E8
        call    Printf                                  ; 0D25 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D2A _ 83. C4, 10
?_072:  call    io_cli                                  ; 0D2D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D32 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0D35 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0D3A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3F _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0D42 _ 89. 45, EC
        sub     esp, 12                                 ; 0D45 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0D48 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0D4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D52 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 0D55 _ 89. 45, F0
        cmp     dword [ebp-14H], 0                      ; 0D58 _ 83. 7D, EC, 00
        jz      ?_073                                   ; 0D5C _ 74, 10
        cmp     dword [ebp-10H], 0                      ; 0D5E _ 83. 7D, F0, 00
        jz      ?_073                                   ; 0D62 _ 74, 0A
        call    io_stihlt                               ; 0D64 _ E8, FFFFFFFC(rel)
        jmp     ?_075                                   ; 0D69 _ E9, 000000CB

?_073:  cmp     dword [ebp-14H], 0                      ; 0D6E _ 83. 7D, EC, 00
        jnz     ?_074                                   ; 0D72 _ 75, 44
        call    io_sti                                  ; 0D74 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D79 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0D7C _ 68, 00000000(d)
        call    fifo8_r                                 ; 0D81 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D86 _ 83. C4, 10
        mov     byte [ebp-2AH], al                      ; 0D89 _ 88. 45, D6
        movzx   eax, byte [ebp-2AH]                     ; 0D8C _ 0F B6. 45, D6
        sub     esp, 12                                 ; 0D90 _ 83. EC, 0C
        push    eax                                     ; 0D93 _ 50
        call    charToHexStr                            ; 0D94 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D99 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0D9C _ 89. 45, F4
        push    dword [ebp-20H]                         ; 0D9F _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0DA2 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0DA5 _ FF. 75, D8
        push    dword [ebp-0CH]                         ; 0DA8 _ FF. 75, F4
        call    Printf                                  ; 0DAB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB0 _ 83. C4, 10
        jmp     ?_072                                   ; 0DB3 _ E9, FFFFFF75

?_074:  cmp     dword [ebp-10H], 0                      ; 0DB8 _ 83. 7D, F0, 00
        jne     ?_072                                   ; 0DBC _ 0F 85, FFFFFF6B
        call    io_sti                                  ; 0DC2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0DC7 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0DCA _ 68, 00000000(d)
        call    fifo8_r                                 ; 0DCF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DD4 _ 83. C4, 10
        mov     byte [ebp-29H], al                      ; 0DD7 _ 88. 45, D7
        movzx   eax, byte [ebp-29H]                     ; 0DDA _ 0F B6. 45, D7
        sub     esp, 8                                  ; 0DDE _ 83. EC, 08
        push    eax                                     ; 0DE1 _ 50
        push    mdec                                    ; 0DE2 _ 68, 00000000(d)
        call    mouse_decode                            ; 0DE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DEC _ 83. C4, 10
        test    eax, eax                                ; 0DEF _ 85. C0
        je      ?_072                                   ; 0DF1 _ 0F 84, FFFFFF36
        sub     esp, 4                                  ; 0DF7 _ 83. EC, 04
        push    cur_pos                                 ; 0DFA _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 0DFF _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0E02 _ FF. 75, D8
        call    eraseMouse                              ; 0E05 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E0A _ 83. C4, 10
        sub     esp, 4                                  ; 0E0D _ 83. EC, 04
        push    dword [ebp-20H]                         ; 0E10 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0E13 _ FF. 75, DC
        push    mdec                                    ; 0E16 _ 68, 00000000(d)
        call    computeMousePosition                    ; 0E1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E20 _ 83. C4, 10
        sub     esp, 4                                  ; 0E23 _ 83. EC, 04
        push    cur_pos                                 ; 0E26 _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 0E2B _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0E2E _ FF. 75, D8
        call    drawMouse                               ; 0E31 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E36 _ 83. C4, 10
?_075:  jmp     ?_072                                   ; 0E39 _ E9, FFFFFEEF
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

str.1506:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01C8 _ 0X......
        db 00H, 00H, 00H                                ; 01D0 _ ...




mouse_buf:                                              ; byte
        resb    256                                     ; 0000

key_buf:                                                ; byte
        resb    128                                     ; 0100

MOUSE_FIFO8:                                            ; byte
        resb    20                                      ; 0180

KEY_FIFO8:                                              ; byte
        resb    20                                      ; 0194

mdec:                                                   ; oword
        resb    16                                      ; 01A8

keystr.1664:                                            ; byte
        resb    1                                       ; 01B8

?_076:  resb    2                                       ; 01B9




?_077:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.


