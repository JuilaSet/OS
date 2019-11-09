; Disassembly of file: main.o
; Fri Nov  8 19:06:05 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386









































































fifo8_init:; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0003 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0006 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 0009 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 000B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 000E _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 0011 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0014 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0017 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 001E _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 0021 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp+8H]                     ; 0028 _ 8B. 45, 08
        mov     dword [eax+10H], 0                      ; 002B _ C7. 40, 10, 00000000
        nop                                             ; 0032 _ 90
        pop     ebp                                     ; 0033 _ 5D
        ret                                             ; 0034 _ C3
; fifo8_init End of function

fifo8_w:; Function begin
        push    ebp                                     ; 0035 _ 55
        mov     ebp, esp                                ; 0036 _ 89. E5
        sub     esp, 4                                  ; 0038 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 003B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 003E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0041 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0044 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0046 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0049 _ 8B. 40, 10
        add     edx, eax                                ; 004C _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 004E _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0052 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0054 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0057 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 005A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 005D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0060 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0063 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0066 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0069 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 006C _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 006F _ 8B. 48, 04
        mov     eax, edx                                ; 0072 _ 89. D0
        cdq                                             ; 0074 _ 99
        idiv    ecx                                     ; 0075 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 0077 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 007A _ 89. 50, 10
        nop                                             ; 007D _ 90
        leave                                           ; 007E _ C9
        ret                                             ; 007F _ C3
; fifo8_w End of function

fifo8_r:; Function begin
        push    ebp                                     ; 0080 _ 55
        mov     ebp, esp                                ; 0081 _ 89. E5
        sub     esp, 16                                 ; 0083 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0086 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0089 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 008B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 008E _ 8B. 40, 0C
        add     eax, edx                                ; 0091 _ 01. D0
        movzx   eax, byte [eax]                         ; 0093 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0096 _ 88. 45, FF
        mov     eax, dword [ebp+8H]                     ; 0099 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 009C _ 8B. 40, 08
        lea     edx, [eax-1H]                           ; 009F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 00A2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 00A5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 00A8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 00AB _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 00AE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 00B1 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 00B4 _ 8B. 48, 04
        mov     eax, edx                                ; 00B7 _ 89. D0
        cdq                                             ; 00B9 _ 99
        idiv    ecx                                     ; 00BA _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 00BC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 00BF _ 89. 50, 0C
        movzx   eax, byte [ebp-1H]                      ; 00C2 _ 0F B6. 45, FF
        leave                                           ; 00C6 _ C9
        ret                                             ; 00C7 _ C3
; fifo8_r End of function

fifo8_isEmpty:; Function begin
        push    ebp                                     ; 00C8 _ 55
        mov     ebp, esp                                ; 00C9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 00CB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 00CE _ 8B. 40, 08
        test    eax, eax                                ; 00D1 _ 85. C0
        sete    al                                      ; 00D3 _ 0F 94. C0
        movzx   eax, al                                 ; 00D6 _ 0F B6. C0
        pop     ebp                                     ; 00D9 _ 5D
        ret                                             ; 00DA _ C3
; fifo8_isEmpty End of function

fifo8_isFull:; Function begin
        push    ebp                                     ; 00DB _ 55
        mov     ebp, esp                                ; 00DC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 00DE _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 00E1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 00E4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 00E7 _ 8B. 40, 04
        cmp     edx, eax                                ; 00EA _ 39. C2
        sete    al                                      ; 00EC _ 0F 94. C0
        movzx   eax, al                                 ; 00EF _ 0F B6. C0
        pop     ebp                                     ; 00F2 _ 5D
        ret                                             ; 00F3 _ C3
; fifo8_isFull End of function

strlen: ; Function begin
        push    ebp                                     ; 00F4 _ 55
        mov     ebp, esp                                ; 00F5 _ 89. E5
        sub     esp, 16                                 ; 00F7 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 00FA _ C7. 45, FC, 00000000
        nop                                             ; 0101 _ 90
?_001:  mov     eax, dword [ebp-4H]                     ; 0102 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 0105 _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 0108 _ 89. 55, FC
        mov     edx, eax                                ; 010B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 010D _ 8B. 45, 08
        add     eax, edx                                ; 0110 _ 01. D0
        movzx   eax, byte [eax]                         ; 0112 _ 0F B6. 00
        test    al, al                                  ; 0115 _ 84. C0
        jnz     ?_001                                   ; 0117 _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 0119 _ 8B. 45, FC
        sub     eax, 1                                  ; 011C _ 83. E8, 01
        leave                                           ; 011F _ C9
        ret                                             ; 0120 _ C3
; strlen End of function

charToHex:; Function begin
        push    ebp                                     ; 0121 _ 55
        mov     ebp, esp                                ; 0122 _ 89. E5
        sub     esp, 4                                  ; 0124 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0127 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 012A _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 012D _ 80. 7D, FC, 09
        jle     ?_002                                   ; 0131 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0133 _ 0F B6. 45, FC
        add     eax, 87                                 ; 0137 _ 83. C0, 57
        jmp     ?_003                                   ; 013A _ EB, 07

?_002:  movzx   eax, byte [ebp-4H]                      ; 013C _ 0F B6. 45, FC
        add     eax, 48                                 ; 0140 _ 83. C0, 30
?_003:  leave                                           ; 0143 _ C9
        ret                                             ; 0144 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0145 _ 55
        mov     ebp, esp                                ; 0146 _ 89. E5
        sub     esp, 4                                  ; 0148 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 014B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 014E _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 0151 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0155 _ 0F BE. C0
        and     eax, 0FH                                ; 0158 _ 83. E0, 0F
        push    eax                                     ; 015B _ 50
        call    charToHex                               ; 015C _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0161 _ 83. C4, 04
        mov     byte [?_093], al                        ; 0164 _ A2, 000001B9(d)
        shr     byte [ebp-4H], 4                        ; 0169 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 016D _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0171 _ 0F BE. C0
        and     eax, 0FH                                ; 0174 _ 83. E0, 0F
        push    eax                                     ; 0177 _ 50
        call    charToHex                               ; 0178 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 017D _ 83. C4, 04
        mov     byte [str.1545], al                     ; 0180 _ A2, 000001B8(d)
        mov     eax, str.1545                           ; 0185 _ B8, 000001B8(d)
        leave                                           ; 018A _ C9
        ret                                             ; 018B _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 018C _ 55
        mov     ebp, esp                                ; 018D _ 89. E5
        sub     esp, 16                                 ; 018F _ 83. EC, 10
        mov     dword [ebp-0CH], 2                      ; 0192 _ C7. 45, F4, 00000002
        jmp     ?_005                                   ; 0199 _ EB, 0F

?_004:  mov     eax, dword [ebp-0CH]                    ; 019B _ 8B. 45, F4
        add     eax, str.1549                           ; 019E _ 05, 000000C0(d)
        mov     byte [eax], 48                          ; 01A3 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 01A6 _ 83. 45, F4, 01
?_005:  cmp     dword [ebp-0CH], 9                      ; 01AA _ 83. 7D, F4, 09
        jle     ?_004                                   ; 01AE _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 01B0 _ C7. 45, F8, 00000009
        jmp     ?_009                                   ; 01B7 _ EB, 42

?_006:  mov     eax, dword [ebp+8H]                     ; 01B9 _ 8B. 45, 08
        and     eax, 0FH                                ; 01BC _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 01BF _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 01C2 _ 8B. 45, 08
        shr     eax, 4                                  ; 01C5 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 01C8 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 01CB _ 83. 7D, FC, 09
        jle     ?_007                                   ; 01CF _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 01D1 _ 8B. 45, FC
        add     eax, 55                                 ; 01D4 _ 83. C0, 37
        mov     edx, eax                                ; 01D7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 01D9 _ 8B. 45, F8
        add     eax, str.1549                           ; 01DC _ 05, 000000C0(d)
        mov     byte [eax], dl                          ; 01E1 _ 88. 10
        jmp     ?_008                                   ; 01E3 _ EB, 12

?_007:  mov     eax, dword [ebp-4H]                     ; 01E5 _ 8B. 45, FC
        add     eax, 48                                 ; 01E8 _ 83. C0, 30
        mov     edx, eax                                ; 01EB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 01ED _ 8B. 45, F8
        add     eax, str.1549                           ; 01F0 _ 05, 000000C0(d)
        mov     byte [eax], dl                          ; 01F5 _ 88. 10
