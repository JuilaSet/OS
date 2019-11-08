; Disassembly of file: main.o
; Fri Nov  8 03:31:32 2019
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
        add     eax, str.1506                           ; 003F _ 05, 000001DC(d)
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
        add     eax, str.1506                           ; 007D _ 05, 000001DC(d)
        mov     byte [eax], dl                          ; 0082 _ 88. 10
        jmp     ?_006                                   ; 0084 _ EB, 12

?_005:  mov     eax, dword [ebp-4H]                     ; 0086 _ 8B. 45, FC
        add     eax, 48                                 ; 0089 _ 83. C0, 30
        mov     edx, eax                                ; 008C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 008E _ 8B. 45, F8
        add     eax, str.1506                           ; 0091 _ 05, 000001DC(d)
        mov     byte [eax], dl                          ; 0096 _ 88. 10
?_006:  sub     dword [ebp-8H], 1                       ; 0098 _ 83. 6D, F8, 01
?_007:  cmp     dword [ebp-8H], 1                       ; 009C _ 83. 7D, F8, 01
        jle     ?_008                                   ; 00A0 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 00A2 _ 83. 7D, 08, 00
        jnz     ?_004                                   ; 00A6 _ 75, B2
?_008:  mov     eax, str.1506                           ; 00A8 _ B8, 000001DC(d)
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

Println:; Function begin
        push    ebp                                     ; 079A _ 55
        mov     ebp, esp                                ; 079B _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 079D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 07A0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 07A3 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 07A6 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 07A8 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 07AB _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 07AE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 07B1 _ 8B. 40, 0C
        add     edx, eax                                ; 07B4 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 07B6 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 07B9 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 07BC _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 07BF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 07C2 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 07C5 _ 0F B7. 40, 06
        cwde                                            ; 07C9 _ 98
        cmp     edx, eax                                ; 07CA _ 39. C2
        jl      ?_054                                   ; 07CC _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 07CE _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 07D1 _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 07D4 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 07D7 _ 89. 50, 04
?_054:  nop                                             ; 07DA _ 90
        pop     ebp                                     ; 07DB _ 5D
        ret                                             ; 07DC _ C3
; Println End of function

Printf: ; Function begin
        push    ebp                                     ; 07DD _ 55
        mov     ebp, esp                                ; 07DE _ 89. E5
        push    ebx                                     ; 07E0 _ 53
        sub     esp, 16                                 ; 07E1 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 07E4 _ 8B. 45, 10
        movzx   eax, word [eax+4H]                      ; 07E7 _ 0F B7. 40, 04
        cwde                                            ; 07EB _ 98
        mov     dword [ebp-10H], eax                    ; 07EC _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 07EF _ 8B. 45, 10
        movzx   eax, word [eax+6H]                      ; 07F2 _ 0F B7. 40, 06
        cwde                                            ; 07F6 _ 98
        mov     dword [ebp-0CH], eax                    ; 07F7 _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 07FA _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 07FD _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 07FF _ 89. 45, F8
        mov     eax, dword [ebp+14H]                    ; 0802 _ 8B. 45, 14
        mov     ebx, dword [eax+0CH]                    ; 0805 _ 8B. 58, 0C
        mov     eax, dword [ebp+14H]                    ; 0808 _ 8B. 45, 14
        mov     ecx, dword [eax+8H]                     ; 080B _ 8B. 48, 08
        mov     eax, dword [ebp+14H]                    ; 080E _ 8B. 45, 14
        mov     edx, dword [eax+4H]                     ; 0811 _ 8B. 50, 04
        mov     eax, dword [ebp+14H]                    ; 0814 _ 8B. 45, 14
        mov     eax, dword [eax]                        ; 0817 _ 8B. 00
        push    dword [ebp+8H]                          ; 0819 _ FF. 75, 08
        push    7                                       ; 081C _ 6A, 07
        push    ebx                                     ; 081E _ 53
        push    ecx                                     ; 081F _ 51
        push    edx                                     ; 0820 _ 52
        push    eax                                     ; 0821 _ 50
        push    dword [ebp-10H]                         ; 0822 _ FF. 75, F0
        push    dword [ebp-8H]                          ; 0825 _ FF. 75, F8
        call    Print                                   ; 0828 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 082D _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 0830 _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 0833 _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 0835 _ 8B. 45, 14
        mov     eax, dword [eax+8H]                     ; 0838 _ 8B. 40, 08
        imul    eax, dword [ebp+0CH]                    ; 083B _ 0F AF. 45, 0C
        add     edx, eax                                ; 083F _ 01. C2
        mov     eax, dword [ebp+14H]                    ; 0841 _ 8B. 45, 14
        mov     dword [eax], edx                        ; 0844 _ 89. 10
        mov     eax, dword [ebp+14H]                    ; 0846 _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 0849 _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 084B _ 8B. 45, 14
        mov     eax, dword [eax+10H]                    ; 084E _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 0851 _ 8B. 4D, F0
        sub     ecx, eax                                ; 0854 _ 29. C1
        mov     eax, ecx                                ; 0856 _ 89. C8
        cmp     edx, eax                                ; 0858 _ 39. C2
        jl      ?_055                                   ; 085A _ 7C, 0E
        push    dword [ebp+14H]                         ; 085C _ FF. 75, 14
        push    dword [ebp+10H]                         ; 085F _ FF. 75, 10
        call    Println                                 ; 0862 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0867 _ 83. C4, 08
