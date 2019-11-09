; Disassembly of file: main.o
; Fri Nov  8 05:25:55 2019
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

charToHex:; Function begin
        push    ebp                                     ; 002D _ 55
        mov     ebp, esp                                ; 002E _ 89. E5
        sub     esp, 4                                  ; 0030 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0033 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0036 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0039 _ 80. 7D, FC, 09
        jle     ?_002                                   ; 003D _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 003F _ 0F B6. 45, FC
        add     eax, 87                                 ; 0043 _ 83. C0, 57
        jmp     ?_003                                   ; 0046 _ EB, 07

?_002:  movzx   eax, byte [ebp-4H]                      ; 0048 _ 0F B6. 45, FC
        add     eax, 48                                 ; 004C _ 83. C0, 30
?_003:  leave                                           ; 004F _ C9
        ret                                             ; 0050 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0051 _ 55
        mov     ebp, esp                                ; 0052 _ 89. E5
        sub     esp, 4                                  ; 0054 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0057 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 005A _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 005D _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0061 _ 0F BE. C0
        and     eax, 0FH                                ; 0064 _ 83. E0, 0F
        push    eax                                     ; 0067 _ 50
        call    charToHex                               ; 0068 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 006D _ 83. C4, 04
        mov     byte [?_086], al                        ; 0070 _ A2, 000001B9(d)
        shr     byte [ebp-4H], 4                        ; 0075 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 0079 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 007D _ 0F BE. C0
        and     eax, 0FH                                ; 0080 _ 83. E0, 0F
        push    eax                                     ; 0083 _ 50
        call    charToHex                               ; 0084 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0089 _ 83. C4, 04
        mov     byte [str.1509], al                     ; 008C _ A2, 000001B8(d)
        mov     eax, str.1509                           ; 0091 _ B8, 000001B8(d)
        leave                                           ; 0096 _ C9
        ret                                             ; 0097 _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0098 _ 55
        mov     ebp, esp                                ; 0099 _ 89. E5
        sub     esp, 16                                 ; 009B _ 83. EC, 10
        mov     dword [ebp-0CH], 2                      ; 009E _ C7. 45, F4, 00000002
        jmp     ?_005                                   ; 00A5 _ EB, 0F

?_004:  mov     eax, dword [ebp-0CH]                    ; 00A7 _ 8B. 45, F4
        add     eax, str.1513                           ; 00AA _ 05, 000000BC(d)
        mov     byte [eax], 48                          ; 00AF _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 00B2 _ 83. 45, F4, 01
?_005:  cmp     dword [ebp-0CH], 9                      ; 00B6 _ 83. 7D, F4, 09
        jle     ?_004                                   ; 00BA _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 00BC _ C7. 45, F8, 00000009
        jmp     ?_009                                   ; 00C3 _ EB, 42

?_006:  mov     eax, dword [ebp+8H]                     ; 00C5 _ 8B. 45, 08
        and     eax, 0FH                                ; 00C8 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 00CB _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 00CE _ 8B. 45, 08
        shr     eax, 4                                  ; 00D1 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 00D4 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 00D7 _ 83. 7D, FC, 09
        jle     ?_007                                   ; 00DB _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 00DD _ 8B. 45, FC
        add     eax, 55                                 ; 00E0 _ 83. C0, 37
        mov     edx, eax                                ; 00E3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 00E5 _ 8B. 45, F8
        add     eax, str.1513                           ; 00E8 _ 05, 000000BC(d)
        mov     byte [eax], dl                          ; 00ED _ 88. 10
        jmp     ?_008                                   ; 00EF _ EB, 12

?_007:  mov     eax, dword [ebp-4H]                     ; 00F1 _ 8B. 45, FC
        add     eax, 48                                 ; 00F4 _ 83. C0, 30
        mov     edx, eax                                ; 00F7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 00F9 _ 8B. 45, F8
        add     eax, str.1513                           ; 00FC _ 05, 000000BC(d)
        mov     byte [eax], dl                          ; 0101 _ 88. 10
?_008:  sub     dword [ebp-8H], 1                       ; 0103 _ 83. 6D, F8, 01
?_009:  cmp     dword [ebp-8H], 1                       ; 0107 _ 83. 7D, F8, 01
        jle     ?_010                                   ; 010B _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 010D _ 83. 7D, 08, 00
        jnz     ?_006                                   ; 0111 _ 75, B2
?_010:  mov     eax, str.1513                           ; 0113 _ B8, 000000BC(d)
        leave                                           ; 0118 _ C9
        ret                                             ; 0119 _ C3
; intToHexStr End of function

fifo8_init:; Function begin
        push    ebp                                     ; 011A _ 55
        mov     ebp, esp                                ; 011B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 011D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0120 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 0123 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0125 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0128 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 012B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 012E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0131 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0138 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 013B _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp+8H]                     ; 0142 _ 8B. 45, 08
        mov     dword [eax+10H], 0                      ; 0145 _ C7. 40, 10, 00000000
        nop                                             ; 014C _ 90
        pop     ebp                                     ; 014D _ 5D
        ret                                             ; 014E _ C3
; fifo8_init End of function

fifo8_w:; Function begin
        push    ebp                                     ; 014F _ 55
        mov     ebp, esp                                ; 0150 _ 89. E5
        sub     esp, 4                                  ; 0152 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0155 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0158 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 015B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 015E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0160 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0163 _ 8B. 40, 10
        add     edx, eax                                ; 0166 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0168 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 016C _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 016E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0171 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0174 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0177 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 017A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 017D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0180 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0183 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0186 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 0189 _ 8B. 48, 04
        mov     eax, edx                                ; 018C _ 89. D0
        cdq                                             ; 018E _ 99
        idiv    ecx                                     ; 018F _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 0191 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0194 _ 89. 50, 10
        nop                                             ; 0197 _ 90
        leave                                           ; 0198 _ C9
        ret                                             ; 0199 _ C3
; fifo8_w End of function

fifo8_r:; Function begin
        push    ebp                                     ; 019A _ 55
        mov     ebp, esp                                ; 019B _ 89. E5
        sub     esp, 16                                 ; 019D _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 01A0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 01A3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 01A5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 01A8 _ 8B. 40, 0C
        add     eax, edx                                ; 01AB _ 01. D0
        movzx   eax, byte [eax]                         ; 01AD _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 01B0 _ 88. 45, FF
        mov     eax, dword [ebp+8H]                     ; 01B3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 01B6 _ 8B. 40, 08
        lea     edx, [eax-1H]                           ; 01B9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 01BC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 01BF _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 01C2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 01C5 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 01C8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 01CB _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 01CE _ 8B. 48, 04
        mov     eax, edx                                ; 01D1 _ 89. D0
        cdq                                             ; 01D3 _ 99
        idiv    ecx                                     ; 01D4 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 01D6 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 01D9 _ 89. 50, 0C
        movzx   eax, byte [ebp-1H]                      ; 01DC _ 0F B6. 45, FF
        leave                                           ; 01E0 _ C9
        ret                                             ; 01E1 _ C3
; fifo8_r End of function

fifo8_isEmpty:; Function begin
        push    ebp                                     ; 01E2 _ 55
        mov     ebp, esp                                ; 01E3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 01E5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 01E8 _ 8B. 40, 08
        test    eax, eax                                ; 01EB _ 85. C0
        sete    al                                      ; 01ED _ 0F 94. C0
        movzx   eax, al                                 ; 01F0 _ 0F B6. C0
        pop     ebp                                     ; 01F3 _ 5D
        ret                                             ; 01F4 _ C3
; fifo8_isEmpty End of function

fifo8_isFull:; Function begin
        push    ebp                                     ; 01F5 _ 55
        mov     ebp, esp                                ; 01F6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 01F8 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 01FB _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 01FE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0201 _ 8B. 40, 04
        cmp     edx, eax                                ; 0204 _ 39. C2
        sete    al                                      ; 0206 _ 0F 94. C0
        movzx   eax, al                                 ; 0209 _ 0F B6. C0
        pop     ebp                                     ; 020C _ 5D
        ret                                             ; 020D _ C3
; fifo8_isFull End of function

set_pict:; Function begin
        push    ebp                                     ; 020E _ 55
        mov     ebp, esp                                ; 020F _ 89. E5
        sub     esp, 24                                 ; 0211 _ 83. EC, 18
        call    io_load_eflags                          ; 0214 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0219 _ 89. 45, F4
        call    io_cli                                  ; 021C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0221 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 0224 _ FF. 75, 14
        push    968                                     ; 0227 _ 68, 000003C8
        call    io_out8                                 ; 022C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0231 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0234 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0237 _ 89. 45, F0
        jmp     ?_012                                   ; 023A _ EB, 65