?_008:  sub     dword [ebp-8H], 1                       ; 01F7 _ 83. 6D, F8, 01
?_009:  cmp     dword [ebp-8H], 1                       ; 01FB _ 83. 7D, F8, 01
        jle     ?_010                                   ; 01FF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0201 _ 83. 7D, 08, 00
        jnz     ?_006                                   ; 0205 _ 75, B2
?_010:  mov     eax, str.1549                           ; 0207 _ B8, 000000C0(d)
        leave                                           ; 020C _ C9
        ret                                             ; 020D _ C3
; intToHexStr End of function

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
        jmp     ?_033                                   ; 0545 _ E9, 00000121

?_027:  cmp     byte [ebp-4H], 122                      ; 054A _ 80. 7D, FC, 7A
        ja      ?_028                                   ; 054E _ 77, 39
        cmp     byte [ebp-4H], 96                       ; 0550 _ 80. 7D, FC, 60
        jbe     ?_028                                   ; 0554 _ 76, 33
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
        jmp     ?_033                                   ; 0584 _ E9, 000000E2

?_028:  cmp     byte [ebp-4H], 90                       ; 0589 _ 80. 7D, FC, 5A
        ja      ?_029                                   ; 058D _ 77, 3C
        cmp     byte [ebp-4H], 64                       ; 058F _ 80. 7D, FC, 40
        jbe     ?_029                                   ; 0593 _ 76, 36
        movzx   eax, byte [ebp-4H]                      ; 0595 _ 0F B6. 45, FC
        add     eax, 32                                 ; 0599 _ 83. C0, 20
        movsx   eax, al                                 ; 059C _ 0F BE. C0
        push    eax                                     ; 059F _ 50
        call    getAddrOffsetAlpha                      ; 05A0 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 05A5 _ 83. C4, 04
        mov     edx, eax                                ; 05A8 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 05AA _ 8B. 45, 18
        movsx   eax, al                                 ; 05AD _ 0F BE. C0
        push    edx                                     ; 05B0 _ 52
        push    eax                                     ; 05B1 _ 50
        push    dword [ebp+14H]                         ; 05B2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 05B5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 05B8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05BB _ FF. 75, 08
        call    showFont8                               ; 05BE _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05C3 _ 83. C4, 18
        jmp     ?_033                                   ; 05C6 _ E9, 000000A0

?_029:  cmp     byte [ebp-4H], 32                       ; 05CB _ 80. 7D, FC, 20
        jnz     ?_030                                   ; 05CF _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 05D1 _ 8B. 45, 18
        movsx   eax, al                                 ; 05D4 _ 0F BE. C0
        push    vsFont_EMPTY                            ; 05D7 _ 68, 00000000(d)
        push    eax                                     ; 05DC _ 50
        push    dword [ebp+14H]                         ; 05DD _ FF. 75, 14
        push    dword [ebp+10H]                         ; 05E0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 05E3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05E6 _ FF. 75, 08
        call    showFont8                               ; 05E9 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05EE _ 83. C4, 18
        jmp     ?_033                                   ; 05F1 _ EB, 78

?_030:  cmp     byte [ebp-4H], 63                       ; 05F3 _ 80. 7D, FC, 3F
        jnz     ?_031                                   ; 05F7 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 05F9 _ 8B. 45, 18
        movsx   eax, al                                 ; 05FC _ 0F BE. C0
        push    vsFont_ASK                              ; 05FF _ 68, 00000000(d)
        push    eax                                     ; 0604 _ 50
        push    dword [ebp+14H]                         ; 0605 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0608 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 060B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 060E _ FF. 75, 08
        call    showFont8                               ; 0611 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0616 _ 83. C4, 18
        jmp     ?_033                                   ; 0619 _ EB, 50

?_031:  cmp     byte [ebp-4H], 95                       ; 061B _ 80. 7D, FC, 5F
        jnz     ?_032                                   ; 061F _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0621 _ 8B. 45, 18
        movsx   eax, al                                 ; 0624 _ 0F BE. C0
        push    vsFont__                                ; 0627 _ 68, 00000000(d)
        push    eax                                     ; 062C _ 50
        push    dword [ebp+14H]                         ; 062D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0630 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0633 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0636 _ FF. 75, 08
        call    showFont8                               ; 0639 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 063E _ 83. C4, 18
        jmp     ?_033                                   ; 0641 _ EB, 28

?_032:  cmp     byte [ebp-4H], 58                       ; 0643 _ 80. 7D, FC, 3A
        jnz     ?_033                                   ; 0647 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0649 _ 8B. 45, 18
        movsx   eax, al                                 ; 064C _ 0F BE. C0
        push    vsFont_colon                            ; 064F _ 68, 00000000(d)
        push    eax                                     ; 0654 _ 50
        push    dword [ebp+14H]                         ; 0655 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0658 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 065B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 065E _ FF. 75, 08
        call    showFont8                               ; 0661 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0666 _ 83. C4, 18
        jmp     ?_033                                   ; 0669 _ EB, 00

?_033:  nop                                             ; 066B _ 90
        leave                                           ; 066C _ C9
        ret                                             ; 066D _ C3
; putChar End of function

putStr: ; Function begin
        push    ebp                                     ; 066E _ 55
        mov     ebp, esp                                ; 066F _ 89. E5
        sub     esp, 16                                 ; 0671 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0674 _ C7. 45, FC, 00000000
        jmp     ?_035                                   ; 067B _ EB, 36

?_034:  mov     edx, dword [ebp-4H]                     ; 067D _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 0680 _ 8B. 45, 20
        add     eax, edx                                ; 0683 _ 01. D0
        movzx   eax, byte [eax]                         ; 0685 _ 0F B6. 00
        movzx   eax, al                                 ; 0688 _ 0F B6. C0
        mov     edx, dword [ebp+18H]                    ; 068B _ 8B. 55, 18
        mov     ecx, edx                                ; 068E _ 89. D1
        imul    ecx, dword [ebp-4H]                     ; 0690 _ 0F AF. 4D, FC
        mov     edx, dword [ebp+10H]                    ; 0694 _ 8B. 55, 10
        add     edx, ecx                                ; 0697 _ 01. CA
        push    eax                                     ; 0699 _ 50
        push    dword [ebp+1CH]                         ; 069A _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 069D _ FF. 75, 14
        push    edx                                     ; 06A0 _ 52
        push    dword [ebp+0CH]                         ; 06A1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06A4 _ FF. 75, 08
        call    putChar                                 ; 06A7 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 06AC _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 06AF _ 83. 45, FC, 01
?_035:  mov     eax, dword [ebp-4H]                     ; 06B3 _ 8B. 45, FC
        cmp     eax, dword [ebp+24H]                    ; 06B6 _ 3B. 45, 24
        jl      ?_034                                   ; 06B9 _ 7C, C2
        nop                                             ; 06BB _ 90
        leave                                           ; 06BC _ C9
        ret                                             ; 06BD _ C3
; putStr End of function

charToPictColor:; Function begin
        push    ebp                                     ; 06BE _ 55
        mov     ebp, esp                                ; 06BF _ 89. E5
        sub     esp, 4                                  ; 06C1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 06C4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 06C7 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 06CA _ 80. 7D, FC, 2A
        jnz     ?_036                                   ; 06CE _ 75, 0A
        mov     eax, 0                                  ; 06D0 _ B8, 00000000
        jmp     ?_051                                   ; 06D5 _ E9, 000000D2

?_036:  cmp     byte [ebp-4H], 114                      ; 06DA _ 80. 7D, FC, 72
        jnz     ?_037                                   ; 06DE _ 75, 0A
        mov     eax, 1                                  ; 06E0 _ B8, 00000001
        jmp     ?_051                                   ; 06E5 _ E9, 000000C2

?_037:  cmp     byte [ebp-4H], 103                      ; 06EA _ 80. 7D, FC, 67
        jnz     ?_038                                   ; 06EE _ 75, 0A
        mov     eax, 2                                  ; 06F0 _ B8, 00000002
        jmp     ?_051                                   ; 06F5 _ E9, 000000B2

?_038:  cmp     byte [ebp-4H], 121                      ; 06FA _ 80. 7D, FC, 79
        jnz     ?_039                                   ; 06FE _ 75, 0A
        mov     eax, 3                                  ; 0700 _ B8, 00000003
        jmp     ?_051                                   ; 0705 _ E9, 000000A2

?_039:  cmp     byte [ebp-4H], 98                       ; 070A _ 80. 7D, FC, 62
        jnz     ?_040                                   ; 070E _ 75, 0A
        mov     eax, 4                                  ; 0710 _ B8, 00000004
        jmp     ?_051                                   ; 0715 _ E9, 00000092