?_055:  nop                                             ; 086A _ 90
        mov     ebx, dword [ebp-4H]                     ; 086B _ 8B. 5D, FC
        leave                                           ; 086E _ C9
        ret                                             ; 086F _ C3
; Printf End of function

PrintTab:; Function begin
        push    ebp                                     ; 0870 _ 55
        mov     ebp, esp                                ; 0871 _ 89. E5
        push    ebx                                     ; 0873 _ 53
        sub     esp, 16                                 ; 0874 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0877 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 087A _ 0F B7. 40, 04
        cwde                                            ; 087E _ 98
        mov     dword [ebp-0CH], eax                    ; 087F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0882 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0885 _ 0F B7. 40, 06
        cwde                                            ; 0889 _ 98
        mov     dword [ebp-8H], eax                     ; 088A _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 088D _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0890 _ 0F B7. 40, 04
        cwde                                            ; 0894 _ 98
        mov     edx, dword [ebp+0CH]                    ; 0895 _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0898 _ 8B. 5A, 18
        cdq                                             ; 089B _ 99
        idiv    ebx                                     ; 089C _ F7. FB
        mov     word [ebp-0EH], ax                      ; 089E _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 08A2 _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 08A6 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 08A9 _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 08AB _ 0F BF. 45, F2
        add     eax, edx                                ; 08AF _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 08B1 _ 0F BF. 5D, F2
        cdq                                             ; 08B5 _ 99
        idiv    ebx                                     ; 08B6 _ F7. FB
        imul    ecx, eax                                ; 08B8 _ 0F AF. C8
        mov     edx, ecx                                ; 08BB _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 08BD _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 08C0 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 08C2 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 08C5 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 08C7 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 08CA _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 08CD _ 8B. 4D, F4
        sub     ecx, eax                                ; 08D0 _ 29. C1
        mov     eax, ecx                                ; 08D2 _ 89. C8
        cmp     edx, eax                                ; 08D4 _ 39. C2
        jl      ?_056                                   ; 08D6 _ 7C, 0E
        push    dword [ebp+0CH]                         ; 08D8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08DB _ FF. 75, 08
        call    Println                                 ; 08DE _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 08E3 _ 83. C4, 08
?_056:  nop                                             ; 08E6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 08E7 _ 8B. 5D, FC
        leave                                           ; 08EA _ C9
        ret                                             ; 08EB _ C3
; PrintTab End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 08EC _ 55
        mov     ebp, esp                                ; 08ED _ 89. E5
        nop                                             ; 08EF _ 90
        pop     ebp                                     ; 08F0 _ 5D
        ret                                             ; 08F1 _ C3