?_011:  mov     eax, dword [ebp+10H]                    ; 023C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 023F _ 0F B6. 00
        shr     al, 2                                   ; 0242 _ C0. E8, 02
        movzx   eax, al                                 ; 0245 _ 0F B6. C0
        sub     esp, 8                                  ; 0248 _ 83. EC, 08
        push    eax                                     ; 024B _ 50
        push    969                                     ; 024C _ 68, 000003C9
        call    io_out8                                 ; 0251 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0256 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0259 _ 8B. 45, 10
        add     eax, 1                                  ; 025C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 025F _ 0F B6. 00
        shr     al, 2                                   ; 0262 _ C0. E8, 02
        movzx   eax, al                                 ; 0265 _ 0F B6. C0
        sub     esp, 8                                  ; 0268 _ 83. EC, 08
        push    eax                                     ; 026B _ 50
        push    969                                     ; 026C _ 68, 000003C9
        call    io_out8                                 ; 0271 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0276 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0279 _ 8B. 45, 10
        add     eax, 2                                  ; 027C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 027F _ 0F B6. 00
        shr     al, 2                                   ; 0282 _ C0. E8, 02
        movzx   eax, al                                 ; 0285 _ 0F B6. C0
        sub     esp, 8                                  ; 0288 _ 83. EC, 08
        push    eax                                     ; 028B _ 50
        push    969                                     ; 028C _ 68, 000003C9
        call    io_out8                                 ; 0291 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0296 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0299 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 029D _ 83. 45, F0, 01
?_012:  mov     eax, dword [ebp-10H]                    ; 02A1 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 02A4 _ 3B. 45, 0C
        jl      ?_011                                   ; 02A7 _ 7C, 93
        sub     esp, 12                                 ; 02A9 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 02AC _ FF. 75, F4
        call    io_store_eflags                         ; 02AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B4 _ 83. C4, 10
        nop                                             ; 02B7 _ 90
        leave                                           ; 02B8 _ C9
        ret                                             ; 02B9 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 02BA _ 55
        mov     ebp, esp                                ; 02BB _ 89. E5
        sub     esp, 8                                  ; 02BD _ 83. EC, 08
        push    0                                       ; 02C0 _ 6A, 00
        push    pict                                    ; 02C2 _ 68, 00000000(d)
        push    16                                      ; 02C7 _ 6A, 10
        push    0                                       ; 02C9 _ 6A, 00
        call    set_pict                                ; 02CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D0 _ 83. C4, 10
        nop                                             ; 02D3 _ 90
        leave                                           ; 02D4 _ C9
        ret                                             ; 02D5 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 02D6 _ 55
        mov     ebp, esp                                ; 02D7 _ 89. E5
        sub     esp, 20                                 ; 02D9 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 02DC _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 02DF _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 02E2 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 02E5 _ 89. 45, FC
        jmp     ?_016                                   ; 02E8 _ EB, 33

?_013:  mov     eax, dword [ebp+14H]                    ; 02EA _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 02ED _ 89. 45, F8
        jmp     ?_015                                   ; 02F0 _ EB, 1F

?_014:  mov     eax, dword [ebp-4H]                     ; 02F2 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 02F5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02F9 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 02FB _ 8B. 45, F8
        add     eax, edx                                ; 02FE _ 01. D0
        mov     edx, eax                                ; 0300 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0302 _ 8B. 45, 08
        add     edx, eax                                ; 0305 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0307 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 030B _ 88. 02
        add     dword [ebp-8H], 1                       ; 030D _ 83. 45, F8, 01
?_015:  mov     eax, dword [ebp-8H]                     ; 0311 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0314 _ 3B. 45, 1C
        jle     ?_014                                   ; 0317 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0319 _ 83. 45, FC, 01
?_016:  mov     eax, dword [ebp-4H]                     ; 031D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0320 _ 3B. 45, 20
        jle     ?_013                                   ; 0323 _ 7E, C5
        nop                                             ; 0325 _ 90
        leave                                           ; 0326 _ C9
        ret                                             ; 0327 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 0328 _ 55
        mov     ebp, esp                                ; 0329 _ 89. E5
        sub     esp, 20                                 ; 032B _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 032E _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0331 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0334 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 0338 _ 83. E8, 61
        shl     eax, 4                                  ; 033B _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 033E _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0343 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0346 _ 8B. 45, FC
        leave                                           ; 0349 _ C9
        ret                                             ; 034A _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 034B _ 55
        mov     ebp, esp                                ; 034C _ 89. E5
        sub     esp, 20                                 ; 034E _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0351 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0354 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0357 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 035B _ 83. E8, 30
        shl     eax, 4                                  ; 035E _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0361 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0366 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0369 _ 8B. 45, FC
        leave                                           ; 036C _ C9
        ret                                             ; 036D _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 036E _ 55
        mov     ebp, esp                                ; 036F _ 89. E5
        sub     esp, 20                                 ; 0371 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0374 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0377 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 037A _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0381 _ E9, 0000016C

?_017:  mov     edx, dword [ebp-4H]                     ; 0386 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0389 _ 8B. 45, 1C
        add     eax, edx                                ; 038C _ 01. D0
        movzx   eax, byte [eax]                         ; 038E _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0391 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0394 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0398 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 039A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 039D _ 8B. 45, FC
        add     eax, edx                                ; 03A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03A2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03A6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03A8 _ 8B. 45, 10
        add     eax, edx                                ; 03AB _ 01. D0
        mov     edx, eax                                ; 03AD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 03AF _ 8B. 45, 08
        add     edx, eax                                ; 03B2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03B4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03B8 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 03BA _ 0F BE. 45, FB
        and     eax, 40H                                ; 03BE _ 83. E0, 40
        test    eax, eax                                ; 03C1 _ 85. C0
        jz      ?_019                                   ; 03C3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03C5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03C8 _ 8B. 45, FC
        add     eax, edx                                ; 03CB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03CD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03D1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03D3 _ 8B. 45, 10
        add     eax, edx                                ; 03D6 _ 01. D0
        lea     edx, [eax+1H]                           ; 03D8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 03DB _ 8B. 45, 08
        add     edx, eax                                ; 03DE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03E0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03E4 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 03E6 _ 0F BE. 45, FB
        and     eax, 20H                                ; 03EA _ 83. E0, 20
        test    eax, eax                                ; 03ED _ 85. C0
        jz      ?_020                                   ; 03EF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03F1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03F4 _ 8B. 45, FC
        add     eax, edx                                ; 03F7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03F9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03FD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03FF _ 8B. 45, 10
        add     eax, edx                                ; 0402 _ 01. D0
        lea     edx, [eax+2H]                           ; 0404 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0407 _ 8B. 45, 08
        add     edx, eax                                ; 040A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 040C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0410 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0412 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0416 _ 83. E0, 10
        test    eax, eax                                ; 0419 _ 85. C0
        jz      ?_021                                   ; 041B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 041D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0420 _ 8B. 45, FC
        add     eax, edx                                ; 0423 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0425 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0429 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 042B _ 8B. 45, 10
        add     eax, edx                                ; 042E _ 01. D0
        lea     edx, [eax+3H]                           ; 0430 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0433 _ 8B. 45, 08
        add     edx, eax                                ; 0436 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0438 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 043C _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 043E _ 0F BE. 45, FB
        and     eax, 08H                                ; 0442 _ 83. E0, 08
        test    eax, eax                                ; 0445 _ 85. C0
        jz      ?_022                                   ; 0447 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0449 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 044C _ 8B. 45, FC
        add     eax, edx                                ; 044F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0451 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0455 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0457 _ 8B. 45, 10
        add     eax, edx                                ; 045A _ 01. D0
        lea     edx, [eax+4H]                           ; 045C _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 045F _ 8B. 45, 08
        add     edx, eax                                ; 0462 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0464 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0468 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 046A _ 0F BE. 45, FB
        and     eax, 04H                                ; 046E _ 83. E0, 04
        test    eax, eax                                ; 0471 _ 85. C0
        jz      ?_023                                   ; 0473 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0475 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0478 _ 8B. 45, FC
        add     eax, edx                                ; 047B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 047D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0481 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0483 _ 8B. 45, 10
        add     eax, edx                                ; 0486 _ 01. D0
        lea     edx, [eax+5H]                           ; 0488 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 048B _ 8B. 45, 08
        add     edx, eax                                ; 048E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0490 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0494 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0496 _ 0F BE. 45, FB
        and     eax, 02H                                ; 049A _ 83. E0, 02
        test    eax, eax                                ; 049D _ 85. C0
        jz      ?_024                                   ; 049F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04A1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04A4 _ 8B. 45, FC
        add     eax, edx                                ; 04A7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04A9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04AD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04AF _ 8B. 45, 10
        add     eax, edx                                ; 04B2 _ 01. D0
        lea     edx, [eax+6H]                           ; 04B4 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 04B7 _ 8B. 45, 08
        add     edx, eax                                ; 04BA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04BC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04C0 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 04C2 _ 0F BE. 45, FB
        and     eax, 01H                                ; 04C6 _ 83. E0, 01
        test    eax, eax                                ; 04C9 _ 85. C0
        jz      ?_025                                   ; 04CB _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04CD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04D0 _ 8B. 45, FC
        add     eax, edx                                ; 04D3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04D5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04D9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04DB _ 8B. 45, 10
        add     eax, edx                                ; 04DE _ 01. D0
        lea     edx, [eax+7H]                           ; 04E0 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 04E3 _ 8B. 45, 08
        add     edx, eax                                ; 04E6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04E8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04EC _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 04EE _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 04F2 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 04F6 _ 0F 8E, FFFFFE8A
        nop                                             ; 04FC _ 90
        leave                                           ; 04FD _ C9
        ret                                             ; 04FE _ C3