?_040:  cmp     byte [ebp-4H], 112                      ; 071A _ 80. 7D, FC, 70
        jnz     ?_041                                   ; 071E _ 75, 0A
        mov     eax, 5                                  ; 0720 _ B8, 00000005
        jmp     ?_051                                   ; 0725 _ E9, 00000082

?_041:  cmp     byte [ebp-4H], 108                      ; 072A _ 80. 7D, FC, 6C
        jnz     ?_042                                   ; 072E _ 75, 07
        mov     eax, 6                                  ; 0730 _ B8, 00000006
        jmp     ?_051                                   ; 0735 _ EB, 75

?_042:  cmp     byte [ebp-4H], 119                      ; 0737 _ 80. 7D, FC, 77
        jnz     ?_043                                   ; 073B _ 75, 07
        mov     eax, 7                                  ; 073D _ B8, 00000007
        jmp     ?_051                                   ; 0742 _ EB, 68

?_043:  cmp     byte [ebp-4H], 45                       ; 0744 _ 80. 7D, FC, 2D
        jnz     ?_044                                   ; 0748 _ 75, 07
        mov     eax, 8                                  ; 074A _ B8, 00000008
        jmp     ?_051                                   ; 074F _ EB, 5B

?_044:  cmp     byte [ebp-4H], 82                       ; 0751 _ 80. 7D, FC, 52
        jnz     ?_045                                   ; 0755 _ 75, 07
        mov     eax, 9                                  ; 0757 _ B8, 00000009
        jmp     ?_051                                   ; 075C _ EB, 4E

?_045:  cmp     byte [ebp-4H], 71                       ; 075E _ 80. 7D, FC, 47
        jnz     ?_046                                   ; 0762 _ 75, 07
        mov     eax, 10                                 ; 0764 _ B8, 0000000A
        jmp     ?_051                                   ; 0769 _ EB, 41

?_046:  cmp     byte [ebp-4H], 89                       ; 076B _ 80. 7D, FC, 59
        jnz     ?_047                                   ; 076F _ 75, 07
        mov     eax, 11                                 ; 0771 _ B8, 0000000B
        jmp     ?_051                                   ; 0776 _ EB, 34

?_047:  cmp     byte [ebp-4H], 66                       ; 0778 _ 80. 7D, FC, 42
        jnz     ?_048                                   ; 077C _ 75, 07
        mov     eax, 12                                 ; 077E _ B8, 0000000C
        jmp     ?_051                                   ; 0783 _ EB, 27

?_048:  cmp     byte [ebp-4H], 80                       ; 0785 _ 80. 7D, FC, 50
        jnz     ?_049                                   ; 0789 _ 75, 07
        mov     eax, 13                                 ; 078B _ B8, 0000000D
        jmp     ?_051                                   ; 0790 _ EB, 1A

?_049:  cmp     byte [ebp-4H], 115                      ; 0792 _ 80. 7D, FC, 73
        jnz     ?_050                                   ; 0796 _ 75, 07
        mov     eax, 14                                 ; 0798 _ B8, 0000000E
        jmp     ?_051                                   ; 079D _ EB, 0D

?_050:  cmp     byte [ebp-4H], 61                       ; 079F _ 80. 7D, FC, 3D
        jnz     ?_051                                   ; 07A3 _ 75, 07
        mov     eax, 15                                 ; 07A5 _ B8, 0000000F
        jmp     ?_051                                   ; 07AA _ EB, 00

?_051:  leave                                           ; 07AC _ C9
        ret                                             ; 07AD _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 07AE _ 55
        mov     ebp, esp                                ; 07AF _ 89. E5
        push    ebx                                     ; 07B1 _ 53
        sub     esp, 16                                 ; 07B2 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 07B5 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 07BC _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 07C3 _ C7. 45, F8, 00000000
?_052:  mov     edx, dword [ebp-8H]                     ; 07CA _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 07CD _ 8B. 45, 18
        add     eax, edx                                ; 07D0 _ 01. D0
        movzx   eax, byte [eax]                         ; 07D2 _ 0F B6. 00
        test    al, al                                  ; 07D5 _ 84. C0
        jnz     ?_053                                   ; 07D7 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 07D9 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 07DC _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 07DF _ 8B. 45, 18
        add     eax, edx                                ; 07E2 _ 01. D0
        movzx   eax, byte [eax]                         ; 07E4 _ 0F B6. 00
        test    al, al                                  ; 07E7 _ 84. C0
        jz      ?_056                                   ; 07E9 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 07EB _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 07EF _ C7. 45, F4, 00000000
        jmp     ?_055                                   ; 07F6 _ EB, 4C

?_053:  mov     edx, dword [ebp-8H]                     ; 07F8 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 07FB _ 8B. 45, 18
        add     eax, edx                                ; 07FE _ 01. D0
        movzx   eax, byte [eax]                         ; 0800 _ 0F B6. 00
        cmp     al, 46                                  ; 0803 _ 3C, 2E
        jz      ?_054                                   ; 0805 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0807 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 080A _ 8B. 45, F0
        add     eax, edx                                ; 080D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 080F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0813 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0815 _ 8B. 45, 10
        add     edx, eax                                ; 0818 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 081A _ 8B. 45, F4
        add     eax, edx                                ; 081D _ 01. D0
        mov     edx, eax                                ; 081F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0821 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0824 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0827 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 082A _ 8B. 45, 18
        add     eax, edx                                ; 082D _ 01. D0
        movzx   eax, byte [eax]                         ; 082F _ 0F B6. 00
        movsx   eax, al                                 ; 0832 _ 0F BE. C0
        push    eax                                     ; 0835 _ 50
        call    charToPictColor                         ; 0836 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 083B _ 83. C4, 04
        mov     byte [ebx], al                          ; 083E _ 88. 03
?_054:  add     dword [ebp-0CH], 1                      ; 0840 _ 83. 45, F4, 01
?_055:  add     dword [ebp-8H], 1                       ; 0844 _ 83. 45, F8, 01
        jmp     ?_052                                   ; 0848 _ EB, 80

?_056:  nop                                             ; 084A _ 90
        mov     ebx, dword [ebp-4H]                     ; 084B _ 8B. 5D, FC
        leave                                           ; 084E _ C9
        ret                                             ; 084F _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0850 _ 55
        mov     ebp, esp                                ; 0851 _ 89. E5
        sub     esp, 16                                 ; 0853 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0856 _ C7. 45, FC, 00000000
        jmp     ?_058                                   ; 085D _ EB, 11

?_057:  mov     edx, dword [ebp-4H]                     ; 085F _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0862 _ 8B. 45, 08
        add     eax, edx                                ; 0865 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0867 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 086A _ 88. 10
        add     dword [ebp-4H], 1                       ; 086C _ 83. 45, FC, 01
?_058:  cmp     dword [ebp-4H], 65534                   ; 0870 _ 81. 7D, FC, 0000FFFE
        jle     ?_057                                   ; 0877 _ 7E, E6
        nop                                             ; 0879 _ 90
        leave                                           ; 087A _ C9
        ret                                             ; 087B _ C3
; fillAll End of function

initCursor:; Function begin
        push    ebp                                     ; 087C _ 55
        mov     ebp, esp                                ; 087D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 087F _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0882 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0885 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0888 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 088A _ 8B. 45, 08
        mov     edx, dword [eax+14H]                    ; 088D _ 8B. 50, 14
        mov     eax, dword [ebp+8H]                     ; 0890 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0893 _ 89. 50, 04
        nop                                             ; 0896 _ 90
        pop     ebp                                     ; 0897 _ 5D
        ret                                             ; 0898 _ C3
; initCursor End of function

clear:  ; Function begin
        push    ebp                                     ; 0899 _ 55
        mov     ebp, esp                                ; 089A _ 89. E5
        sub     esp, 16                                 ; 089C _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 089F _ C7. 45, FC, 00000000
        jmp     ?_060                                   ; 08A6 _ EB, 13

?_059:  mov     eax, dword [ebp+8H]                     ; 08A8 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 08AB _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 08AD _ 8B. 45, FC
        add     eax, edx                                ; 08B0 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 08B2 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 08B5 _ 88. 10
        add     dword [ebp-4H], 1                       ; 08B7 _ 83. 45, FC, 01