; showMemoryInfo End of function

charToHex:; Function begin
        push    ebp                                     ; 08F2 _ 55
        mov     ebp, esp                                ; 08F3 _ 89. E5
        sub     esp, 4                                  ; 08F5 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 08F8 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 08FB _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 08FE _ 80. 7D, FC, 09
        jle     ?_057                                   ; 0902 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0904 _ 0F B6. 45, FC
        add     eax, 87                                 ; 0908 _ 83. C0, 57
        jmp     ?_058                                   ; 090B _ EB, 07

?_057:  movzx   eax, byte [ebp-4H]                      ; 090D _ 0F B6. 45, FC
        add     eax, 48                                 ; 0911 _ 83. C0, 30
?_058:  leave                                           ; 0914 _ C9
        ret                                             ; 0915 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0916 _ 55
        mov     ebp, esp                                ; 0917 _ 89. E5
        sub     esp, 4                                  ; 0919 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 091C _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 091F _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 0922 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0926 _ 0F BE. C0
        and     eax, 0FH                                ; 0929 _ 83. E0, 0F
        push    eax                                     ; 092C _ 50
        call    charToHex                               ; 092D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0932 _ 83. C4, 04
        mov     byte [?_078], al                        ; 0935 _ A2, 000001B9(d)
        shr     byte [ebp-4H], 4                        ; 093A _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 093E _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0942 _ 0F BE. C0
        and     eax, 0FH                                ; 0945 _ 83. E0, 0F
        push    eax                                     ; 0948 _ 50
        call    charToHex                               ; 0949 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 094E _ 83. C4, 04
        mov     byte [keystr.1697], al                  ; 0951 _ A2, 000001B8(d)
        mov     eax, keystr.1697                        ; 0956 _ B8, 000001B8(d)
        leave                                           ; 095B _ C9
        ret                                             ; 095C _ C3
; charToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 095D _ 55
        mov     ebp, esp                                ; 095E _ 89. E5
        sub     esp, 8                                  ; 0960 _ 83. EC, 08
?_059:  sub     esp, 12                                 ; 0963 _ 83. EC, 0C
        push    100                                     ; 0966 _ 6A, 64
        call    io_in8                                  ; 0968 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 096D _ 83. C4, 10
        movsx   eax, al                                 ; 0970 _ 0F BE. C0
        and     eax, 02H                                ; 0973 _ 83. E0, 02
        test    eax, eax                                ; 0976 _ 85. C0
        jz      ?_060                                   ; 0978 _ 74, 02
        jmp     ?_059                                   ; 097A _ EB, E7

?_060:  nop                                             ; 097C _ 90
        nop                                             ; 097D _ 90
        leave                                           ; 097E _ C9
        ret                                             ; 097F _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0980 _ 55
        mov     ebp, esp                                ; 0981 _ 89. E5
        sub     esp, 8                                  ; 0983 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0986 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 098B _ 83. EC, 08
        push    96                                      ; 098E _ 6A, 60
        push    100                                     ; 0990 _ 6A, 64
        call    io_out8                                 ; 0992 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0997 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 099A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 099F _ 83. EC, 08
        push    71                                      ; 09A2 _ 6A, 47
        push    96                                      ; 09A4 _ 6A, 60
        call    io_out8                                 ; 09A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09AB _ 83. C4, 10
        nop                                             ; 09AE _ 90
        leave                                           ; 09AF _ C9
        ret                                             ; 09B0 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 09B1 _ 55
        mov     ebp, esp                                ; 09B2 _ 89. E5
        sub     esp, 8                                  ; 09B4 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 09B7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 09BC _ 83. EC, 08
        push    212                                     ; 09BF _ 68, 000000D4
        push    100                                     ; 09C4 _ 6A, 64
        call    io_out8                                 ; 09C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09CB _ 83. C4, 10
        call    wait_KBC_sendready                      ; 09CE _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 09D3 _ 83. EC, 08
        push    244                                     ; 09D6 _ 68, 000000F4
        push    96                                      ; 09DB _ 6A, 60
        call    io_out8                                 ; 09DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09E2 _ 83. C4, 10
        nop                                             ; 09E5 _ 90
        leave                                           ; 09E6 _ C9
        ret                                             ; 09E7 _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 09E8 _ 55
        mov     ebp, esp                                ; 09E9 _ 89. E5
        sub     esp, 4                                  ; 09EB _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 09EE _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 09F1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 09F4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 09F7 _ 0F B6. 40, 03
        test    al, al                                  ; 09FB _ 84. C0
        jnz     ?_062                                   ; 09FD _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 09FF _ 80. 7D, FC, FA
        jnz     ?_061                                   ; 0A03 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0A05 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0A08 _ C6. 40, 03, 01