; showFont8 End of function

putChar:; Function begin
        push    ebp                                     ; 04FF _ 55
        mov     ebp, esp                                ; 0500 _ 89. E5
        sub     esp, 4                                  ; 0502 _ 83. EC, 04
        mov     eax, dword [ebp+1CH]                    ; 0505 _ 8B. 45, 1C
        mov     byte [ebp-4H], al                       ; 0508 _ 88. 45, FC
        cmp     byte [ebp-4H], 57                       ; 050B _ 80. 7D, FC, 39
        ja      ?_027                                   ; 050F _ 77, 39
        cmp     byte [ebp-4H], 47                       ; 0511 _ 80. 7D, FC, 2F
        jbe     ?_027                                   ; 0515 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0517 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 051B _ 0F BE. C0
        push    eax                                     ; 051E _ 50
        call    getAddrOffsetNumber                     ; 051F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0524 _ 83. C4, 04
        mov     edx, eax                                ; 0527 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0529 _ 8B. 45, 18
        movsx   eax, al                                 ; 052C _ 0F BE. C0
        push    edx                                     ; 052F _ 52
        push    eax                                     ; 0530 _ 50
        push    dword [ebp+14H]                         ; 0531 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0534 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0537 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 053A _ FF. 75, 08
        call    showFont8                               ; 053D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0542 _ 83. C4, 18
        jmp     ?_031                                   ; 0545 _ E9, 000000A9

?_027:  cmp     byte [ebp-4H], 122                      ; 054A _ 80. 7D, FC, 7A
        ja      ?_028                                   ; 054E _ 77, 36
        cmp     byte [ebp-4H], 96                       ; 0550 _ 80. 7D, FC, 60
        jbe     ?_028                                   ; 0554 _ 76, 30
        movzx   eax, byte [ebp-4H]                      ; 0556 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 055A _ 0F BE. C0
        push    eax                                     ; 055D _ 50
        call    getAddrOffsetAlpha                      ; 055E _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0563 _ 83. C4, 04
        mov     edx, eax                                ; 0566 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0568 _ 8B. 45, 18
        movsx   eax, al                                 ; 056B _ 0F BE. C0
        push    edx                                     ; 056E _ 52
        push    eax                                     ; 056F _ 50
        push    dword [ebp+14H]                         ; 0570 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0573 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0576 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0579 _ FF. 75, 08
        call    showFont8                               ; 057C _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0581 _ 83. C4, 18
        jmp     ?_031                                   ; 0584 _ EB, 6D

?_028:  cmp     byte [ebp-4H], 90                       ; 0586 _ 80. 7D, FC, 5A
        ja      ?_029                                   ; 058A _ 77, 39
        cmp     byte [ebp-4H], 64                       ; 058C _ 80. 7D, FC, 40
        jbe     ?_029                                   ; 0590 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0592 _ 0F B6. 45, FC
        add     eax, 32                                 ; 0596 _ 83. C0, 20
        movsx   eax, al                                 ; 0599 _ 0F BE. C0
        push    eax                                     ; 059C _ 50
        call    getAddrOffsetAlpha                      ; 059D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 05A2 _ 83. C4, 04
        mov     edx, eax                                ; 05A5 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 05A7 _ 8B. 45, 18
        movsx   eax, al                                 ; 05AA _ 0F BE. C0
        push    edx                                     ; 05AD _ 52
        push    eax                                     ; 05AE _ 50
        push    dword [ebp+14H]                         ; 05AF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 05B2 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 05B5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05B8 _ FF. 75, 08
        call    showFont8                               ; 05BB _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05C0 _ 83. C4, 18
        jmp     ?_031                                   ; 05C3 _ EB, 2E

?_029:  cmp     byte [ebp-4H], 32                       ; 05C5 _ 80. 7D, FC, 20
        jnz     ?_030                                   ; 05C9 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 05CB _ 8B. 45, 18
        movsx   eax, al                                 ; 05CE _ 0F BE. C0
        push    vsFont_EMPTY                            ; 05D1 _ 68, 00000000(d)
        push    eax                                     ; 05D6 _ 50
        push    dword [ebp+14H]                         ; 05D7 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 05DA _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 05DD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05E0 _ FF. 75, 08
        call    showFont8                               ; 05E3 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05E8 _ 83. C4, 18
        jmp     ?_031                                   ; 05EB _ EB, 06

?_030:  movzx   eax, byte [ebp-4H]                      ; 05ED _ 0F B6. 45, FC
        jmp     ?_031                                   ; 05F1 _ EB, 00

?_031:  leave                                           ; 05F3 _ C9
        ret                                             ; 05F4 _ C3
; putChar End of function

putStr: ; Function begin
        push    ebp                                     ; 05F5 _ 55
        mov     ebp, esp                                ; 05F6 _ 89. E5
        sub     esp, 16                                 ; 05F8 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 05FB _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 0602 _ EB, 36

?_032:  mov     edx, dword [ebp-4H]                     ; 0604 _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 0607 _ 8B. 45, 20
        add     eax, edx                                ; 060A _ 01. D0
        movzx   eax, byte [eax]                         ; 060C _ 0F B6. 00
        movzx   eax, al                                 ; 060F _ 0F B6. C0
        mov     edx, dword [ebp+18H]                    ; 0612 _ 8B. 55, 18
        mov     ecx, edx                                ; 0615 _ 89. D1
        imul    ecx, dword [ebp-4H]                     ; 0617 _ 0F AF. 4D, FC
        mov     edx, dword [ebp+10H]                    ; 061B _ 8B. 55, 10
        add     edx, ecx                                ; 061E _ 01. CA
        push    eax                                     ; 0620 _ 50
        push    dword [ebp+1CH]                         ; 0621 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 0624 _ FF. 75, 14
        push    edx                                     ; 0627 _ 52
        push    dword [ebp+0CH]                         ; 0628 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 062B _ FF. 75, 08
        call    putChar                                 ; 062E _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0633 _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 0636 _ 83. 45, FC, 01
?_033:  mov     eax, dword [ebp-4H]                     ; 063A _ 8B. 45, FC
        cmp     eax, dword [ebp+24H]                    ; 063D _ 3B. 45, 24
        jl      ?_032                                   ; 0640 _ 7C, C2
        nop                                             ; 0642 _ 90
        leave                                           ; 0643 _ C9
        ret                                             ; 0644 _ C3
; putStr End of function

charToPictColor:; Function begin
        push    ebp                                     ; 0645 _ 55
        mov     ebp, esp                                ; 0646 _ 89. E5
        sub     esp, 4                                  ; 0648 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 064B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 064E _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0651 _ 80. 7D, FC, 2A
        jnz     ?_034                                   ; 0655 _ 75, 0A
        mov     eax, 0                                  ; 0657 _ B8, 00000000
        jmp     ?_049                                   ; 065C _ E9, 000000D2

?_034:  cmp     byte [ebp-4H], 114                      ; 0661 _ 80. 7D, FC, 72
        jnz     ?_035                                   ; 0665 _ 75, 0A
        mov     eax, 1                                  ; 0667 _ B8, 00000001
        jmp     ?_049                                   ; 066C _ E9, 000000C2

?_035:  cmp     byte [ebp-4H], 103                      ; 0671 _ 80. 7D, FC, 67
        jnz     ?_036                                   ; 0675 _ 75, 0A
        mov     eax, 2                                  ; 0677 _ B8, 00000002
        jmp     ?_049                                   ; 067C _ E9, 000000B2

?_036:  cmp     byte [ebp-4H], 121                      ; 0681 _ 80. 7D, FC, 79
        jnz     ?_037                                   ; 0685 _ 75, 0A
        mov     eax, 3                                  ; 0687 _ B8, 00000003
        jmp     ?_049                                   ; 068C _ E9, 000000A2

?_037:  cmp     byte [ebp-4H], 98                       ; 0691 _ 80. 7D, FC, 62
        jnz     ?_038                                   ; 0695 _ 75, 0A
        mov     eax, 4                                  ; 0697 _ B8, 00000004
        jmp     ?_049                                   ; 069C _ E9, 00000092

?_038:  cmp     byte [ebp-4H], 112                      ; 06A1 _ 80. 7D, FC, 70
        jnz     ?_039                                   ; 06A5 _ 75, 0A
        mov     eax, 5                                  ; 06A7 _ B8, 00000005
        jmp     ?_049                                   ; 06AC _ E9, 00000082