?_060:  cmp     dword [ebp-4H], 65534                   ; 08BB _ 81. 7D, FC, 0000FFFE
        jle     ?_059                                   ; 08C2 _ 7E, E4
        nop                                             ; 08C4 _ 90
        leave                                           ; 08C5 _ C9
        ret                                             ; 08C6 _ C3
; clear End of function

Println:; Function begin
        push    ebp                                     ; 08C7 _ 55
        mov     ebp, esp                                ; 08C8 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 08CA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 08CD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 08D0 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 08D3 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 08D5 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 08D8 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 08DB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 08DE _ 8B. 40, 0C
        add     edx, eax                                ; 08E1 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 08E3 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 08E6 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 08E9 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 08EC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 08EF _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 08F2 _ 0F B7. 40, 06
        cwde                                            ; 08F6 _ 98
        cmp     edx, eax                                ; 08F7 _ 39. C2
        jl      ?_061                                   ; 08F9 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 08FB _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 08FE _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0901 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0904 _ 89. 50, 04
?_061:  nop                                             ; 0907 _ 90
        pop     ebp                                     ; 0908 _ 5D
        ret                                             ; 0909 _ C3
; Println End of function

PrintlnMult:; Function begin
        push    ebp                                     ; 090A _ 55
        mov     ebp, esp                                ; 090B _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 090D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0910 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0913 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0916 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0918 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 091B _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 091E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0921 _ 8B. 40, 0C
        imul    eax, dword [ebp+10H]                    ; 0924 _ 0F AF. 45, 10
        add     edx, eax                                ; 0928 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 092A _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 092D _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0930 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0933 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0936 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0939 _ 0F B7. 40, 06
        cwde                                            ; 093D _ 98
        cmp     edx, eax                                ; 093E _ 39. C2
        jl      ?_062                                   ; 0940 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0942 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0945 _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0948 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 094B _ 89. 50, 04
?_062:  nop                                             ; 094E _ 90
        pop     ebp                                     ; 094F _ 5D
        ret                                             ; 0950 _ C3
; PrintlnMult End of function

Printf: ; Function begin
        push    ebp                                     ; 0951 _ 55
        mov     ebp, esp                                ; 0952 _ 89. E5
        push    ebx                                     ; 0954 _ 53
        sub     esp, 16                                 ; 0955 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 0958 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 095B _ 0F B7. 40, 04
        cwde                                            ; 095F _ 98
        mov     dword [ebp-14H], eax                    ; 0960 _ 89. 45, EC
        mov     eax, dword [ebp+0CH]                    ; 0963 _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0966 _ 0F B7. 40, 06
        cwde                                            ; 096A _ 98
        mov     dword [ebp-10H], eax                    ; 096B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 096E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0971 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 0973 _ 89. 45, F4
        push    dword [ebp+8H]                          ; 0976 _ FF. 75, 08
        call    strlen                                  ; 0979 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 097E _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 0981 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0984 _ 8B. 45, 10
        mov     ebx, dword [eax+1CH]                    ; 0987 _ 8B. 58, 1C
        mov     eax, dword [ebp+10H]                    ; 098A _ 8B. 45, 10
        mov     ecx, dword [eax+8H]                     ; 098D _ 8B. 48, 08
        mov     eax, dword [ebp+10H]                    ; 0990 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0993 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0996 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0999 _ 8B. 00
        push    dword [ebp-8H]                          ; 099B _ FF. 75, F8
        push    dword [ebp+8H]                          ; 099E _ FF. 75, 08
        push    ebx                                     ; 09A1 _ 53
        push    ecx                                     ; 09A2 _ 51
        push    edx                                     ; 09A3 _ 52
        push    eax                                     ; 09A4 _ 50
        push    dword [ebp-14H]                         ; 09A5 _ FF. 75, EC
        push    dword [ebp-0CH]                         ; 09A8 _ FF. 75, F4
        call    putStr                                  ; 09AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09B0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09B3 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 09B6 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 09B8 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 09BB _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 09BE _ 0F AF. 45, F8
        add     edx, eax                                ; 09C2 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 09C4 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 09C7 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 09C9 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 09CC _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 09CE _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 09D1 _ 8B. 40, 10
        mov     ecx, dword [ebp-14H]                    ; 09D4 _ 8B. 4D, EC
        sub     ecx, eax                                ; 09D7 _ 29. C1
        mov     eax, ecx                                ; 09D9 _ 89. C8
        cmp     edx, eax                                ; 09DB _ 39. C2
        jl      ?_063                                   ; 09DD _ 7C, 0E
        push    dword [ebp+10H]                         ; 09DF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 09E2 _ FF. 75, 0C
        call    Println                                 ; 09E5 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 09EA _ 83. C4, 08
?_063:  nop                                             ; 09ED _ 90
        mov     ebx, dword [ebp-4H]                     ; 09EE _ 8B. 5D, FC
        leave                                           ; 09F1 _ C9
        ret                                             ; 09F2 _ C3
; Printf End of function

PrintChar:; Function begin
        push    ebp                                     ; 09F3 _ 55
        mov     ebp, esp                                ; 09F4 _ 89. E5
        push    ebx                                     ; 09F6 _ 53
        sub     esp, 20                                 ; 09F7 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 09FA _ 8B. 45, 08
        mov     byte [ebp-18H], al                      ; 09FD _ 88. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 0A00 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0A03 _ 0F B7. 40, 04
        cwde                                            ; 0A07 _ 98
        mov     dword [ebp-10H], eax                    ; 0A08 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0A0B _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0A0E _ 0F B7. 40, 06
        cwde                                            ; 0A12 _ 98
        mov     dword [ebp-0CH], eax                    ; 0A13 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 0A16 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0A19 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 0A1B _ 89. 45, F8
        movzx   eax, byte [ebp-18H]                     ; 0A1E _ 0F B6. 45, E8
        movzx   ebx, al                                 ; 0A22 _ 0F B6. D8
        mov     eax, dword [ebp+10H]                    ; 0A25 _ 8B. 45, 10
        mov     ecx, dword [eax+1CH]                    ; 0A28 _ 8B. 48, 1C
        mov     eax, dword [ebp+10H]                    ; 0A2B _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0A2E _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0A31 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0A34 _ 8B. 00
        push    ebx                                     ; 0A36 _ 53
        push    ecx                                     ; 0A37 _ 51
        push    edx                                     ; 0A38 _ 52
        push    eax                                     ; 0A39 _ 50
        push    dword [ebp-10H]                         ; 0A3A _ FF. 75, F0
        push    dword [ebp-8H]                          ; 0A3D _ FF. 75, F8
        call    putChar                                 ; 0A40 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A45 _ 83. C4, 18
        mov     eax, dword [ebp+10H]                    ; 0A48 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0A4B _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0A4D _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0A50 _ 8B. 40, 08
        add     edx, eax                                ; 0A53 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0A55 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0A58 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0A5A _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0A5D _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0A5F _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0A62 _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 0A65 _ 8B. 4D, F0
        sub     ecx, eax                                ; 0A68 _ 29. C1
        mov     eax, ecx                                ; 0A6A _ 89. C8
        cmp     edx, eax                                ; 0A6C _ 39. C2
        jl      ?_064                                   ; 0A6E _ 7C, 0E
        push    dword [ebp+10H]                         ; 0A70 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A73 _ FF. 75, 0C
        call    Println                                 ; 0A76 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0A7B _ 83. C4, 08
?_064:  nop                                             ; 0A7E _ 90
        mov     ebx, dword [ebp-4H]                     ; 0A7F _ 8B. 5D, FC
        leave                                           ; 0A82 _ C9
        ret                                             ; 0A83 _ C3
; PrintChar End of function