?_061:  mov     eax, 0                                  ; 0A0C _ B8, 00000000
        jmp     ?_069                                   ; 0A11 _ E9, 0000010F

?_062:  mov     eax, dword [ebp+8H]                     ; 0A16 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0A19 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0A1D _ 3C, 01
        jnz     ?_064                                   ; 0A1F _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0A21 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0A25 _ 25, 000000C8
        cmp     eax, 8                                  ; 0A2A _ 83. F8, 08
        jnz     ?_063                                   ; 0A2D _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0A2F _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0A32 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0A36 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0A3B _ C6. 40, 03, 02
?_063:  mov     eax, 0                                  ; 0A3F _ B8, 00000000
        jmp     ?_069                                   ; 0A44 _ E9, 000000DC

?_064:  mov     eax, dword [ebp+8H]                     ; 0A49 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0A4C _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0A50 _ 3C, 02
        jnz     ?_065                                   ; 0A52 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0A54 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0A57 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0A5B _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A5E _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0A61 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0A65 _ B8, 00000000
        jmp     ?_069                                   ; 0A6A _ E9, 000000B6

?_065:  mov     eax, dword [ebp+8H]                     ; 0A6F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0A72 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0A76 _ 3C, 03
        jne     ?_068                                   ; 0A78 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0A7E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0A81 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0A85 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0A88 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0A8B _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0A8F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0A92 _ 0F B6. 00
        movzx   eax, al                                 ; 0A95 _ 0F B6. C0
        and     eax, 07H                                ; 0A98 _ 83. E0, 07
        mov     edx, eax                                ; 0A9B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A9D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0AA0 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0AA3 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0AA6 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0AAA _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0AAD _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0AB0 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0AB3 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0AB6 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0ABA _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0ABD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0AC0 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0AC3 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0AC6 _ 0F B6. 00
        movzx   eax, al                                 ; 0AC9 _ 0F B6. C0
        and     eax, 10H                                ; 0ACC _ 83. E0, 10
        test    eax, eax                                ; 0ACF _ 85. C0
        jz      ?_066                                   ; 0AD1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0AD3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0AD6 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0AD9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0ADE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AE0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0AE3 _ 89. 50, 04
?_066:  mov     eax, dword [ebp+8H]                     ; 0AE6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0AE9 _ 0F B6. 00
        movzx   eax, al                                 ; 0AEC _ 0F B6. C0
        and     eax, 20H                                ; 0AEF _ 83. E0, 20
        test    eax, eax                                ; 0AF2 _ 85. C0
        jz      ?_067                                   ; 0AF4 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0AF6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0AF9 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0AFC _ 0D, FFFFFF00
        mov     edx, eax                                ; 0B01 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B03 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B06 _ 89. 50, 08
?_067:  mov     eax, dword [ebp+8H]                     ; 0B09 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B0C _ 8B. 40, 08
        neg     eax                                     ; 0B0F _ F7. D8
        mov     edx, eax                                ; 0B11 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B13 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B16 _ 89. 50, 08
        mov     eax, 1                                  ; 0B19 _ B8, 00000001
        jmp     ?_069                                   ; 0B1E _ EB, 05

?_068:  mov     eax, 4294967295                         ; 0B20 _ B8, FFFFFFFF
?_069:  leave                                           ; 0B25 _ C9
        ret                                             ; 0B26 _ C3