?_039:  cmp     byte [ebp-4H], 108                      ; 06B1 _ 80. 7D, FC, 6C
        jnz     ?_040                                   ; 06B5 _ 75, 07
        mov     eax, 6                                  ; 06B7 _ B8, 00000006
        jmp     ?_049                                   ; 06BC _ EB, 75

?_040:  cmp     byte [ebp-4H], 119                      ; 06BE _ 80. 7D, FC, 77
        jnz     ?_041                                   ; 06C2 _ 75, 07
        mov     eax, 7                                  ; 06C4 _ B8, 00000007
        jmp     ?_049                                   ; 06C9 _ EB, 68

?_041:  cmp     byte [ebp-4H], 45                       ; 06CB _ 80. 7D, FC, 2D
        jnz     ?_042                                   ; 06CF _ 75, 07
        mov     eax, 8                                  ; 06D1 _ B8, 00000008
        jmp     ?_049                                   ; 06D6 _ EB, 5B

?_042:  cmp     byte [ebp-4H], 82                       ; 06D8 _ 80. 7D, FC, 52
        jnz     ?_043                                   ; 06DC _ 75, 07
        mov     eax, 9                                  ; 06DE _ B8, 00000009
        jmp     ?_049                                   ; 06E3 _ EB, 4E

?_043:  cmp     byte [ebp-4H], 71                       ; 06E5 _ 80. 7D, FC, 47
        jnz     ?_044                                   ; 06E9 _ 75, 07
        mov     eax, 10                                 ; 06EB _ B8, 0000000A
        jmp     ?_049                                   ; 06F0 _ EB, 41

?_044:  cmp     byte [ebp-4H], 89                       ; 06F2 _ 80. 7D, FC, 59
        jnz     ?_045                                   ; 06F6 _ 75, 07
        mov     eax, 11                                 ; 06F8 _ B8, 0000000B
        jmp     ?_049                                   ; 06FD _ EB, 34

?_045:  cmp     byte [ebp-4H], 66                       ; 06FF _ 80. 7D, FC, 42
        jnz     ?_046                                   ; 0703 _ 75, 07
        mov     eax, 12                                 ; 0705 _ B8, 0000000C
        jmp     ?_049                                   ; 070A _ EB, 27

?_046:  cmp     byte [ebp-4H], 80                       ; 070C _ 80. 7D, FC, 50
        jnz     ?_047                                   ; 0710 _ 75, 07
        mov     eax, 13                                 ; 0712 _ B8, 0000000D
        jmp     ?_049                                   ; 0717 _ EB, 1A

?_047:  cmp     byte [ebp-4H], 115                      ; 0719 _ 80. 7D, FC, 73
        jnz     ?_048                                   ; 071D _ 75, 07
        mov     eax, 14                                 ; 071F _ B8, 0000000E
        jmp     ?_049                                   ; 0724 _ EB, 0D

?_048:  cmp     byte [ebp-4H], 61                       ; 0726 _ 80. 7D, FC, 3D
        jnz     ?_049                                   ; 072A _ 75, 07
        mov     eax, 15                                 ; 072C _ B8, 0000000F
        jmp     ?_049                                   ; 0731 _ EB, 00

?_049:  leave                                           ; 0733 _ C9
        ret                                             ; 0734 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 0735 _ 55
        mov     ebp, esp                                ; 0736 _ 89. E5
        push    ebx                                     ; 0738 _ 53
        sub     esp, 16                                 ; 0739 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 073C _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0743 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 074A _ C7. 45, F8, 00000000
?_050:  mov     edx, dword [ebp-8H]                     ; 0751 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0754 _ 8B. 45, 18
        add     eax, edx                                ; 0757 _ 01. D0
        movzx   eax, byte [eax]                         ; 0759 _ 0F B6. 00
        test    al, al                                  ; 075C _ 84. C0
        jnz     ?_051                                   ; 075E _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0760 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0763 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0766 _ 8B. 45, 18
        add     eax, edx                                ; 0769 _ 01. D0
        movzx   eax, byte [eax]                         ; 076B _ 0F B6. 00
        test    al, al                                  ; 076E _ 84. C0
        jz      ?_054                                   ; 0770 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0772 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0776 _ C7. 45, F4, 00000000
        jmp     ?_053                                   ; 077D _ EB, 4C

?_051:  mov     edx, dword [ebp-8H]                     ; 077F _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0782 _ 8B. 45, 18
        add     eax, edx                                ; 0785 _ 01. D0
        movzx   eax, byte [eax]                         ; 0787 _ 0F B6. 00
        cmp     al, 46                                  ; 078A _ 3C, 2E
        jz      ?_052                                   ; 078C _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 078E _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 0791 _ 8B. 45, F0
        add     eax, edx                                ; 0794 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0796 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 079A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 079C _ 8B. 45, 10
        add     edx, eax                                ; 079F _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 07A1 _ 8B. 45, F4
        add     eax, edx                                ; 07A4 _ 01. D0
        mov     edx, eax                                ; 07A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07A8 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 07AB _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 07AE _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 07B1 _ 8B. 45, 18
        add     eax, edx                                ; 07B4 _ 01. D0
        movzx   eax, byte [eax]                         ; 07B6 _ 0F B6. 00
        movsx   eax, al                                 ; 07B9 _ 0F BE. C0
        push    eax                                     ; 07BC _ 50
        call    charToPictColor                         ; 07BD _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 07C2 _ 83. C4, 04
        mov     byte [ebx], al                          ; 07C5 _ 88. 03
?_052:  add     dword [ebp-0CH], 1                      ; 07C7 _ 83. 45, F4, 01
?_053:  add     dword [ebp-8H], 1                       ; 07CB _ 83. 45, F8, 01
        jmp     ?_050                                   ; 07CF _ EB, 80

?_054:  nop                                             ; 07D1 _ 90
        mov     ebx, dword [ebp-4H]                     ; 07D2 _ 8B. 5D, FC
        leave                                           ; 07D5 _ C9
        ret                                             ; 07D6 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 07D7 _ 55
        mov     ebp, esp                                ; 07D8 _ 89. E5
        sub     esp, 16                                 ; 07DA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 07DD _ C7. 45, FC, 00000000
        jmp     ?_056                                   ; 07E4 _ EB, 11

?_055:  mov     edx, dword [ebp-4H]                     ; 07E6 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 07E9 _ 8B. 45, 08
        add     eax, edx                                ; 07EC _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 07EE _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 07F1 _ 88. 10
        add     dword [ebp-4H], 1                       ; 07F3 _ 83. 45, FC, 01
?_056:  cmp     dword [ebp-4H], 65534                   ; 07F7 _ 81. 7D, FC, 0000FFFE
        jle     ?_055                                   ; 07FE _ 7E, E6
        nop                                             ; 0800 _ 90
        leave                                           ; 0801 _ C9
        ret                                             ; 0802 _ C3
; fillAll End of function

Println:; Function begin
        push    ebp                                     ; 0803 _ 55
        mov     ebp, esp                                ; 0804 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0806 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0809 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 080C _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 080F _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0811 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0814 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0817 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 081A _ 8B. 40, 0C
        add     edx, eax                                ; 081D _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 081F _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0822 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0825 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0828 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 082B _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 082E _ 0F B7. 40, 06
        cwde                                            ; 0832 _ 98
        cmp     edx, eax                                ; 0833 _ 39. C2
        jl      ?_057                                   ; 0835 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0837 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 083A _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 083D _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0840 _ 89. 50, 04
?_057:  nop                                             ; 0843 _ 90
        pop     ebp                                     ; 0844 _ 5D
        ret                                             ; 0845 _ C3
; Println End of function