PrintTab:; Function begin
        push    ebp                                     ; 0A84 _ 55
        mov     ebp, esp                                ; 0A85 _ 89. E5
        push    ebx                                     ; 0A87 _ 53
        sub     esp, 16                                 ; 0A88 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0A8B _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0A8E _ 0F B7. 40, 04
        cwde                                            ; 0A92 _ 98
        mov     dword [ebp-0CH], eax                    ; 0A93 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0A96 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0A99 _ 0F B7. 40, 06
        cwde                                            ; 0A9D _ 98
        mov     dword [ebp-8H], eax                     ; 0A9E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 0AA1 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0AA4 _ 0F B7. 40, 04
        cwde                                            ; 0AA8 _ 98
        mov     edx, dword [ebp+0CH]                    ; 0AA9 _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0AAC _ 8B. 5A, 18
        cdq                                             ; 0AAF _ 99
        idiv    ebx                                     ; 0AB0 _ F7. FB
        mov     word [ebp-0EH], ax                      ; 0AB2 _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 0AB6 _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 0ABA _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0ABD _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 0ABF _ 0F BF. 45, F2
        imul    eax, dword [ebp+10H]                    ; 0AC3 _ 0F AF. 45, 10
        add     eax, edx                                ; 0AC7 _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 0AC9 _ 0F BF. 5D, F2
        cdq                                             ; 0ACD _ 99
        idiv    ebx                                     ; 0ACE _ F7. FB
        imul    ecx, eax                                ; 0AD0 _ 0F AF. C8
        mov     edx, ecx                                ; 0AD3 _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 0AD5 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0AD8 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0ADA _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0ADD _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 0ADF _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 0AE2 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 0AE5 _ 8B. 4D, F4
        sub     ecx, eax                                ; 0AE8 _ 29. C1
        mov     eax, ecx                                ; 0AEA _ 89. C8
        cmp     edx, eax                                ; 0AEC _ 39. C2
        jl      ?_065                                   ; 0AEE _ 7C, 0E
        push    dword [ebp+0CH]                         ; 0AF0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AF3 _ FF. 75, 08
        call    Println                                 ; 0AF6 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0AFB _ 83. C4, 08
?_065:  nop                                             ; 0AFE _ 90
        mov     ebx, dword [ebp-4H]                     ; 0AFF _ 8B. 5D, FC
        leave                                           ; 0B02 _ C9
        ret                                             ; 0B03 _ C3
; PrintTab End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0B04 _ 55
        mov     ebp, esp                                ; 0B05 _ 89. E5
        sub     esp, 8                                  ; 0B07 _ 83. EC, 08
?_066:  sub     esp, 12                                 ; 0B0A _ 83. EC, 0C
        push    100                                     ; 0B0D _ 6A, 64
        call    io_in8                                  ; 0B0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B14 _ 83. C4, 10
        movsx   eax, al                                 ; 0B17 _ 0F BE. C0
        and     eax, 02H                                ; 0B1A _ 83. E0, 02
        test    eax, eax                                ; 0B1D _ 85. C0
        jz      ?_067                                   ; 0B1F _ 74, 02
        jmp     ?_066                                   ; 0B21 _ EB, E7

?_067:  nop                                             ; 0B23 _ 90
        nop                                             ; 0B24 _ 90
        leave                                           ; 0B25 _ C9
        ret                                             ; 0B26 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0B27 _ 55
        mov     ebp, esp                                ; 0B28 _ 89. E5
        sub     esp, 8                                  ; 0B2A _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0B2D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B32 _ 83. EC, 08
        push    96                                      ; 0B35 _ 6A, 60
        push    100                                     ; 0B37 _ 6A, 64
        call    io_out8                                 ; 0B39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B3E _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0B41 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B46 _ 83. EC, 08
        push    71                                      ; 0B49 _ 6A, 47
        push    96                                      ; 0B4B _ 6A, 60
        call    io_out8                                 ; 0B4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B52 _ 83. C4, 10
        nop                                             ; 0B55 _ 90
        leave                                           ; 0B56 _ C9
        ret                                             ; 0B57 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0B58 _ 55
        mov     ebp, esp                                ; 0B59 _ 89. E5
        sub     esp, 8                                  ; 0B5B _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0B5E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B63 _ 83. EC, 08
        push    212                                     ; 0B66 _ 68, 000000D4
        push    100                                     ; 0B6B _ 6A, 64
        call    io_out8                                 ; 0B6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B72 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0B75 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B7A _ 83. EC, 08
        push    244                                     ; 0B7D _ 68, 000000F4
        push    96                                      ; 0B82 _ 6A, 60
        call    io_out8                                 ; 0B84 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B89 _ 83. C4, 10
        nop                                             ; 0B8C _ 90
        leave                                           ; 0B8D _ C9
        ret                                             ; 0B8E _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0B8F _ 55
        mov     ebp, esp                                ; 0B90 _ 89. E5
        sub     esp, 4                                  ; 0B92 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0B95 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0B98 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B9B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0B9E _ 0F B6. 40, 03
        test    al, al                                  ; 0BA2 _ 84. C0
        jnz     ?_069                                   ; 0BA4 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0BA6 _ 80. 7D, FC, FA
        jnz     ?_068                                   ; 0BAA _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0BAC _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0BAF _ C6. 40, 03, 01
?_068:  mov     eax, 0                                  ; 0BB3 _ B8, 00000000
        jmp     ?_076                                   ; 0BB8 _ E9, 0000010F

?_069:  mov     eax, dword [ebp+8H]                     ; 0BBD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0BC0 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0BC4 _ 3C, 01
        jnz     ?_071                                   ; 0BC6 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0BC8 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0BCC _ 25, 000000C8
        cmp     eax, 8                                  ; 0BD1 _ 83. F8, 08
        jnz     ?_070                                   ; 0BD4 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0BD6 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0BD9 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0BDD _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0BDF _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0BE2 _ C6. 40, 03, 02
?_070:  mov     eax, 0                                  ; 0BE6 _ B8, 00000000
        jmp     ?_076                                   ; 0BEB _ E9, 000000DC

?_071:  mov     eax, dword [ebp+8H]                     ; 0BF0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0BF3 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0BF7 _ 3C, 02
        jnz     ?_072                                   ; 0BF9 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0BFB _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0BFE _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0C02 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C05 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0C08 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0C0C _ B8, 00000000
        jmp     ?_076                                   ; 0C11 _ E9, 000000B6

?_072:  mov     eax, dword [ebp+8H]                     ; 0C16 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0C19 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0C1D _ 3C, 03
        jne     ?_075                                   ; 0C1F _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0C25 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0C28 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0C2C _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0C2F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0C32 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0C36 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0C39 _ 0F B6. 00
        movzx   eax, al                                 ; 0C3C _ 0F B6. C0
        and     eax, 07H                                ; 0C3F _ 83. E0, 07
        mov     edx, eax                                ; 0C42 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C44 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0C47 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0C4A _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0C4D _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0C51 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0C54 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0C57 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C5A _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0C5D _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0C61 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0C64 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0C67 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0C6A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0C6D _ 0F B6. 00
        movzx   eax, al                                 ; 0C70 _ 0F B6. C0
        and     eax, 10H                                ; 0C73 _ 83. E0, 10
        test    eax, eax                                ; 0C76 _ 85. C0
        jz      ?_073                                   ; 0C78 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0C7A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C7D _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0C80 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0C85 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C87 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0C8A _ 89. 50, 04
?_073:  mov     eax, dword [ebp+8H]                     ; 0C8D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0C90 _ 0F B6. 00
        movzx   eax, al                                 ; 0C93 _ 0F B6. C0
        and     eax, 20H                                ; 0C96 _ 83. E0, 20
        test    eax, eax                                ; 0C99 _ 85. C0
        jz      ?_074                                   ; 0C9B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0C9D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0CA0 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0CA3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0CA8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CAA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0CAD _ 89. 50, 08
?_074:  mov     eax, dword [ebp+8H]                     ; 0CB0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0CB3 _ 8B. 40, 08
        neg     eax                                     ; 0CB6 _ F7. D8
        mov     edx, eax                                ; 0CB8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CBA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0CBD _ 89. 50, 08
        mov     eax, 1                                  ; 0CC0 _ B8, 00000001
        jmp     ?_076                                   ; 0CC5 _ EB, 05

?_075:  mov     eax, 4294967295                         ; 0CC7 _ B8, FFFFFFFF
?_076:  leave                                           ; 0CCC _ C9
        ret                                             ; 0CCD _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 0CCE _ 55
        mov     ebp, esp                                ; 0CCF _ 89. E5
        sub     esp, 4                                  ; 0CD1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0CD4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0CD7 _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 0CDA _ 80. 7D, FC, 0E
        jbe     ?_077                                   ; 0CDE _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 0CE0 _ 80. 7D, FC, 35
        ja      ?_077                                   ; 0CE4 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 0CE6 _ 0F B6. 45, FC
        sub     eax, 15                                 ; 0CEA _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.1755+eax]       ; 0CED _ 0F B6. 80, 000000E0(d)
        jmp     ?_079                                   ; 0CF4 _ EB, 21