; mouse_decode End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0B27 _ 55
        mov     ebp, esp                                ; 0B28 _ 89. E5
        push    ebx                                     ; 0B2A _ 53
        mov     eax, dword [ebp+10H]                    ; 0B2B _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0B2E _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0B31 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0B34 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0B37 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0B39 _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0B3C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0B3F _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0B42 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0B45 _ 8B. 00
        push    ebx                                     ; 0B47 _ 53
        push    ecx                                     ; 0B48 _ 51
        push    edx                                     ; 0B49 _ 52
        push    eax                                     ; 0B4A _ 50
        push    15                                      ; 0B4B _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0B4D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B50 _ FF. 75, 08
        call    boxfill8                                ; 0B53 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0B58 _ 83. C4, 1C
        nop                                             ; 0B5B _ 90
        mov     ebx, dword [ebp-4H]                     ; 0B5C _ 8B. 5D, FC
        leave                                           ; 0B5F _ C9
        ret                                             ; 0B60 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0B61 _ 55
        mov     ebp, esp                                ; 0B62 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0B64 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0B67 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0B6A _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0B6D _ 8B. 00
        push    cursor                                  ; 0B6F _ 68, 00000000(d)
        push    edx                                     ; 0B74 _ 52
        push    eax                                     ; 0B75 _ 50
        push    dword [ebp+0CH]                         ; 0B76 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B79 _ FF. 75, 08
        call    PrintRGB                                ; 0B7C _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0B81 _ 83. C4, 14
        nop                                             ; 0B84 _ 90
        leave                                           ; 0B85 _ C9
        ret                                             ; 0B86 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0B87 _ 55
        mov     ebp, esp                                ; 0B88 _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0B8A _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0B90 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B93 _ 8B. 40, 04
        add     eax, edx                                ; 0B96 _ 01. D0
        mov     dword [cur_pos], eax                    ; 0B98 _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0B9D _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0BA3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0BA6 _ 8B. 40, 08
        add     eax, edx                                ; 0BA9 _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0BAB _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0BB0 _ A1, 00000000(d)
        test    eax, eax                                ; 0BB5 _ 85. C0
        jns     ?_070                                   ; 0BB7 _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0BB9 _ C7. 05, 00000000(d), 00000000
?_070:  mov     eax, dword [cur_pos+4H]                 ; 0BC3 _ A1, 00000004(d)
        test    eax, eax                                ; 0BC8 _ 85. C0
        jns     ?_071                                   ; 0BCA _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0BCC _ C7. 05, 00000004(d), 00000000
?_071:  mov     eax, dword [cur_pos]                    ; 0BD6 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0BDB _ 3B. 45, 0C
        jle     ?_072                                   ; 0BDE _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0BE0 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0BE3 _ A3, 00000000(d)
?_072:  mov     eax, dword [cur_pos+4H]                 ; 0BE8 _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0BED _ 3B. 45, 10
        jle     ?_073                                   ; 0BF0 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0BF2 _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0BF5 _ A3, 00000004(d)
?_073:  nop                                             ; 0BFA _ 90
        pop     ebp                                     ; 0BFB _ 5D
        ret                                             ; 0BFC _ C3
; computeMousePosition End of function