Printf: ; Function begin
        push    ebp                                     ; 0846 _ 55
        mov     ebp, esp                                ; 0847 _ 89. E5
        sub     esp, 16                                 ; 0849 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 084C _ 8B. 45, 10
        movzx   eax, word [eax+4H]                      ; 084F _ 0F B7. 40, 04
        cwde                                            ; 0853 _ 98
        mov     dword [ebp-0CH], eax                    ; 0854 _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 0857 _ 8B. 45, 10
        movzx   eax, word [eax+6H]                      ; 085A _ 0F B7. 40, 06
        cwde                                            ; 085E _ 98
        mov     dword [ebp-8H], eax                     ; 085F _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0862 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0865 _ 8B. 00
        mov     dword [ebp-4H], eax                     ; 0867 _ 89. 45, FC
        mov     eax, dword [ebp+14H]                    ; 086A _ 8B. 45, 14
        mov     ecx, dword [eax+8H]                     ; 086D _ 8B. 48, 08
        mov     eax, dword [ebp+14H]                    ; 0870 _ 8B. 45, 14
        mov     edx, dword [eax+4H]                     ; 0873 _ 8B. 50, 04
        mov     eax, dword [ebp+14H]                    ; 0876 _ 8B. 45, 14
        mov     eax, dword [eax]                        ; 0879 _ 8B. 00
        push    dword [ebp+0CH]                         ; 087B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 087E _ FF. 75, 08
        push    7                                       ; 0881 _ 6A, 07
        push    ecx                                     ; 0883 _ 51
        push    edx                                     ; 0884 _ 52
        push    eax                                     ; 0885 _ 50
        push    dword [ebp-0CH]                         ; 0886 _ FF. 75, F4
        push    dword [ebp-4H]                          ; 0889 _ FF. 75, FC
        call    putStr                                  ; 088C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0891 _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 0894 _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 0897 _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 0899 _ 8B. 45, 14
        mov     eax, dword [eax+8H]                     ; 089C _ 8B. 40, 08
        imul    eax, dword [ebp+0CH]                    ; 089F _ 0F AF. 45, 0C
        add     edx, eax                                ; 08A3 _ 01. C2
        mov     eax, dword [ebp+14H]                    ; 08A5 _ 8B. 45, 14
        mov     dword [eax], edx                        ; 08A8 _ 89. 10
        mov     eax, dword [ebp+14H]                    ; 08AA _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 08AD _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 08AF _ 8B. 45, 14
        mov     eax, dword [eax+10H]                    ; 08B2 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 08B5 _ 8B. 4D, F4
        sub     ecx, eax                                ; 08B8 _ 29. C1
        mov     eax, ecx                                ; 08BA _ 89. C8
        cmp     edx, eax                                ; 08BC _ 39. C2
        jl      ?_058                                   ; 08BE _ 7C, 0E
        push    dword [ebp+14H]                         ; 08C0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 08C3 _ FF. 75, 10
        call    Println                                 ; 08C6 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 08CB _ 83. C4, 08
?_058:  nop                                             ; 08CE _ 90
        leave                                           ; 08CF _ C9
        ret                                             ; 08D0 _ C3
; Printf End of function

PrintChar:; Function begin
        push    ebp                                     ; 08D1 _ 55
        mov     ebp, esp                                ; 08D2 _ 89. E5
        sub     esp, 20                                 ; 08D4 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 08D7 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 08DA _ 88. 45, EC
        mov     eax, dword [ebp+0CH]                    ; 08DD _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 08E0 _ 0F B7. 40, 04
        cwde                                            ; 08E4 _ 98
        mov     dword [ebp-0CH], eax                    ; 08E5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 08E8 _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 08EB _ 0F B7. 40, 06
        cwde                                            ; 08EF _ 98
        mov     dword [ebp-8H], eax                     ; 08F0 _ 89. 45, F8
        mov     eax, dword [ebp+0CH]                    ; 08F3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 08F6 _ 8B. 00
        mov     dword [ebp-4H], eax                     ; 08F8 _ 89. 45, FC
        movzx   eax, byte [ebp-14H]                     ; 08FB _ 0F B6. 45, EC
        movzx   ecx, al                                 ; 08FF _ 0F B6. C8
        mov     eax, dword [ebp+10H]                    ; 0902 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0905 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0908 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 090B _ 8B. 00
        push    ecx                                     ; 090D _ 51
        push    7                                       ; 090E _ 6A, 07
        push    edx                                     ; 0910 _ 52
        push    eax                                     ; 0911 _ 50
        push    dword [ebp-0CH]                         ; 0912 _ FF. 75, F4
        push    dword [ebp-4H]                          ; 0915 _ FF. 75, FC
        call    putChar                                 ; 0918 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 091D _ 83. C4, 18
        mov     eax, dword [ebp+10H]                    ; 0920 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0923 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0925 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0928 _ 8B. 40, 08
        add     edx, eax                                ; 092B _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 092D _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0930 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0932 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0935 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0937 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 093A _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 093D _ 8B. 4D, F4
        sub     ecx, eax                                ; 0940 _ 29. C1
        mov     eax, ecx                                ; 0942 _ 89. C8
        cmp     edx, eax                                ; 0944 _ 39. C2
        jl      ?_059                                   ; 0946 _ 7C, 0E
        push    dword [ebp+10H]                         ; 0948 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 094B _ FF. 75, 0C
        call    Println                                 ; 094E _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0953 _ 83. C4, 08
?_059:  nop                                             ; 0956 _ 90
        leave                                           ; 0957 _ C9
        ret                                             ; 0958 _ C3
; PrintChar End of function

PrintTab:; Function begin
        push    ebp                                     ; 0959 _ 55
        mov     ebp, esp                                ; 095A _ 89. E5
        push    ebx                                     ; 095C _ 53
        sub     esp, 16                                 ; 095D _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0960 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0963 _ 0F B7. 40, 04
        cwde                                            ; 0967 _ 98
        mov     dword [ebp-0CH], eax                    ; 0968 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 096B _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 096E _ 0F B7. 40, 06
        cwde                                            ; 0972 _ 98
        mov     dword [ebp-8H], eax                     ; 0973 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 0976 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0979 _ 0F B7. 40, 04
        cwde                                            ; 097D _ 98
        mov     edx, dword [ebp+0CH]                    ; 097E _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0981 _ 8B. 5A, 18
        cdq                                             ; 0984 _ 99
        idiv    ebx                                     ; 0985 _ F7. FB
        mov     word [ebp-0EH], ax                      ; 0987 _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 098B _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 098F _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0992 _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 0994 _ 0F BF. 45, F2
        add     eax, edx                                ; 0998 _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 099A _ 0F BF. 5D, F2
        cdq                                             ; 099E _ 99
        idiv    ebx                                     ; 099F _ F7. FB
        imul    ecx, eax                                ; 09A1 _ 0F AF. C8
        mov     edx, ecx                                ; 09A4 _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 09A6 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 09A9 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 09AB _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 09AE _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 09B0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 09B3 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 09B6 _ 8B. 4D, F4
        sub     ecx, eax                                ; 09B9 _ 29. C1
        mov     eax, ecx                                ; 09BB _ 89. C8
        cmp     edx, eax                                ; 09BD _ 39. C2
        jl      ?_060                                   ; 09BF _ 7C, 0E
        push    dword [ebp+0CH]                         ; 09C1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09C4 _ FF. 75, 08
        call    Println                                 ; 09C7 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 09CC _ 83. C4, 08
?_060:  nop                                             ; 09CF _ 90
        mov     ebx, dword [ebp-4H]                     ; 09D0 _ 8B. 5D, FC
        leave                                           ; 09D3 _ C9
        ret                                             ; 09D4 _ C3
; PrintTab End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 09D5 _ 55
        mov     ebp, esp                                ; 09D6 _ 89. E5
        nop                                             ; 09D8 _ 90
        pop     ebp                                     ; 09D9 _ 5D
        ret                                             ; 09DA _ C3
; showMemoryInfo End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 09DB _ 55
        mov     ebp, esp                                ; 09DC _ 89. E5
        sub     esp, 8                                  ; 09DE _ 83. EC, 08
?_061:  sub     esp, 12                                 ; 09E1 _ 83. EC, 0C
        push    100                                     ; 09E4 _ 6A, 64
        call    io_in8                                  ; 09E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09EB _ 83. C4, 10
        movsx   eax, al                                 ; 09EE _ 0F BE. C0
        and     eax, 02H                                ; 09F1 _ 83. E0, 02
        test    eax, eax                                ; 09F4 _ 85. C0
        jz      ?_062                                   ; 09F6 _ 74, 02
        jmp     ?_061                                   ; 09F8 _ EB, E7

?_062:  nop                                             ; 09FA _ 90
        nop                                             ; 09FB _ 90
        leave                                           ; 09FC _ C9
        ret                                             ; 09FD _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 09FE _ 55
        mov     ebp, esp                                ; 09FF _ 89. E5
        sub     esp, 8                                  ; 0A01 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A04 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A09 _ 83. EC, 08
        push    96                                      ; 0A0C _ 6A, 60
        push    100                                     ; 0A0E _ 6A, 64
        call    io_out8                                 ; 0A10 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A15 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A18 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A1D _ 83. EC, 08
        push    71                                      ; 0A20 _ 6A, 47
        push    96                                      ; 0A22 _ 6A, 60
        call    io_out8                                 ; 0A24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A29 _ 83. C4, 10
        nop                                             ; 0A2C _ 90
        leave                                           ; 0A2D _ C9
        ret                                             ; 0A2E _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0A2F _ 55
        mov     ebp, esp                                ; 0A30 _ 89. E5
        sub     esp, 8                                  ; 0A32 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A35 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A3A _ 83. EC, 08
        push    212                                     ; 0A3D _ 68, 000000D4
        push    100                                     ; 0A42 _ 6A, 64
        call    io_out8                                 ; 0A44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A49 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A4C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A51 _ 83. EC, 08
        push    244                                     ; 0A54 _ 68, 000000F4
        push    96                                      ; 0A59 _ 6A, 60
        call    io_out8                                 ; 0A5B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A60 _ 83. C4, 10
        nop                                             ; 0A63 _ 90
        leave                                           ; 0A64 _ C9
        ret                                             ; 0A65 _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0A66 _ 55
        mov     ebp, esp                                ; 0A67 _ 89. E5
        sub     esp, 4                                  ; 0A69 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0A6C _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0A6F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0A72 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0A75 _ 0F B6. 40, 03
        test    al, al                                  ; 0A79 _ 84. C0
        jnz     ?_064                                   ; 0A7B _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0A7D _ 80. 7D, FC, FA
        jnz     ?_063                                   ; 0A81 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0A83 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0A86 _ C6. 40, 03, 01