?_077:  cmp     byte [ebp-4H], 1                        ; 0CF6 _ 80. 7D, FC, 01
        jbe     ?_078                                   ; 0CFA _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 0CFC _ 80. 7D, FC, 0E
        ja      ?_078                                   ; 0D00 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 0D02 _ 0F B6. 45, FC
        sub     eax, 2                                  ; 0D06 _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.1756+eax]    ; 0D09 _ 0F B6. 80, 00000108(d)
        jmp     ?_079                                   ; 0D10 _ EB, 05

?_078:  mov     eax, 0                                  ; 0D12 _ B8, 00000000
?_079:  leave                                           ; 0D17 _ C9
        ret                                             ; 0D18 _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 0D19 _ 55
        mov     ebp, esp                                ; 0D1A _ 89. E5
        sub     esp, 4                                  ; 0D1C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D1F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D22 _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 0D25 _ 80. 7D, FC, 8E
        jbe     ?_080                                   ; 0D29 _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 0D2B _ 80. 7D, FC, B5
        ja      ?_080                                   ; 0D2F _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 0D31 _ 0F B6. 45, FC
        sub     eax, 143                                ; 0D35 _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.1760+eax]       ; 0D3A _ 0F B6. 80, 00000120(d)
        jmp     ?_082                                   ; 0D41 _ EB, 23

?_080:  cmp     byte [ebp-4H], -127                     ; 0D43 _ 80. 7D, FC, 81
        jbe     ?_081                                   ; 0D47 _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 0D49 _ 80. 7D, FC, 8E
        ja      ?_081                                   ; 0D4D _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 0D4F _ 0F B6. 45, FC
        sub     eax, 130                                ; 0D53 _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.1761+eax]    ; 0D58 _ 0F B6. 80, 00000148(d)
        jmp     ?_082                                   ; 0D5F _ EB, 05

?_081:  mov     eax, 0                                  ; 0D61 _ B8, 00000000
?_082:  leave                                           ; 0D66 _ C9
        ret                                             ; 0D67 _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0D68 _ 55
        mov     ebp, esp                                ; 0D69 _ 89. E5
        push    ebx                                     ; 0D6B _ 53
        mov     eax, dword [ebp+10H]                    ; 0D6C _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0D6F _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0D72 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0D75 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0D78 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0D7A _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0D7D _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0D80 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0D83 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0D86 _ 8B. 00
        push    ebx                                     ; 0D88 _ 53
        push    ecx                                     ; 0D89 _ 51
        push    edx                                     ; 0D8A _ 52
        push    eax                                     ; 0D8B _ 50
        push    15                                      ; 0D8C _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0D8E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0D91 _ FF. 75, 08
        call    boxfill8                                ; 0D94 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D99 _ 83. C4, 1C
        nop                                             ; 0D9C _ 90
        mov     ebx, dword [ebp-4H]                     ; 0D9D _ 8B. 5D, FC
        leave                                           ; 0DA0 _ C9
        ret                                             ; 0DA1 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0DA2 _ 55
        mov     ebp, esp                                ; 0DA3 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0DA5 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0DA8 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0DAB _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0DAE _ 8B. 00
        push    cursor                                  ; 0DB0 _ 68, 00000000(d)
        push    edx                                     ; 0DB5 _ 52
        push    eax                                     ; 0DB6 _ 50
        push    dword [ebp+0CH]                         ; 0DB7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DBA _ FF. 75, 08
        call    PrintRGB                                ; 0DBD _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0DC2 _ 83. C4, 14
        nop                                             ; 0DC5 _ 90
        leave                                           ; 0DC6 _ C9
        ret                                             ; 0DC7 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0DC8 _ 55
        mov     ebp, esp                                ; 0DC9 _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0DCB _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0DD1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DD4 _ 8B. 40, 04
        add     eax, edx                                ; 0DD7 _ 01. D0
        mov     dword [cur_pos], eax                    ; 0DD9 _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0DDE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0DE4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DE7 _ 8B. 40, 08
        add     eax, edx                                ; 0DEA _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0DEC _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0DF1 _ A1, 00000000(d)
        test    eax, eax                                ; 0DF6 _ 85. C0
        jns     ?_083                                   ; 0DF8 _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0DFA _ C7. 05, 00000000(d), 00000000
?_083:  mov     eax, dword [cur_pos+4H]                 ; 0E04 _ A1, 00000004(d)
        test    eax, eax                                ; 0E09 _ 85. C0
        jns     ?_084                                   ; 0E0B _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0E0D _ C7. 05, 00000004(d), 00000000
?_084:  mov     eax, dword [cur_pos]                    ; 0E17 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0E1C _ 3B. 45, 0C
        jle     ?_085                                   ; 0E1F _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0E21 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0E24 _ A3, 00000000(d)
?_085:  mov     eax, dword [cur_pos+4H]                 ; 0E29 _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0E2E _ 3B. 45, 10
        jle     ?_086                                   ; 0E31 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0E33 _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0E36 _ A3, 00000004(d)
?_086:  nop                                             ; 0E3B _ 90
        pop     ebp                                     ; 0E3C _ 5D
        ret                                             ; 0E3D _ C3
; computeMousePosition End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0E3E _ 55
        mov     ebp, esp                                ; 0E3F _ 89. E5
        sub     esp, 24                                 ; 0E41 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E44 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E49 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0E4C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E53 _ 98
        mov     dword [ebp-10H], eax                    ; 0E54 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0E57 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E5E _ 98
        mov     dword [ebp-0CH], eax                    ; 0E5F _ 89. 45, F4
        sub     esp, 8                                  ; 0E62 _ 83. EC, 08
        push    33                                      ; 0E65 _ 6A, 21
        push    32                                      ; 0E67 _ 6A, 20
        call    io_out8                                 ; 0E69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E6E _ 83. C4, 10
        sub     esp, 12                                 ; 0E71 _ 83. EC, 0C
        push    96                                      ; 0E74 _ 6A, 60
        call    io_in8                                  ; 0E76 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E7B _ 83. C4, 10
        sub     esp, 4                                  ; 0E7E _ 83. EC, 04
        push    txtCursor                               ; 0E81 _ 68, 00000000(d)
        push    bootInfo                                ; 0E86 _ 68, 00000000(d)
        push    ?_094                                   ; 0E8B _ 68, 00000000(d)
        call    Printf                                  ; 0E90 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E95 _ 83. C4, 10
        nop                                             ; 0E98 _ 90
        leave                                           ; 0E99 _ C9
        ret                                             ; 0E9A _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 0E9B _ 55
        mov     ebp, esp                                ; 0E9C _ 89. E5
        sub     esp, 24                                 ; 0E9E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0EA1 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0EA6 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0EA9 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0EB0 _ 98
        mov     dword [ebp-10H], eax                    ; 0EB1 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0EB4 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EBB _ 98
        mov     dword [ebp-0CH], eax                    ; 0EBC _ 89. 45, F4
        sub     esp, 8                                  ; 0EBF _ 83. EC, 08
        push    33                                      ; 0EC2 _ 6A, 21
        push    32                                      ; 0EC4 _ 6A, 20
        call    io_out8                                 ; 0EC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ECB _ 83. C4, 10
        sub     esp, 12                                 ; 0ECE _ 83. EC, 0C
        push    96                                      ; 0ED1 _ 6A, 60
        call    io_in8                                  ; 0ED3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED8 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0EDB _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0EDE _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0EE2 _ 83. EC, 08
        push    eax                                     ; 0EE5 _ 50
        push    KEY_FIFO8                               ; 0EE6 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0EEB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EF0 _ 83. C4, 10
        nop                                             ; 0EF3 _ 90
        leave                                           ; 0EF4 _ C9
        ret                                             ; 0EF5 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 0EF6 _ 55
        mov     ebp, esp                                ; 0EF7 _ 89. E5
        sub     esp, 24                                 ; 0EF9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0EFC _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0F01 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0F04 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0F0B _ 98
        mov     dword [ebp-10H], eax                    ; 0F0C _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0F0F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0F16 _ 98
        mov     dword [ebp-0CH], eax                    ; 0F17 _ 89. 45, F4
        sub     esp, 8                                  ; 0F1A _ 83. EC, 08
        push    32                                      ; 0F1D _ 6A, 20
        push    160                                     ; 0F1F _ 68, 000000A0
        call    io_out8                                 ; 0F24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F29 _ 83. C4, 10
        sub     esp, 8                                  ; 0F2C _ 83. EC, 08
        push    32                                      ; 0F2F _ 6A, 20
        push    32                                      ; 0F31 _ 6A, 20
        call    io_out8                                 ; 0F33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F38 _ 83. C4, 10
        sub     esp, 12                                 ; 0F3B _ 83. EC, 0C
        push    96                                      ; 0F3E _ 6A, 60
        call    io_in8                                  ; 0F40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F45 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0F48 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0F4B _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0F4F _ 83. EC, 08
        push    eax                                     ; 0F52 _ 50
        push    MOUSE_FIFO8                             ; 0F53 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0F58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F5D _ 83. C4, 10
        nop                                             ; 0F60 _ 90
        leave                                           ; 0F61 _ C9
        ret                                             ; 0F62 _ C3