CMain:  ; Function begin
        push    ebp                                     ; 0BFD _ 55
        mov     ebp, esp                                ; 0BFE _ 89. E5
        sub     esp, 56                                 ; 0C00 _ 83. EC, 38
        call    pict_init                               ; 0C03 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0C08 _ 83. EC, 04
        push    128                                     ; 0C0B _ 68, 00000080
        push    key_buf                                 ; 0C10 _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 0C15 _ 68, 00000000(d)
        call    fifo8_init                              ; 0C1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C1F _ 83. C4, 10
        sub     esp, 4                                  ; 0C22 _ 83. EC, 04
        push    256                                     ; 0C25 _ 68, 00000100
        push    mouse_buf                               ; 0C2A _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 0C2F _ 68, 00000000(d)
        call    fifo8_init                              ; 0C34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C39 _ 83. C4, 10
        call    init_keyboard                           ; 0C3C _ E8, FFFFFFFC(rel)
        call    GET_MEMDESC_ADDR                        ; 0C41 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-30H], eax                    ; 0C46 _ 89. 45, D0
        mov     dword [ebp-2CH], 0                      ; 0C49 _ C7. 45, D4, 00000000
        call    io_sti                                  ; 0C50 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0C55 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0C5A _ A1, 00000000(d)
        mov     dword [ebp-28H], eax                    ; 0C5F _ 89. 45, D8
        movzx   eax, word [bootInfo+4H]                 ; 0C62 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0C69 _ 98
        mov     dword [ebp-24H], eax                    ; 0C6A _ 89. 45, DC
        movzx   eax, word [bootInfo+6H]                 ; 0C6D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0C74 _ 98
        mov     dword [ebp-20H], eax                    ; 0C75 _ 89. 45, E0
        sub     esp, 8                                  ; 0C78 _ 83. EC, 08
        push    15                                      ; 0C7B _ 6A, 0F
        push    dword [ebp-28H]                         ; 0C7D _ FF. 75, D8
        call    fillAll                                 ; 0C80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C85 _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 0C88 _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0C8E _ A1, 00000000(d)
        sub     esp, 12                                 ; 0C93 _ 83. EC, 0C
        push    cursor                                  ; 0C96 _ 68, 00000000(d)
        push    edx                                     ; 0C9B _ 52
        push    eax                                     ; 0C9C _ 50
        push    dword [ebp-24H]                         ; 0C9D _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0CA0 _ FF. 75, D8
        call    PrintRGB                                ; 0CA3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CA8 _ 83. C4, 20
        call    GET_MEMOTY_BLOCK_COUNT                  ; 0CAB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 0CB0 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0CB3 _ 8B. 45, E4
        sub     esp, 12                                 ; 0CB6 _ 83. EC, 0C
        push    eax                                     ; 0CB9 _ 50
        call    intToHexStr                             ; 0CBA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CBF _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0CC2 _ 89. 45, E8
        sub     esp, 12                                 ; 0CC5 _ 83. EC, 0C
        push    dword [ebp-18H]                         ; 0CC8 _ FF. 75, E8
        call    strlen                                  ; 0CCB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD0 _ 83. C4, 10
        push    txtCursor                               ; 0CD3 _ 68, 00000000(d)
        push    bootInfo                                ; 0CD8 _ 68, 00000000(d)
        push    eax                                     ; 0CDD _ 50
        push    dword [ebp-18H]                         ; 0CDE _ FF. 75, E8
        call    Printf                                  ; 0CE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE6 _ 83. C4, 10
?_074:  call    io_cli                                  ; 0CE9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0CEE _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0CF1 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0CF6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CFB _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0CFE _ 89. 45, EC
        sub     esp, 12                                 ; 0D01 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0D04 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0D09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D0E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 0D11 _ 89. 45, F0
        cmp     dword [ebp-14H], 0                      ; 0D14 _ 83. 7D, EC, 00
        jz      ?_075                                   ; 0D18 _ 74, 10
        cmp     dword [ebp-10H], 0                      ; 0D1A _ 83. 7D, F0, 00
        jz      ?_075                                   ; 0D1E _ 74, 0A
        call    io_stihlt                               ; 0D20 _ E8, FFFFFFFC(rel)
        jmp     ?_077                                   ; 0D25 _ E9, 000000F0