?_063:  mov     eax, 0                                  ; 0A8A _ B8, 00000000
        jmp     ?_071                                   ; 0A8F _ E9, 0000010F

?_064:  mov     eax, dword [ebp+8H]                     ; 0A94 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0A97 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0A9B _ 3C, 01
        jnz     ?_066                                   ; 0A9D _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0A9F _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0AA3 _ 25, 000000C8
        cmp     eax, 8                                  ; 0AA8 _ 83. F8, 08
        jnz     ?_065                                   ; 0AAB _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0AAD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0AB0 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0AB4 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0AB6 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0AB9 _ C6. 40, 03, 02
?_065:  mov     eax, 0                                  ; 0ABD _ B8, 00000000
        jmp     ?_071                                   ; 0AC2 _ E9, 000000DC

?_066:  mov     eax, dword [ebp+8H]                     ; 0AC7 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0ACA _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0ACE _ 3C, 02
        jnz     ?_067                                   ; 0AD0 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0AD2 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0AD5 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0AD9 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0ADC _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0ADF _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0AE3 _ B8, 00000000
        jmp     ?_071                                   ; 0AE8 _ E9, 000000B6

?_067:  mov     eax, dword [ebp+8H]                     ; 0AED _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0AF0 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0AF4 _ 3C, 03
        jne     ?_070                                   ; 0AF6 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0AFC _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0AFF _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0B03 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0B06 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0B09 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0B0D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0B10 _ 0F B6. 00
        movzx   eax, al                                 ; 0B13 _ 0F B6. C0
        and     eax, 07H                                ; 0B16 _ 83. E0, 07
        mov     edx, eax                                ; 0B19 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B1B _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0B1E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0B21 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0B24 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0B28 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0B2B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0B2E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B31 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0B34 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0B38 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0B3B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B3E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0B41 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0B44 _ 0F B6. 00
        movzx   eax, al                                 ; 0B47 _ 0F B6. C0
        and     eax, 10H                                ; 0B4A _ 83. E0, 10
        test    eax, eax                                ; 0B4D _ 85. C0
        jz      ?_068                                   ; 0B4F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0B51 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B54 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0B57 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0B5C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B5E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0B61 _ 89. 50, 04
?_068:  mov     eax, dword [ebp+8H]                     ; 0B64 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0B67 _ 0F B6. 00
        movzx   eax, al                                 ; 0B6A _ 0F B6. C0
        and     eax, 20H                                ; 0B6D _ 83. E0, 20
        test    eax, eax                                ; 0B70 _ 85. C0
        jz      ?_069                                   ; 0B72 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0B74 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B77 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0B7A _ 0D, FFFFFF00
        mov     edx, eax                                ; 0B7F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B81 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B84 _ 89. 50, 08
?_069:  mov     eax, dword [ebp+8H]                     ; 0B87 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B8A _ 8B. 40, 08
        neg     eax                                     ; 0B8D _ F7. D8
        mov     edx, eax                                ; 0B8F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B91 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B94 _ 89. 50, 08
        mov     eax, 1                                  ; 0B97 _ B8, 00000001
        jmp     ?_071                                   ; 0B9C _ EB, 05

?_070:  mov     eax, 4294967295                         ; 0B9E _ B8, FFFFFFFF
?_071:  leave                                           ; 0BA3 _ C9
        ret                                             ; 0BA4 _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 0BA5 _ 55
        mov     ebp, esp                                ; 0BA6 _ 89. E5
        sub     esp, 4                                  ; 0BA8 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BAB _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BAE _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 0BB1 _ 80. 7D, FC, 0E
        jbe     ?_072                                   ; 0BB5 _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 0BB7 _ 80. 7D, FC, 35
        ja      ?_072                                   ; 0BBB _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 0BBD _ 0F B6. 45, FC
        sub     eax, 15                                 ; 0BC1 _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.1741+eax]       ; 0BC4 _ 0F B6. 80, 000000E0(d)
        jmp     ?_074                                   ; 0BCB _ EB, 21

?_072:  cmp     byte [ebp-4H], 1                        ; 0BCD _ 80. 7D, FC, 01
        jbe     ?_073                                   ; 0BD1 _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 0BD3 _ 80. 7D, FC, 0E
        ja      ?_073                                   ; 0BD7 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 0BD9 _ 0F B6. 45, FC
        sub     eax, 2                                  ; 0BDD _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.1742+eax]    ; 0BE0 _ 0F B6. 80, 00000108(d)
        jmp     ?_074                                   ; 0BE7 _ EB, 05

?_073:  mov     eax, 0                                  ; 0BE9 _ B8, 00000000
?_074:  leave                                           ; 0BEE _ C9
        ret                                             ; 0BEF _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 0BF0 _ 55
        mov     ebp, esp                                ; 0BF1 _ 89. E5
        sub     esp, 4                                  ; 0BF3 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BF6 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BF9 _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 0BFC _ 80. 7D, FC, 8E
        jbe     ?_075                                   ; 0C00 _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 0C02 _ 80. 7D, FC, B5
        ja      ?_075                                   ; 0C06 _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 0C08 _ 0F B6. 45, FC
        sub     eax, 143                                ; 0C0C _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.1746+eax]       ; 0C11 _ 0F B6. 80, 00000120(d)
        jmp     ?_077                                   ; 0C18 _ EB, 23

?_075:  cmp     byte [ebp-4H], -127                     ; 0C1A _ 80. 7D, FC, 81
        jbe     ?_076                                   ; 0C1E _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 0C20 _ 80. 7D, FC, 8E
        ja      ?_076                                   ; 0C24 _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 0C26 _ 0F B6. 45, FC
        sub     eax, 130                                ; 0C2A _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.1747+eax]    ; 0C2F _ 0F B6. 80, 00000148(d)
        jmp     ?_077                                   ; 0C36 _ EB, 05

?_076:  mov     eax, 0                                  ; 0C38 _ B8, 00000000
?_077:  leave                                           ; 0C3D _ C9
        ret                                             ; 0C3E _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0C3F _ 55
        mov     ebp, esp                                ; 0C40 _ 89. E5
        push    ebx                                     ; 0C42 _ 53
        mov     eax, dword [ebp+10H]                    ; 0C43 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0C46 _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0C49 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0C4C _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0C4F _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0C51 _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0C54 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0C57 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0C5A _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0C5D _ 8B. 00
        push    ebx                                     ; 0C5F _ 53
        push    ecx                                     ; 0C60 _ 51
        push    edx                                     ; 0C61 _ 52
        push    eax                                     ; 0C62 _ 50
        push    15                                      ; 0C63 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0C65 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C68 _ FF. 75, 08
        call    boxfill8                                ; 0C6B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0C70 _ 83. C4, 1C
        nop                                             ; 0C73 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0C74 _ 8B. 5D, FC
        leave                                           ; 0C77 _ C9
        ret                                             ; 0C78 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0C79 _ 55
        mov     ebp, esp                                ; 0C7A _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0C7C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0C7F _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0C82 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0C85 _ 8B. 00
        push    cursor                                  ; 0C87 _ 68, 00000000(d)
        push    edx                                     ; 0C8C _ 52
        push    eax                                     ; 0C8D _ 50
        push    dword [ebp+0CH]                         ; 0C8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C91 _ FF. 75, 08
        call    PrintRGB                                ; 0C94 _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0C99 _ 83. C4, 14
        nop                                             ; 0C9C _ 90
        leave                                           ; 0C9D _ C9
        ret                                             ; 0C9E _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0C9F _ 55
        mov     ebp, esp                                ; 0CA0 _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0CA2 _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0CA8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0CAB _ 8B. 40, 04
        add     eax, edx                                ; 0CAE _ 01. D0
        mov     dword [cur_pos], eax                    ; 0CB0 _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0CB5 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0CBB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0CBE _ 8B. 40, 08
        add     eax, edx                                ; 0CC1 _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0CC3 _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0CC8 _ A1, 00000000(d)
        test    eax, eax                                ; 0CCD _ 85. C0
        jns     ?_078                                   ; 0CCF _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0CD1 _ C7. 05, 00000000(d), 00000000
?_078:  mov     eax, dword [cur_pos+4H]                 ; 0CDB _ A1, 00000004(d)
        test    eax, eax                                ; 0CE0 _ 85. C0
        jns     ?_079                                   ; 0CE2 _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0CE4 _ C7. 05, 00000004(d), 00000000