; intHandlerFromC_mouse End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 0F63 _ 55
        mov     ebp, esp                                ; 0F64 _ 89. E5
        push    dword [ebp+10H]                         ; 0F66 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F69 _ FF. 75, 0C
        push    ?_095                                   ; 0F6C _ 68, 00000003(d)
        call    Printf                                  ; 0F71 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0F76 _ 83. C4, 0C
        push    1                                       ; 0F79 _ 6A, 01
        push    dword [ebp+10H]                         ; 0F7B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F7E _ FF. 75, 0C
        call    PrintTab                                ; 0F81 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0F86 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 0F89 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0F8C _ 8B. 00
        push    eax                                     ; 0F8E _ 50
        call    intToHexStr                             ; 0F8F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0F94 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 0F97 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F9A _ FF. 75, 0C
        push    eax                                     ; 0F9D _ 50
        call    Printf                                  ; 0F9E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FA3 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 0FA6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FA9 _ FF. 75, 0C
        call    Println                                 ; 0FAC _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0FB1 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 0FB4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FB7 _ FF. 75, 0C
        push    ?_096                                   ; 0FBA _ 68, 00000012(d)
        call    Printf                                  ; 0FBF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FC4 _ 83. C4, 0C
        push    1                                       ; 0FC7 _ 6A, 01
        push    dword [ebp+10H]                         ; 0FC9 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FCC _ FF. 75, 0C
        call    PrintTab                                ; 0FCF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FD4 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 0FD7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FDA _ 8B. 40, 04
        push    eax                                     ; 0FDD _ 50
        call    intToHexStr                             ; 0FDE _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0FE3 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 0FE6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FE9 _ FF. 75, 0C
        push    eax                                     ; 0FEC _ 50
        call    Printf                                  ; 0FED _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FF2 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 0FF5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FF8 _ FF. 75, 0C
        call    Println                                 ; 0FFB _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1000 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1003 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1006 _ FF. 75, 0C
        push    ?_097                                   ; 1009 _ 68, 00000023(d)
        call    Printf                                  ; 100E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1013 _ 83. C4, 0C
        push    2                                       ; 1016 _ 6A, 02
        push    dword [ebp+10H]                         ; 1018 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 101B _ FF. 75, 0C
        call    PrintTab                                ; 101E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1023 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1026 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1029 _ 8B. 40, 08
        push    eax                                     ; 102C _ 50
        call    intToHexStr                             ; 102D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1032 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1035 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1038 _ FF. 75, 0C
        push    eax                                     ; 103B _ 50
        call    Printf                                  ; 103C _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1041 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1044 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1047 _ FF. 75, 0C
        call    Println                                 ; 104A _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 104F _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1052 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1055 _ FF. 75, 0C
        push    ?_098                                   ; 1058 _ 68, 00000030(d)
        call    Printf                                  ; 105D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1062 _ 83. C4, 0C
        push    1                                       ; 1065 _ 6A, 01
        push    dword [ebp+10H]                         ; 1067 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 106A _ FF. 75, 0C
        call    PrintTab                                ; 106D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1072 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1075 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1078 _ 8B. 40, 0C
        push    eax                                     ; 107B _ 50
        call    intToHexStr                             ; 107C _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1081 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1084 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1087 _ FF. 75, 0C
        push    eax                                     ; 108A _ 50
        call    Printf                                  ; 108B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1090 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1093 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1096 _ FF. 75, 0C
        call    Println                                 ; 1099 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 109E _ 83. C4, 08
        push    dword [ebp+10H]                         ; 10A1 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10A4 _ FF. 75, 0C
        push    ?_099                                   ; 10A7 _ 68, 0000003F(d)
        call    Printf                                  ; 10AC _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10B1 _ 83. C4, 0C
        push    3                                       ; 10B4 _ 6A, 03
        push    dword [ebp+10H]                         ; 10B6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10B9 _ FF. 75, 0C
        call    PrintTab                                ; 10BC _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10C1 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 10C4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 10C7 _ 8B. 40, 10
        push    eax                                     ; 10CA _ 50
        call    intToHexStr                             ; 10CB _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 10D0 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 10D3 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10D6 _ FF. 75, 0C
        push    eax                                     ; 10D9 _ 50
        call    Printf                                  ; 10DA _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10DF _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 10E2 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10E5 _ FF. 75, 0C
        call    Println                                 ; 10E8 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 10ED _ 83. C4, 08
        nop                                             ; 10F0 _ 90
        leave                                           ; 10F1 _ C9
        ret                                             ; 10F2 _ C3
; showMemoryInfo End of function

CMain:  ; Function begin
        push    ebp                                     ; 10F3 _ 55
        mov     ebp, esp                                ; 10F4 _ 89. E5
        sub     esp, 56                                 ; 10F6 _ 83. EC, 38
        call    pict_init                               ; 10F9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 10FE _ A1, 00000000(d)
        mov     dword [ebp-28H], eax                    ; 1103 _ 89. 45, D8
        movzx   eax, word [bootInfo+4H]                 ; 1106 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 110D _ 98
        mov     dword [ebp-24H], eax                    ; 110E _ 89. 45, DC
        movzx   eax, word [bootInfo+6H]                 ; 1111 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1118 _ 98
        mov     dword [ebp-20H], eax                    ; 1119 _ 89. 45, E0
        sub     esp, 8                                  ; 111C _ 83. EC, 08
        push    15                                      ; 111F _ 6A, 0F
        push    dword [ebp-28H]                         ; 1121 _ FF. 75, D8
        call    fillAll                                 ; 1124 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1129 _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 112C _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 1132 _ A1, 00000000(d)
        sub     esp, 12                                 ; 1137 _ 83. EC, 0C
        push    cursor                                  ; 113A _ 68, 00000000(d)
        push    edx                                     ; 113F _ 52
        push    eax                                     ; 1140 _ 50
        push    dword [ebp-24H]                         ; 1141 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 1144 _ FF. 75, D8
        call    PrintRGB                                ; 1147 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 114C _ 83. C4, 20
        call    io_sti                                  ; 114F _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 1154 _ E8, FFFFFFFC(rel)
        call    GET_MEMOTY_BLOCK_COUNT                  ; 1159 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 115E _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 1161 _ 8B. 45, E4
        sub     esp, 12                                 ; 1164 _ 83. EC, 0C
        push    eax                                     ; 1167 _ 50
        call    intToHexStr                             ; 1168 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 116D _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1170 _ 89. 45, E8
        sub     esp, 4                                  ; 1173 _ 83. EC, 04
        push    txtCursor                               ; 1176 _ 68, 00000000(d)
        push    bootInfo                                ; 117B _ 68, 00000000(d)
        push    dword [ebp-18H]                         ; 1180 _ FF. 75, E8
        call    Printf                                  ; 1183 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1188 _ 83. C4, 10
        call    GET_MEMDESC_ADDR                        ; 118B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 1190 _ 89. 45, EC
        sub     esp, 4                                  ; 1193 _ 83. EC, 04
        push    128                                     ; 1196 _ 68, 00000080
        push    key_buf                                 ; 119B _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 11A0 _ 68, 00000000(d)
        call    fifo8_init                              ; 11A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11AA _ 83. C4, 10
        sub     esp, 4                                  ; 11AD _ 83. EC, 04
        push    256                                     ; 11B0 _ 68, 00000100
        push    mouse_buf                               ; 11B5 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 11BA _ 68, 00000000(d)
        call    fifo8_init                              ; 11BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11C4 _ 83. C4, 10
        call    init_keyboard                           ; 11C7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], 0                      ; 11CC _ C7. 45, D4, 00000000