?_075:  cmp     dword [ebp-14H], 0                      ; 0D2A _ 83. 7D, EC, 00
        jnz     ?_076                                   ; 0D2E _ 75, 69
        call    io_sti                                  ; 0D30 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D35 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0D38 _ 68, 00000000(d)
        call    fifo8_r                                 ; 0D3D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D42 _ 83. C4, 10
        mov     byte [ebp-32H], al                      ; 0D45 _ 88. 45, CE
        movzx   eax, byte [ebp-32H]                     ; 0D48 _ 0F B6. 45, CE
        sub     esp, 12                                 ; 0D4C _ 83. EC, 0C
        push    eax                                     ; 0D4F _ 50
        call    charToHexStr                            ; 0D50 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D55 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0D58 _ 89. 45, F4
        sub     esp, 12                                 ; 0D5B _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D5E _ FF. 75, F4
        call    strlen                                  ; 0D61 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D66 _ 83. C4, 10
        push    txtCursor                               ; 0D69 _ 68, 00000000(d)
        push    bootInfo                                ; 0D6E _ 68, 00000000(d)
        push    eax                                     ; 0D73 _ 50
        push    dword [ebp-0CH]                         ; 0D74 _ FF. 75, F4
        call    Printf                                  ; 0D77 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D7C _ 83. C4, 10
        sub     esp, 8                                  ; 0D7F _ 83. EC, 08
        push    txtCursor                               ; 0D82 _ 68, 00000000(d)
        push    bootInfo                                ; 0D87 _ 68, 00000000(d)
        call    PrintTab                                ; 0D8C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D91 _ 83. C4, 10
        jmp     ?_074                                   ; 0D94 _ E9, FFFFFF50

?_076:  cmp     dword [ebp-10H], 0                      ; 0D99 _ 83. 7D, F0, 00
        jne     ?_074                                   ; 0D9D _ 0F 85, FFFFFF46
        call    io_sti                                  ; 0DA3 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0DA8 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0DAB _ 68, 00000000(d)
        call    fifo8_r                                 ; 0DB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB5 _ 83. C4, 10
        mov     byte [ebp-31H], al                      ; 0DB8 _ 88. 45, CF
        movzx   eax, byte [ebp-31H]                     ; 0DBB _ 0F B6. 45, CF
        sub     esp, 8                                  ; 0DBF _ 83. EC, 08
        push    eax                                     ; 0DC2 _ 50
        push    mdec                                    ; 0DC3 _ 68, 00000000(d)
        call    mouse_decode                            ; 0DC8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DCD _ 83. C4, 10
        test    eax, eax                                ; 0DD0 _ 85. C0
        je      ?_074                                   ; 0DD2 _ 0F 84, FFFFFF11
        sub     esp, 4                                  ; 0DD8 _ 83. EC, 04
        push    cur_pos                                 ; 0DDB _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 0DE0 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0DE3 _ FF. 75, D8
        call    eraseMouse                              ; 0DE6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DEB _ 83. C4, 10
        sub     esp, 4                                  ; 0DEE _ 83. EC, 04
        push    dword [ebp-20H]                         ; 0DF1 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0DF4 _ FF. 75, DC
        push    mdec                                    ; 0DF7 _ 68, 00000000(d)
        call    computeMousePosition                    ; 0DFC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E01 _ 83. C4, 10
        sub     esp, 4                                  ; 0E04 _ 83. EC, 04
        push    cur_pos                                 ; 0E07 _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 0E0C _ FF. 75, DC
        push    dword [ebp-28H]                         ; 0E0F _ FF. 75, D8
        call    drawMouse                               ; 0E12 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E17 _ 83. C4, 10