?_079:  mov     eax, dword [cur_pos]                    ; 0CEE _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0CF3 _ 3B. 45, 0C
        jle     ?_080                                   ; 0CF6 _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0CF8 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0CFB _ A3, 00000000(d)
?_080:  mov     eax, dword [cur_pos+4H]                 ; 0D00 _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0D05 _ 3B. 45, 10
        jle     ?_081                                   ; 0D08 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0D0A _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0D0D _ A3, 00000004(d)
?_081:  nop                                             ; 0D12 _ 90
        pop     ebp                                     ; 0D13 _ 5D
        ret                                             ; 0D14 _ C3
; computeMousePosition End of function

CMain:  ; Function begin
        push    ebp                                     ; 0D15 _ 55
        mov     ebp, esp                                ; 0D16 _ 89. E5
        sub     esp, 40                                 ; 0D18 _ 83. EC, 28
        call    pict_init                               ; 0D1B _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0D20 _ 83. EC, 04
        push    128                                     ; 0D23 _ 68, 00000080
        push    key_buf                                 ; 0D28 _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 0D2D _ 68, 00000000(d)
        call    fifo8_init                              ; 0D32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D37 _ 83. C4, 10
        sub     esp, 4                                  ; 0D3A _ 83. EC, 04
        push    256                                     ; 0D3D _ 68, 00000100
        push    mouse_buf                               ; 0D42 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 0D47 _ 68, 00000000(d)
        call    fifo8_init                              ; 0D4C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D51 _ 83. C4, 10
        call    init_keyboard                           ; 0D54 _ E8, FFFFFFFC(rel)
        call    GET_MEMDESC_ADDR                        ; 0D59 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-24H], eax                    ; 0D5E _ 89. 45, DC
        mov     dword [ebp-20H], 0                      ; 0D61 _ C7. 45, E0, 00000000
        mov     eax, dword [bootInfo]                   ; 0D68 _ A1, 00000000(d)
        mov     dword [ebp-1CH], eax                    ; 0D6D _ 89. 45, E4
        movzx   eax, word [bootInfo+4H]                 ; 0D70 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D77 _ 98
        mov     dword [ebp-18H], eax                    ; 0D78 _ 89. 45, E8
        movzx   eax, word [bootInfo+6H]                 ; 0D7B _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D82 _ 98
        mov     dword [ebp-14H], eax                    ; 0D83 _ 89. 45, EC
        sub     esp, 8                                  ; 0D86 _ 83. EC, 08
        push    15                                      ; 0D89 _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0D8B _ FF. 75, E4
        call    fillAll                                 ; 0D8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D93 _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 0D96 _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0D9C _ A1, 00000000(d)
        sub     esp, 12                                 ; 0DA1 _ 83. EC, 0C
        push    cursor                                  ; 0DA4 _ 68, 00000000(d)
        push    edx                                     ; 0DA9 _ 52
        push    eax                                     ; 0DAA _ 50
        push    dword [ebp-18H]                         ; 0DAB _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0DAE _ FF. 75, E4
        call    PrintRGB                                ; 0DB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0DB6 _ 83. C4, 20
        mov     eax, dword [testString.1774]            ; 0DB9 _ A1, 00000158(d)
        sub     esp, 12                                 ; 0DBE _ 83. EC, 0C
        push    eax                                     ; 0DC1 _ 50
        call    strlen                                  ; 0DC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DC7 _ 83. C4, 10
        mov     edx, eax                                ; 0DCA _ 89. C2
        mov     eax, dword [testString.1774]            ; 0DCC _ A1, 00000158(d)
        push    txtCursor                               ; 0DD1 _ 68, 00000000(d)
        push    bootInfo                                ; 0DD6 _ 68, 00000000(d)
        push    edx                                     ; 0DDB _ 52
        push    eax                                     ; 0DDC _ 50
        call    Printf                                  ; 0DDD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DE2 _ 83. C4, 10
        sub     esp, 8                                  ; 0DE5 _ 83. EC, 08
        push    txtCursor                               ; 0DE8 _ 68, 00000000(d)
        push    bootInfo                                ; 0DED _ 68, 00000000(d)
        call    Println                                 ; 0DF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DF7 _ 83. C4, 10
        mov     eax, dword [testString2.1775]           ; 0DFA _ A1, 0000015C(d)
        sub     esp, 12                                 ; 0DFF _ 83. EC, 0C
        push    eax                                     ; 0E02 _ 50
        call    strlen                                  ; 0E03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E08 _ 83. C4, 10
        mov     edx, eax                                ; 0E0B _ 89. C2
        mov     eax, dword [testString2.1775]           ; 0E0D _ A1, 0000015C(d)
        push    txtCursor                               ; 0E12 _ 68, 00000000(d)
        push    bootInfo                                ; 0E17 _ 68, 00000000(d)
        push    edx                                     ; 0E1C _ 52
        push    eax                                     ; 0E1D _ 50
        call    Printf                                  ; 0E1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E23 _ 83. C4, 10
        sub     esp, 8                                  ; 0E26 _ 83. EC, 08
        push    txtCursor                               ; 0E29 _ 68, 00000000(d)
        push    bootInfo                                ; 0E2E _ 68, 00000000(d)
        call    Println                                 ; 0E33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E38 _ 83. C4, 10
        mov     eax, dword [testString3.1776]           ; 0E3B _ A1, 00000160(d)
        sub     esp, 12                                 ; 0E40 _ 83. EC, 0C
        push    eax                                     ; 0E43 _ 50
        call    strlen                                  ; 0E44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E49 _ 83. C4, 10
        mov     edx, eax                                ; 0E4C _ 89. C2
        mov     eax, dword [testString3.1776]           ; 0E4E _ A1, 00000160(d)
        push    txtCursor                               ; 0E53 _ 68, 00000000(d)
        push    bootInfo                                ; 0E58 _ 68, 00000000(d)
        push    edx                                     ; 0E5D _ 52
        push    eax                                     ; 0E5E _ 50
        call    Printf                                  ; 0E5F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E64 _ 83. C4, 10
        sub     esp, 8                                  ; 0E67 _ 83. EC, 08
        push    txtCursor                               ; 0E6A _ 68, 00000000(d)
        push    bootInfo                                ; 0E6F _ 68, 00000000(d)
        call    Println                                 ; 0E74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E79 _ 83. C4, 10
        mov     eax, dword [testNumString.1777]         ; 0E7C _ A1, 00000164(d)
        sub     esp, 12                                 ; 0E81 _ 83. EC, 0C
        push    eax                                     ; 0E84 _ 50
        call    strlen                                  ; 0E85 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E8A _ 83. C4, 10
        mov     edx, eax                                ; 0E8D _ 89. C2
        mov     eax, dword [testNumString.1777]         ; 0E8F _ A1, 00000164(d)
        push    txtCursor                               ; 0E94 _ 68, 00000000(d)
        push    bootInfo                                ; 0E99 _ 68, 00000000(d)
        push    edx                                     ; 0E9E _ 52
        push    eax                                     ; 0E9F _ 50
        call    Printf                                  ; 0EA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EA5 _ 83. C4, 10
        call    io_sti                                  ; 0EA8 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0EAD _ E8, FFFFFFFC(rel)
?_082:  call    io_cli                                  ; 0EB2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0EB7 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0EBA _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0EBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EC4 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 0EC7 _ 89. 45, F0
        sub     esp, 12                                 ; 0ECA _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0ECD _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0ED2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0EDA _ 89. 45, F4
        cmp     dword [ebp-10H], 0                      ; 0EDD _ 83. 7D, F0, 00
        jz      ?_083                                   ; 0EE1 _ 74, 10
        cmp     dword [ebp-0CH], 0                      ; 0EE3 _ 83. 7D, F4, 00
        jz      ?_083                                   ; 0EE7 _ 74, 0A
        call    io_stihlt                               ; 0EE9 _ E8, FFFFFFFC(rel)
        jmp     ?_085                                   ; 0EEE _ E9, 000000D7

?_083:  cmp     dword [ebp-10H], 0                      ; 0EF3 _ 83. 7D, F0, 00
        jnz     ?_084                                   ; 0EF7 _ 75, 50
        call    io_sti                                  ; 0EF9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0EFE _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0F01 _ 68, 00000000(d)
        call    fifo8_r                                 ; 0F06 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F0B _ 83. C4, 10
        mov     byte [ebp-27H], al                      ; 0F0E _ 88. 45, D9
        movzx   eax, byte [ebp-27H]                     ; 0F11 _ 0F B6. 45, D9
        sub     esp, 12                                 ; 0F15 _ 83. EC, 0C
        push    eax                                     ; 0F18 _ 50
        call    getKeyMakeChar                          ; 0F19 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F1E _ 83. C4, 10
        mov     byte [ebp-26H], al                      ; 0F21 _ 88. 45, DA
        cmp     byte [ebp-26H], 0                       ; 0F24 _ 80. 7D, DA, 00
        jz      ?_082                                   ; 0F28 _ 74, 88
        movsx   eax, byte [ebp-26H]                     ; 0F2A _ 0F BE. 45, DA
        sub     esp, 4                                  ; 0F2E _ 83. EC, 04
        push    txtCursor                               ; 0F31 _ 68, 00000000(d)
        push    bootInfo                                ; 0F36 _ 68, 00000000(d)
        push    eax                                     ; 0F3B _ 50
        call    PrintChar                               ; 0F3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F41 _ 83. C4, 10
        jmp     ?_082                                   ; 0F44 _ E9, FFFFFF69