?_087:  call    io_cli                                  ; 11D3 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 11D8 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 11DB _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 11E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11E5 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 11E8 _ 89. 45, F0
        sub     esp, 12                                 ; 11EB _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 11EE _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 11F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11F8 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 11FB _ 89. 45, F4
        cmp     dword [ebp-10H], 0                      ; 11FE _ 83. 7D, F0, 00
        jz      ?_088                                   ; 1202 _ 74, 10
        cmp     dword [ebp-0CH], 0                      ; 1204 _ 83. 7D, F4, 00
        jz      ?_088                                   ; 1208 _ 74, 0A
        call    io_stihlt                               ; 120A _ E8, FFFFFFFC(rel)
        jmp     ?_092                                   ; 120F _ E9, 0000018C

?_088:  cmp     dword [ebp-10H], 0                      ; 1214 _ 83. 7D, F0, 00
        jne     ?_091                                   ; 1218 _ 0F 85, 00000101
        call    io_sti                                  ; 121E _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1223 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 1226 _ 68, 00000000(d)
        call    fifo8_r                                 ; 122B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1230 _ 83. C4, 10
        mov     byte [ebp-2FH], al                      ; 1233 _ 88. 45, D1
        movzx   eax, byte [ebp-2FH]                     ; 1236 _ 0F B6. 45, D1
        sub     esp, 12                                 ; 123A _ 83. EC, 0C
        push    eax                                     ; 123D _ 50
        call    getKeyMakeChar                          ; 123E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1243 _ 83. C4, 10
        mov     byte [ebp-2EH], al                      ; 1246 _ 88. 45, D2
        cmp     byte [ebp-2FH], 28                      ; 1249 _ 80. 7D, D1, 1C
        jne     ?_089                                   ; 124D _ 0F 85, 00000081
        sub     esp, 8                                  ; 1253 _ 83. EC, 08
        push    txtCursor                               ; 1256 _ 68, 00000000(d)
        push    bootInfo                                ; 125B _ 68, 00000000(d)
        call    Println                                 ; 1260 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1265 _ 83. C4, 10
        sub     esp, 8                                  ; 1268 _ 83. EC, 08
        push    15                                      ; 126B _ 6A, 0F
        push    bootInfo                                ; 126D _ 68, 00000000(d)
        call    clear                                   ; 1272 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1277 _ 83. C4, 10
        sub     esp, 12                                 ; 127A _ 83. EC, 0C
        push    txtCursor                               ; 127D _ 68, 00000000(d)
        call    initCursor                              ; 1282 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1287 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 128A _ 8B. 45, D4
        lea     edx, [eax+1H]                           ; 128D _ 8D. 50, 01
        mov     dword [ebp-2CH], edx                    ; 1290 _ 89. 55, D4
        mov     edx, eax                                ; 1293 _ 89. C2
        mov     eax, edx                                ; 1295 _ 89. D0
        shl     eax, 2                                  ; 1297 _ C1. E0, 02
        add     eax, edx                                ; 129A _ 01. D0
        shl     eax, 2                                  ; 129C _ C1. E0, 02
        mov     edx, eax                                ; 129F _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 12A1 _ 8B. 45, EC
        add     eax, edx                                ; 12A4 _ 01. D0
        sub     esp, 4                                  ; 12A6 _ 83. EC, 04
        push    txtCursor                               ; 12A9 _ 68, 00000000(d)
        push    bootInfo                                ; 12AE _ 68, 00000000(d)
        push    eax                                     ; 12B3 _ 50
        call    showMemoryInfo                          ; 12B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12B9 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 12BC _ 8B. 45, D4
        cmp     eax, dword [ebp-1CH]                    ; 12BF _ 3B. 45, E4
        jle     ?_087                                   ; 12C2 _ 0F 8E, FFFFFF0B
        mov     dword [ebp-2CH], 0                      ; 12C8 _ C7. 45, D4, 00000000
        jmp     ?_087                                   ; 12CF _ E9, FFFFFEFF

?_089:  cmp     byte [ebp-2EH], 9                       ; 12D4 _ 80. 7D, D2, 09
        jnz     ?_090                                   ; 12D8 _ 75, 1C
        sub     esp, 4                                  ; 12DA _ 83. EC, 04
        push    1                                       ; 12DD _ 6A, 01
        push    txtCursor                               ; 12DF _ 68, 00000000(d)
        push    bootInfo                                ; 12E4 _ 68, 00000000(d)
        call    PrintTab                                ; 12E9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12EE _ 83. C4, 10
        jmp     ?_087                                   ; 12F1 _ E9, FFFFFEDD

?_090:  cmp     byte [ebp-2EH], 0                       ; 12F6 _ 80. 7D, D2, 00
        je      ?_087                                   ; 12FA _ 0F 84, FFFFFED3
        movsx   eax, byte [ebp-2EH]                     ; 1300 _ 0F BE. 45, D2
        sub     esp, 4                                  ; 1304 _ 83. EC, 04
        push    txtCursor                               ; 1307 _ 68, 00000000(d)
        push    bootInfo                                ; 130C _ 68, 00000000(d)
        push    eax                                     ; 1311 _ 50
        call    PrintChar                               ; 1312 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1317 _ 83. C4, 10
        jmp     ?_087                                   ; 131A _ E9, FFFFFEB4

?_091:  cmp     dword [ebp-0CH], 0                      ; 131F _ 83. 7D, F4, 00
        jne     ?_087                                   ; 1323 _ 0F 85, FFFFFEAA
        call    io_sti                                  ; 1329 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 132E _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 1331 _ 68, 00000000(d)
        call    fifo8_r                                 ; 1336 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 133B _ 83. C4, 10
        mov     byte [ebp-2DH], al                      ; 133E _ 88. 45, D3
        movzx   eax, byte [ebp-2DH]                     ; 1341 _ 0F B6. 45, D3
        sub     esp, 8                                  ; 1345 _ 83. EC, 08
        push    eax                                     ; 1348 _ 50
        push    mdec                                    ; 1349 _ 68, 00000000(d)
        call    mouse_decode                            ; 134E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1353 _ 83. C4, 10
        test    eax, eax                                ; 1356 _ 85. C0
        je      ?_087                                   ; 1358 _ 0F 84, FFFFFE75
        sub     esp, 4                                  ; 135E _ 83. EC, 04
        push    cur_pos                                 ; 1361 _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 1366 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 1369 _ FF. 75, D8
        call    eraseMouse                              ; 136C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1371 _ 83. C4, 10
        sub     esp, 4                                  ; 1374 _ 83. EC, 04
        push    dword [ebp-20H]                         ; 1377 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 137A _ FF. 75, DC
        push    mdec                                    ; 137D _ 68, 00000000(d)
        call    computeMousePosition                    ; 1382 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1387 _ 83. C4, 10
        sub     esp, 4                                  ; 138A _ 83. EC, 04
        push    cur_pos                                 ; 138D _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 1392 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 1395 _ FF. 75, D8
        call    drawMouse                               ; 1398 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 139D _ 83. C4, 10
?_092:  jmp     ?_087                                   ; 13A0 _ E9, FFFFFE2E
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

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0060 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0068 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0070 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0078 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0080 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0088 _ ........

cur_pos: dq 0000001400000014H                           ; 0090 _ 0000001400000014 

bootInfo: dq 00C80140000A0000H                          ; 0098 _ 00C80140000A0000 

txtCursor:                                              ; yword
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 00A0 _ ........
        db 08H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 00A8 _ ........
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 00B0 _ ........
        db 0AH, 00H, 00H, 00H, 07H, 00H, 00H, 00H       ; 00B8 _ ........

str.1549:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C0 _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........

keyintToChar.1755:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 00E0 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 00E8 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 00F0 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 00F8 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0100 _ vbnm,./.

keyintToNumChar.1756:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0108 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0110 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........

keyintToChar.1760:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0120 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0128 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0130 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0138 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0140 _ vbnm,./.

keyintToNumChar.1761:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0148 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H                      ; 0150 _ 90-=.




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

str.1545:                                               ; byte
        resb    1                                       ; 01B8

?_093:  resb    2                                       ; 01B9




?_094:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.

?_095:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0003 _ baseAddr
        db 5FH, 4CH, 6FH, 77H, 3AH, 20H, 00H            ; 000B _ _Low: .

?_096:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0012 _ baseAddr
        db 5FH, 48H, 69H, 67H, 68H, 74H, 3AH, 20H       ; 001A _ _Hight: 
        db 00H                                          ; 0022 _ .

?_097:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 4CH       ; 0023 _ length_L
        db 6FH, 77H, 3AH, 20H, 00H                      ; 002B _ ow: .

?_098:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 48H       ; 0030 _ length_H
        db 69H, 67H, 68H, 74H, 3AH, 20H, 00H            ; 0038 _ ight: .

?_099:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003F _ type: .