?_077:  jmp     ?_074                                   ; 0E1A _ E9, FFFFFECA
; CMain End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0E1F _ 55
        mov     ebp, esp                                ; 0E20 _ 89. E5
        sub     esp, 24                                 ; 0E22 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E25 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E2A _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0E2D _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E34 _ 98
        mov     dword [ebp-10H], eax                    ; 0E35 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0E38 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E3F _ 98
        mov     dword [ebp-0CH], eax                    ; 0E40 _ 89. 45, F4
        sub     esp, 8                                  ; 0E43 _ 83. EC, 08
        push    33                                      ; 0E46 _ 6A, 21
        push    32                                      ; 0E48 _ 6A, 20
        call    io_out8                                 ; 0E4A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E4F _ 83. C4, 10
        sub     esp, 12                                 ; 0E52 _ 83. EC, 0C
        push    96                                      ; 0E55 _ 6A, 60
        call    io_in8                                  ; 0E57 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E5C _ 83. C4, 10
        push    txtCursor                               ; 0E5F _ 68, 00000000(d)
        push    bootInfo                                ; 0E64 _ 68, 00000000(d)
        push    2                                       ; 0E69 _ 6A, 02
        push    ?_079                                   ; 0E6B _ 68, 00000000(d)
        call    Printf                                  ; 0E70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E75 _ 83. C4, 10
        nop                                             ; 0E78 _ 90
        leave                                           ; 0E79 _ C9
        ret                                             ; 0E7A _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 0E7B _ 55
        mov     ebp, esp                                ; 0E7C _ 89. E5
        sub     esp, 24                                 ; 0E7E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E81 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E86 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0E89 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E90 _ 98
        mov     dword [ebp-10H], eax                    ; 0E91 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0E94 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E9B _ 98
        mov     dword [ebp-0CH], eax                    ; 0E9C _ 89. 45, F4
        sub     esp, 8                                  ; 0E9F _ 83. EC, 08
        push    33                                      ; 0EA2 _ 6A, 21
        push    32                                      ; 0EA4 _ 6A, 20
        call    io_out8                                 ; 0EA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EAB _ 83. C4, 10
        sub     esp, 12                                 ; 0EAE _ 83. EC, 0C
        push    96                                      ; 0EB1 _ 6A, 60
        call    io_in8                                  ; 0EB3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EB8 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0EBB _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0EBE _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0EC2 _ 83. EC, 08
        push    eax                                     ; 0EC5 _ 50
        push    KEY_FIFO8                               ; 0EC6 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0ECB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED0 _ 83. C4, 10
        nop                                             ; 0ED3 _ 90
        leave                                           ; 0ED4 _ C9
        ret                                             ; 0ED5 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 0ED6 _ 55
        mov     ebp, esp                                ; 0ED7 _ 89. E5
        sub     esp, 24                                 ; 0ED9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0EDC _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0EE1 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0EE4 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0EEB _ 98
        mov     dword [ebp-10H], eax                    ; 0EEC _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0EEF _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EF6 _ 98
        mov     dword [ebp-0CH], eax                    ; 0EF7 _ 89. 45, F4
        sub     esp, 8                                  ; 0EFA _ 83. EC, 08
        push    32                                      ; 0EFD _ 6A, 20
        push    160                                     ; 0EFF _ 68, 000000A0
        call    io_out8                                 ; 0F04 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F09 _ 83. C4, 10
        sub     esp, 8                                  ; 0F0C _ 83. EC, 08
        push    32                                      ; 0F0F _ 6A, 20
        push    32                                      ; 0F11 _ 6A, 20
        call    io_out8                                 ; 0F13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F18 _ 83. C4, 10
        sub     esp, 12                                 ; 0F1B _ 83. EC, 0C
        push    96                                      ; 0F1E _ 6A, 60
        call    io_in8                                  ; 0F20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F25 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0F28 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0F2B _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0F2F _ 83. EC, 08
        push    eax                                     ; 0F32 _ 50
        push    MOUSE_FIFO8                             ; 0F33 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0F38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F3D _ 83. C4, 10
        nop                                             ; 0F40 _ 90
        leave                                           ; 0F41 _ C9
        ret                                             ; 0F42 _ C3
; intHandlerFromC_mouse End of function




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
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0180 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0188 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0190 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0198 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 01A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 01A8 _ ........

cur_pos: dq 0000001400000014H                           ; 01B0 _ 0000001400000014 

bootInfo: dq 00C80140000A0000H                          ; 01B8 _ 00C80140000A0000 

txtCursor:                                              ; byte
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 01C0 _ ........
        db 08H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 01C8 _ ........
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 01D0 _ ........
        db 0AH, 00H, 00H, 00H                           ; 01D8 _ ....

str.1506:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01DC _ 0X......
        db 00H, 00H, 00H                                ; 01E4 _ ...




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

keystr.1697:                                            ; byte
        resb    1                                       ; 01B8

?_078:  resb    2                                       ; 01B9




?_079:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.