?_084:  cmp     dword [ebp-0CH], 0                      ; 0F49 _ 83. 7D, F4, 00
        jne     ?_082                                   ; 0F4D _ 0F 85, FFFFFF5F
        call    io_sti                                  ; 0F53 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0F58 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0F5B _ 68, 00000000(d)
        call    fifo8_r                                 ; 0F60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F65 _ 83. C4, 10
        mov     byte [ebp-25H], al                      ; 0F68 _ 88. 45, DB
        movzx   eax, byte [ebp-25H]                     ; 0F6B _ 0F B6. 45, DB
        sub     esp, 8                                  ; 0F6F _ 83. EC, 08
        push    eax                                     ; 0F72 _ 50
        push    mdec                                    ; 0F73 _ 68, 00000000(d)
        call    mouse_decode                            ; 0F78 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F7D _ 83. C4, 10
        test    eax, eax                                ; 0F80 _ 85. C0
        je      ?_082                                   ; 0F82 _ 0F 84, FFFFFF2A
        sub     esp, 4                                  ; 0F88 _ 83. EC, 04
        push    cur_pos                                 ; 0F8B _ 68, 00000000(d)
        push    dword [ebp-18H]                         ; 0F90 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0F93 _ FF. 75, E4
        call    eraseMouse                              ; 0F96 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F9B _ 83. C4, 10
        sub     esp, 4                                  ; 0F9E _ 83. EC, 04
        push    dword [ebp-14H]                         ; 0FA1 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0FA4 _ FF. 75, E8
        push    mdec                                    ; 0FA7 _ 68, 00000000(d)
        call    computeMousePosition                    ; 0FAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FB1 _ 83. C4, 10
        sub     esp, 4                                  ; 0FB4 _ 83. EC, 04
        push    cur_pos                                 ; 0FB7 _ 68, 00000000(d)
        push    dword [ebp-18H]                         ; 0FBC _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0FBF _ FF. 75, E4
        call    drawMouse                               ; 0FC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FC7 _ 83. C4, 10
?_085:  jmp     ?_082                                   ; 0FCA _ E9, FFFFFEE3
; CMain End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0FCF _ 55
        mov     ebp, esp                                ; 0FD0 _ 89. E5
        sub     esp, 24                                 ; 0FD2 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0FD5 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0FDA _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0FDD _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0FE4 _ 98
        mov     dword [ebp-10H], eax                    ; 0FE5 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0FE8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0FEF _ 98
        mov     dword [ebp-0CH], eax                    ; 0FF0 _ 89. 45, F4
        sub     esp, 8                                  ; 0FF3 _ 83. EC, 08
        push    33                                      ; 0FF6 _ 6A, 21
        push    32                                      ; 0FF8 _ 6A, 20
        call    io_out8                                 ; 0FFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FFF _ 83. C4, 10
        sub     esp, 12                                 ; 1002 _ 83. EC, 0C
        push    96                                      ; 1005 _ 6A, 60
        call    io_in8                                  ; 1007 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 100C _ 83. C4, 10
        push    txtCursor                               ; 100F _ 68, 00000000(d)
        push    bootInfo                                ; 1014 _ 68, 00000000(d)
        push    2                                       ; 1019 _ 6A, 02
        push    ?_087                                   ; 101B _ 68, 00000000(d)
        call    Printf                                  ; 1020 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1025 _ 83. C4, 10
        nop                                             ; 1028 _ 90
        leave                                           ; 1029 _ C9
        ret                                             ; 102A _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 102B _ 55
        mov     ebp, esp                                ; 102C _ 89. E5
        sub     esp, 24                                 ; 102E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1031 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1036 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1039 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1040 _ 98
        mov     dword [ebp-10H], eax                    ; 1041 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1044 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 104B _ 98
        mov     dword [ebp-0CH], eax                    ; 104C _ 89. 45, F4
        sub     esp, 8                                  ; 104F _ 83. EC, 08
        push    33                                      ; 1052 _ 6A, 21
        push    32                                      ; 1054 _ 6A, 20
        call    io_out8                                 ; 1056 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 105B _ 83. C4, 10
        sub     esp, 12                                 ; 105E _ 83. EC, 0C
        push    96                                      ; 1061 _ 6A, 60
        call    io_in8                                  ; 1063 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1068 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 106B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 106E _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1072 _ 83. EC, 08
        push    eax                                     ; 1075 _ 50
        push    KEY_FIFO8                               ; 1076 _ 68, 00000000(d)
        call    fifo8_w                                 ; 107B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1080 _ 83. C4, 10
        nop                                             ; 1083 _ 90
        leave                                           ; 1084 _ C9
        ret                                             ; 1085 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 1086 _ 55
        mov     ebp, esp                                ; 1087 _ 89. E5
        sub     esp, 24                                 ; 1089 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 108C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1091 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1094 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 109B _ 98
        mov     dword [ebp-10H], eax                    ; 109C _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 109F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 10A6 _ 98
        mov     dword [ebp-0CH], eax                    ; 10A7 _ 89. 45, F4
        sub     esp, 8                                  ; 10AA _ 83. EC, 08
        push    32                                      ; 10AD _ 6A, 20
        push    160                                     ; 10AF _ 68, 000000A0
        call    io_out8                                 ; 10B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B9 _ 83. C4, 10
        sub     esp, 8                                  ; 10BC _ 83. EC, 08
        push    32                                      ; 10BF _ 6A, 20
        push    32                                      ; 10C1 _ 6A, 20
        call    io_out8                                 ; 10C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10C8 _ 83. C4, 10
        sub     esp, 12                                 ; 10CB _ 83. EC, 0C
        push    96                                      ; 10CE _ 6A, 60
        call    io_in8                                  ; 10D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10D5 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 10D8 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 10DB _ 0F B6. 45, EB
        sub     esp, 8                                  ; 10DF _ 83. EC, 08
        push    eax                                     ; 10E2 _ 50
        push    MOUSE_FIFO8                             ; 10E3 _ 68, 00000000(d)
        call    fifo8_w                                 ; 10E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10ED _ 83. C4, 10
        nop                                             ; 10F0 _ 90
        leave                                           ; 10F1 _ C9
        ret                                             ; 10F2 _ C3
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

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0060 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0068 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0070 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0078 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0080 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0088 _ ........

cur_pos: dq 0000001400000014H                           ; 0090 _ 0000001400000014 

bootInfo: dq 00C80140000A0000H                          ; 0098 _ 00C80140000A0000 

txtCursor:                                              ; byte
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 00A0 _ ........
        db 08H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 00A8 _ ........
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 00B0 _ ........
        db 0AH, 00H, 00H, 00H                           ; 00B8 _ ....

str.1513:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00BC _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00CC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D4 _ ........
        db 00H, 00H, 00H, 00H                           ; 00DC _ ....

keyintToChar.1741:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 00E0 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 00E8 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 00F0 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 00F8 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0100 _ vbnm,./.

keyintToNumChar.1742:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0108 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0110 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........

keyintToChar.1746:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0120 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0128 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0130 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0138 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0140 _ vbnm,./.

keyintToNumChar.1747:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0148 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0150 _ 90-=....

testString.1774:                                        ; dword
        dd ?_087+3H                                     ; 0158 _ 00000003 (d)

testString2.1775:                                       ; dword
        dd ?_087+0DH                                    ; 015C _ 0000000D (d)

testString3.1776:                                       ; dword
        dd ?_087+1CH                                    ; 0160 _ 0000001C (d)

testNumString.1777:                                     ; dword
        dd ?_087+20H                                    ; 0164 _ 00000020 (d)




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

str.1509:                                               ; byte
        resb    1                                       ; 01B8

?_086:  resb    2                                       ; 01B9




?_087:                                                  ; byte
        db 73H, 70H, 00H, 61H, 62H, 63H, 64H, 65H       ; 0000 _ sp.abcde
        db 66H, 67H, 68H, 69H, 00H, 6AH, 6BH, 6CH       ; 0008 _ fghi.jkl
        db 6DH, 6EH, 6FH, 70H, 71H, 72H, 73H, 74H       ; 0010 _ mnopqrst
        db 75H, 76H, 77H, 00H, 78H, 79H, 7AH, 00H       ; 0018 _ uvw.xyz.
        db 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H       ; 0020 _ 01234567
        db 38H, 39H, 00H                                ; 0028 _ 89.


