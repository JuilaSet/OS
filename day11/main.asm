; Disassembly of file: main.o
; Sat Oct 26 21:44:41 2019
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

fifo8_init:; Function begin
        push    ebp                                     ; 002D _ 55
        mov     ebp, esp                                ; 002E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0030 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0033 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 0036 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0038 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 003B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 003E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0041 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0044 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 004B _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 004E _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp+8H]                     ; 0055 _ 8B. 45, 08
        mov     dword [eax+10H], 0                      ; 0058 _ C7. 40, 10, 00000000
        nop                                             ; 005F _ 90
        pop     ebp                                     ; 0060 _ 5D
        ret                                             ; 0061 _ C3
; fifo8_init End of function

fifo8_w:; Function begin
        push    ebp                                     ; 0062 _ 55
        mov     ebp, esp                                ; 0063 _ 89. E5
        sub     esp, 4                                  ; 0065 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0068 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 006B _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 006E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0071 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0073 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0076 _ 8B. 40, 10
        add     edx, eax                                ; 0079 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 007B _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 007F _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0081 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0084 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0087 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 008A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 008D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0090 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0093 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0096 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0099 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 009C _ 8B. 48, 04
        mov     eax, edx                                ; 009F _ 89. D0
        cdq                                             ; 00A1 _ 99
        idiv    ecx                                     ; 00A2 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 00A4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 00A7 _ 89. 50, 10
        nop                                             ; 00AA _ 90
        leave                                           ; 00AB _ C9
        ret                                             ; 00AC _ C3
; fifo8_w End of function

fifo8_r:; Function begin
        push    ebp                                     ; 00AD _ 55
        mov     ebp, esp                                ; 00AE _ 89. E5
        sub     esp, 16                                 ; 00B0 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 00B3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 00B6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 00B8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 00BB _ 8B. 40, 0C
        add     eax, edx                                ; 00BE _ 01. D0
        movzx   eax, byte [eax]                         ; 00C0 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 00C3 _ 88. 45, FF
        mov     eax, dword [ebp+8H]                     ; 00C6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 00C9 _ 8B. 40, 08
        lea     edx, [eax-1H]                           ; 00CC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 00CF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 00D2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 00D5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 00D8 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 00DB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 00DE _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 00E1 _ 8B. 48, 04
        mov     eax, edx                                ; 00E4 _ 89. D0
        cdq                                             ; 00E6 _ 99
        idiv    ecx                                     ; 00E7 _ F7. F9
        mov     eax, dword [ebp+8H]                     ; 00E9 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 00EC _ 89. 50, 0C
        movzx   eax, byte [ebp-1H]                      ; 00EF _ 0F B6. 45, FF
        leave                                           ; 00F3 _ C9
        ret                                             ; 00F4 _ C3
; fifo8_r End of function

fifo8_isEmpty:; Function begin
        push    ebp                                     ; 00F5 _ 55
        mov     ebp, esp                                ; 00F6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 00F8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 00FB _ 8B. 40, 08
        test    eax, eax                                ; 00FE _ 85. C0
        sete    al                                      ; 0100 _ 0F 94. C0
        movzx   eax, al                                 ; 0103 _ 0F B6. C0
        pop     ebp                                     ; 0106 _ 5D
        ret                                             ; 0107 _ C3
; fifo8_isEmpty End of function

fifo8_isFull:; Function begin
        push    ebp                                     ; 0108 _ 55
        mov     ebp, esp                                ; 0109 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 010B _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 010E _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0111 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0114 _ 8B. 40, 04
        cmp     edx, eax                                ; 0117 _ 39. C2
        sete    al                                      ; 0119 _ 0F 94. C0
        movzx   eax, al                                 ; 011C _ 0F B6. C0
        pop     ebp                                     ; 011F _ 5D
        ret                                             ; 0120 _ C3
; fifo8_isFull End of function

set_pict:; Function begin
        push    ebp                                     ; 0121 _ 55
        mov     ebp, esp                                ; 0122 _ 89. E5
        sub     esp, 24                                 ; 0124 _ 83. EC, 18
        call    io_load_eflags                          ; 0127 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 012C _ 89. 45, F4
        call    io_cli                                  ; 012F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0134 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 0137 _ FF. 75, 14
        push    968                                     ; 013A _ 68, 000003C8
        call    io_out8                                 ; 013F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0144 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0147 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 014A _ 89. 45, F0
        jmp     ?_003                                   ; 014D _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 014F _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0152 _ 0F B6. 00
        shr     al, 2                                   ; 0155 _ C0. E8, 02
        movzx   eax, al                                 ; 0158 _ 0F B6. C0
        sub     esp, 8                                  ; 015B _ 83. EC, 08
        push    eax                                     ; 015E _ 50
        push    969                                     ; 015F _ 68, 000003C9
        call    io_out8                                 ; 0164 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0169 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 016C _ 8B. 45, 10
        add     eax, 1                                  ; 016F _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0172 _ 0F B6. 00
        shr     al, 2                                   ; 0175 _ C0. E8, 02
        movzx   eax, al                                 ; 0178 _ 0F B6. C0
        sub     esp, 8                                  ; 017B _ 83. EC, 08
        push    eax                                     ; 017E _ 50
        push    969                                     ; 017F _ 68, 000003C9
        call    io_out8                                 ; 0184 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0189 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 018C _ 8B. 45, 10
        add     eax, 2                                  ; 018F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0192 _ 0F B6. 00
        shr     al, 2                                   ; 0195 _ C0. E8, 02
        movzx   eax, al                                 ; 0198 _ 0F B6. C0
        sub     esp, 8                                  ; 019B _ 83. EC, 08
        push    eax                                     ; 019E _ 50
        push    969                                     ; 019F _ 68, 000003C9
        call    io_out8                                 ; 01A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01A9 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 01AC _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 01B0 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 01B4 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 01B7 _ 3B. 45, 0C
        jl      ?_002                                   ; 01BA _ 7C, 93
        sub     esp, 12                                 ; 01BC _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 01BF _ FF. 75, F4
        call    io_store_eflags                         ; 01C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C7 _ 83. C4, 10
        nop                                             ; 01CA _ 90
        leave                                           ; 01CB _ C9
        ret                                             ; 01CC _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 01CD _ 55
        mov     ebp, esp                                ; 01CE _ 89. E5
        sub     esp, 8                                  ; 01D0 _ 83. EC, 08
        push    0                                       ; 01D3 _ 6A, 00
        push    pict                                    ; 01D5 _ 68, 00000000(d)
        push    16                                      ; 01DA _ 6A, 10
        push    0                                       ; 01DC _ 6A, 00
        call    set_pict                                ; 01DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E3 _ 83. C4, 10
        nop                                             ; 01E6 _ 90
        leave                                           ; 01E7 _ C9
        ret                                             ; 01E8 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 01E9 _ 55
        mov     ebp, esp                                ; 01EA _ 89. E5
        sub     esp, 20                                 ; 01EC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 01EF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 01F2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 01F5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 01F8 _ 89. 45, FC
        jmp     ?_007                                   ; 01FB _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 01FD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0200 _ 89. 45, F8
        jmp     ?_006                                   ; 0203 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 0205 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0208 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 020C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 020E _ 8B. 45, F8
        add     eax, edx                                ; 0211 _ 01. D0
        mov     edx, eax                                ; 0213 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0215 _ 8B. 45, 08
        add     edx, eax                                ; 0218 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 021A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 021E _ 88. 02
        add     dword [ebp-8H], 1                       ; 0220 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 0224 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0227 _ 3B. 45, 1C
        jle     ?_005                                   ; 022A _ 7E, D9
        add     dword [ebp-4H], 1                       ; 022C _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 0230 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0233 _ 3B. 45, 20
        jle     ?_004                                   ; 0236 _ 7E, C5
        nop                                             ; 0238 _ 90
        leave                                           ; 0239 _ C9
        ret                                             ; 023A _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 023B _ 55
        mov     ebp, esp                                ; 023C _ 89. E5
        sub     esp, 20                                 ; 023E _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0241 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0244 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0247 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 024B _ 83. E8, 61
        shl     eax, 4                                  ; 024E _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 0251 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0256 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0259 _ 8B. 45, FC
        leave                                           ; 025C _ C9
        ret                                             ; 025D _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 025E _ 55
        mov     ebp, esp                                ; 025F _ 89. E5
        sub     esp, 20                                 ; 0261 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0264 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0267 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 026A _ 0F BE. 45, EC
        sub     eax, 48                                 ; 026E _ 83. E8, 30
        shl     eax, 4                                  ; 0271 _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0274 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0279 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 027C _ 8B. 45, FC
        leave                                           ; 027F _ C9
        ret                                             ; 0280 _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 0281 _ 55
        mov     ebp, esp                                ; 0282 _ 89. E5
        sub     esp, 20                                 ; 0284 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0287 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 028A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 028D _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 0294 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 0299 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 029C _ 8B. 45, 1C
        add     eax, edx                                ; 029F _ 01. D0
        movzx   eax, byte [eax]                         ; 02A1 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 02A4 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 02A7 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 02AB _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 02AD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 02B0 _ 8B. 45, FC
        add     eax, edx                                ; 02B3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 02B5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02B9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02BB _ 8B. 45, 10
        add     eax, edx                                ; 02BE _ 01. D0
        mov     edx, eax                                ; 02C0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 02C2 _ 8B. 45, 08
        add     edx, eax                                ; 02C5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 02C7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02CB _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 02CD _ 0F BE. 45, FB
        and     eax, 40H                                ; 02D1 _ 83. E0, 40
        test    eax, eax                                ; 02D4 _ 85. C0
        jz      ?_010                                   ; 02D6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 02D8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 02DB _ 8B. 45, FC
        add     eax, edx                                ; 02DE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 02E0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 02E4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 02E6 _ 8B. 45, 10
        add     eax, edx                                ; 02E9 _ 01. D0
        lea     edx, [eax+1H]                           ; 02EB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 02EE _ 8B. 45, 08
        add     edx, eax                                ; 02F1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 02F3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 02F7 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 02F9 _ 0F BE. 45, FB
        and     eax, 20H                                ; 02FD _ 83. E0, 20
        test    eax, eax                                ; 0300 _ 85. C0
        jz      ?_011                                   ; 0302 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0304 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0307 _ 8B. 45, FC
        add     eax, edx                                ; 030A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 030C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0310 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0312 _ 8B. 45, 10
        add     eax, edx                                ; 0315 _ 01. D0
        lea     edx, [eax+2H]                           ; 0317 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 031A _ 8B. 45, 08
        add     edx, eax                                ; 031D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 031F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0323 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0325 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0329 _ 83. E0, 10
        test    eax, eax                                ; 032C _ 85. C0
        jz      ?_012                                   ; 032E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0330 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0333 _ 8B. 45, FC
        add     eax, edx                                ; 0336 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0338 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 033C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 033E _ 8B. 45, 10
        add     eax, edx                                ; 0341 _ 01. D0
        lea     edx, [eax+3H]                           ; 0343 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0346 _ 8B. 45, 08
        add     edx, eax                                ; 0349 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 034B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 034F _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0351 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0355 _ 83. E0, 08
        test    eax, eax                                ; 0358 _ 85. C0
        jz      ?_013                                   ; 035A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 035C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 035F _ 8B. 45, FC
        add     eax, edx                                ; 0362 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0364 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0368 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 036A _ 8B. 45, 10
        add     eax, edx                                ; 036D _ 01. D0
        lea     edx, [eax+4H]                           ; 036F _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0372 _ 8B. 45, 08
        add     edx, eax                                ; 0375 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0377 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 037B _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 037D _ 0F BE. 45, FB
        and     eax, 04H                                ; 0381 _ 83. E0, 04
        test    eax, eax                                ; 0384 _ 85. C0
        jz      ?_014                                   ; 0386 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0388 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 038B _ 8B. 45, FC
        add     eax, edx                                ; 038E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0390 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0394 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0396 _ 8B. 45, 10
        add     eax, edx                                ; 0399 _ 01. D0
        lea     edx, [eax+5H]                           ; 039B _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 039E _ 8B. 45, 08
        add     edx, eax                                ; 03A1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03A3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03A7 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 03A9 _ 0F BE. 45, FB
        and     eax, 02H                                ; 03AD _ 83. E0, 02
        test    eax, eax                                ; 03B0 _ 85. C0
        jz      ?_015                                   ; 03B2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03B4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03B7 _ 8B. 45, FC
        add     eax, edx                                ; 03BA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03BC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03C0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03C2 _ 8B. 45, 10
        add     eax, edx                                ; 03C5 _ 01. D0
        lea     edx, [eax+6H]                           ; 03C7 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 03CA _ 8B. 45, 08
        add     edx, eax                                ; 03CD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03CF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03D3 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 03D5 _ 0F BE. 45, FB
        and     eax, 01H                                ; 03D9 _ 83. E0, 01
        test    eax, eax                                ; 03DC _ 85. C0
        jz      ?_016                                   ; 03DE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03E0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03E3 _ 8B. 45, FC
        add     eax, edx                                ; 03E6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03E8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03EC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03EE _ 8B. 45, 10
        add     eax, edx                                ; 03F1 _ 01. D0
        lea     edx, [eax+7H]                           ; 03F3 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 03F6 _ 8B. 45, 08
        add     edx, eax                                ; 03F9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03FB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03FF _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 0401 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 0405 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0409 _ 0F 8E, FFFFFE8A
        nop                                             ; 040F _ 90
        leave                                           ; 0410 _ C9
        ret                                             ; 0411 _ C3
; showFont8 End of function

Print:  ; Function begin
        push    ebp                                     ; 0412 _ 55
        mov     ebp, esp                                ; 0413 _ 89. E5
        push    ebx                                     ; 0415 _ 53
        sub     esp, 16                                 ; 0416 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0419 _ C7. 45, F8, 00000000
        jmp     ?_023                                   ; 0420 _ E9, 0000011C

?_018:  mov     edx, dword [ebp-8H]                     ; 0425 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 0428 _ 8B. 45, 24
        add     eax, edx                                ; 042B _ 01. D0
        movzx   eax, byte [eax]                         ; 042D _ 0F B6. 00
        mov     byte [ebp-9H], al                       ; 0430 _ 88. 45, F7
        cmp     byte [ebp-9H], 57                       ; 0433 _ 80. 7D, F7, 39
        jg      ?_019                                   ; 0437 _ 7F, 42
        cmp     byte [ebp-9H], 47                       ; 0439 _ 80. 7D, F7, 2F
        jle     ?_019                                   ; 043D _ 7E, 3C
        movsx   eax, byte [ebp-9H]                      ; 043F _ 0F BE. 45, F7
        push    eax                                     ; 0443 _ 50
        call    getAddrOffsetNumber                     ; 0444 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0449 _ 83. C4, 04
        mov     ebx, eax                                ; 044C _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 044E _ 8B. 45, 20
        movsx   eax, al                                 ; 0451 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0454 _ 8B. 55, 18
        mov     ecx, edx                                ; 0457 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0459 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 045D _ 8B. 55, 10
        add     edx, ecx                                ; 0460 _ 01. CA
        push    ebx                                     ; 0462 _ 53
        push    eax                                     ; 0463 _ 50
        push    dword [ebp+14H]                         ; 0464 _ FF. 75, 14
        push    edx                                     ; 0467 _ 52
        push    dword [ebp+0CH]                         ; 0468 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 046B _ FF. 75, 08
        call    showFont8                               ; 046E _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0473 _ 83. C4, 18
        jmp     ?_022                                   ; 0476 _ E9, 000000C2

?_019:  cmp     byte [ebp-9H], 122                      ; 047B _ 80. 7D, F7, 7A
        jg      ?_020                                   ; 047F _ 7F, 3F
        cmp     byte [ebp-9H], 96                       ; 0481 _ 80. 7D, F7, 60
        jle     ?_020                                   ; 0485 _ 7E, 39
        movsx   eax, byte [ebp-9H]                      ; 0487 _ 0F BE. 45, F7
        push    eax                                     ; 048B _ 50
        call    getAddrOffsetAlpha                      ; 048C _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0491 _ 83. C4, 04
        mov     ebx, eax                                ; 0494 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 0496 _ 8B. 45, 20
        movsx   eax, al                                 ; 0499 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 049C _ 8B. 55, 18
        mov     ecx, edx                                ; 049F _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 04A1 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 04A5 _ 8B. 55, 10
        add     edx, ecx                                ; 04A8 _ 01. CA
        push    ebx                                     ; 04AA _ 53
        push    eax                                     ; 04AB _ 50
        push    dword [ebp+14H]                         ; 04AC _ FF. 75, 14
        push    edx                                     ; 04AF _ 52
        push    dword [ebp+0CH]                         ; 04B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04B3 _ FF. 75, 08
        call    showFont8                               ; 04B6 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 04BB _ 83. C4, 18
        jmp     ?_022                                   ; 04BE _ EB, 7D

?_020:  cmp     byte [ebp-9H], 90                       ; 04C0 _ 80. 7D, F7, 5A
        jg      ?_021                                   ; 04C4 _ 7F, 45
        cmp     byte [ebp-9H], 64                       ; 04C6 _ 80. 7D, F7, 40
        jle     ?_021                                   ; 04CA _ 7E, 3F
        movzx   eax, byte [ebp-9H]                      ; 04CC _ 0F B6. 45, F7
        add     eax, 32                                 ; 04D0 _ 83. C0, 20
        movsx   eax, al                                 ; 04D3 _ 0F BE. C0
        push    eax                                     ; 04D6 _ 50
        call    getAddrOffsetAlpha                      ; 04D7 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 04DC _ 83. C4, 04
        mov     ebx, eax                                ; 04DF _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 04E1 _ 8B. 45, 20
        movsx   eax, al                                 ; 04E4 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 04E7 _ 8B. 55, 18
        mov     ecx, edx                                ; 04EA _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 04EC _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 04F0 _ 8B. 55, 10
        add     edx, ecx                                ; 04F3 _ 01. CA
        push    ebx                                     ; 04F5 _ 53
        push    eax                                     ; 04F6 _ 50
        push    dword [ebp+14H]                         ; 04F7 _ FF. 75, 14
        push    edx                                     ; 04FA _ 52
        push    dword [ebp+0CH]                         ; 04FB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04FE _ FF. 75, 08
        call    showFont8                               ; 0501 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0506 _ 83. C4, 18
        jmp     ?_022                                   ; 0509 _ EB, 32

?_021:  cmp     byte [ebp-9H], 32                       ; 050B _ 80. 7D, F7, 20
        jnz     ?_022                                   ; 050F _ 75, 2C
        mov     eax, dword [ebp+20H]                    ; 0511 _ 8B. 45, 20
        movsx   eax, al                                 ; 0514 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 0517 _ 8B. 55, 18
        mov     ecx, edx                                ; 051A _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 051C _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 0520 _ 8B. 55, 10
        add     edx, ecx                                ; 0523 _ 01. CA
        push    vsFont_EMPTY                            ; 0525 _ 68, 00000000(d)
        push    eax                                     ; 052A _ 50
        push    dword [ebp+14H]                         ; 052B _ FF. 75, 14
        push    edx                                     ; 052E _ 52
        push    dword [ebp+0CH]                         ; 052F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0532 _ FF. 75, 08
        call    showFont8                               ; 0535 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 053A _ 83. C4, 18
?_022:  add     dword [ebp-8H], 1                       ; 053D _ 83. 45, F8, 01
?_023:  mov     edx, dword [ebp-8H]                     ; 0541 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 0544 _ 8B. 45, 24
        add     eax, edx                                ; 0547 _ 01. D0
        movzx   eax, byte [eax]                         ; 0549 _ 0F B6. 00
        test    al, al                                  ; 054C _ 84. C0
        jne     ?_018                                   ; 054E _ 0F 85, FFFFFED1
        nop                                             ; 0554 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0555 _ 8B. 5D, FC
        leave                                           ; 0558 _ C9
        ret                                             ; 0559 _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 055A _ 55
        mov     ebp, esp                                ; 055B _ 89. E5
        sub     esp, 4                                  ; 055D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0560 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0563 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0566 _ 80. 7D, FC, 2A
        jnz     ?_024                                   ; 056A _ 75, 0A
        mov     eax, 0                                  ; 056C _ B8, 00000000
        jmp     ?_039                                   ; 0571 _ E9, 000000D2

?_024:  cmp     byte [ebp-4H], 114                      ; 0576 _ 80. 7D, FC, 72
        jnz     ?_025                                   ; 057A _ 75, 0A
        mov     eax, 1                                  ; 057C _ B8, 00000001
        jmp     ?_039                                   ; 0581 _ E9, 000000C2

?_025:  cmp     byte [ebp-4H], 103                      ; 0586 _ 80. 7D, FC, 67
        jnz     ?_026                                   ; 058A _ 75, 0A
        mov     eax, 2                                  ; 058C _ B8, 00000002
        jmp     ?_039                                   ; 0591 _ E9, 000000B2

?_026:  cmp     byte [ebp-4H], 121                      ; 0596 _ 80. 7D, FC, 79
        jnz     ?_027                                   ; 059A _ 75, 0A
        mov     eax, 3                                  ; 059C _ B8, 00000003
        jmp     ?_039                                   ; 05A1 _ E9, 000000A2

?_027:  cmp     byte [ebp-4H], 98                       ; 05A6 _ 80. 7D, FC, 62
        jnz     ?_028                                   ; 05AA _ 75, 0A
        mov     eax, 4                                  ; 05AC _ B8, 00000004
        jmp     ?_039                                   ; 05B1 _ E9, 00000092

?_028:  cmp     byte [ebp-4H], 112                      ; 05B6 _ 80. 7D, FC, 70
        jnz     ?_029                                   ; 05BA _ 75, 0A
        mov     eax, 5                                  ; 05BC _ B8, 00000005
        jmp     ?_039                                   ; 05C1 _ E9, 00000082

?_029:  cmp     byte [ebp-4H], 108                      ; 05C6 _ 80. 7D, FC, 6C
        jnz     ?_030                                   ; 05CA _ 75, 07
        mov     eax, 6                                  ; 05CC _ B8, 00000006
        jmp     ?_039                                   ; 05D1 _ EB, 75

?_030:  cmp     byte [ebp-4H], 119                      ; 05D3 _ 80. 7D, FC, 77
        jnz     ?_031                                   ; 05D7 _ 75, 07
        mov     eax, 7                                  ; 05D9 _ B8, 00000007
        jmp     ?_039                                   ; 05DE _ EB, 68

?_031:  cmp     byte [ebp-4H], 45                       ; 05E0 _ 80. 7D, FC, 2D
        jnz     ?_032                                   ; 05E4 _ 75, 07
        mov     eax, 8                                  ; 05E6 _ B8, 00000008
        jmp     ?_039                                   ; 05EB _ EB, 5B

?_032:  cmp     byte [ebp-4H], 82                       ; 05ED _ 80. 7D, FC, 52
        jnz     ?_033                                   ; 05F1 _ 75, 07
        mov     eax, 9                                  ; 05F3 _ B8, 00000009
        jmp     ?_039                                   ; 05F8 _ EB, 4E

?_033:  cmp     byte [ebp-4H], 71                       ; 05FA _ 80. 7D, FC, 47
        jnz     ?_034                                   ; 05FE _ 75, 07
        mov     eax, 10                                 ; 0600 _ B8, 0000000A
        jmp     ?_039                                   ; 0605 _ EB, 41

?_034:  cmp     byte [ebp-4H], 89                       ; 0607 _ 80. 7D, FC, 59
        jnz     ?_035                                   ; 060B _ 75, 07
        mov     eax, 11                                 ; 060D _ B8, 0000000B
        jmp     ?_039                                   ; 0612 _ EB, 34

?_035:  cmp     byte [ebp-4H], 66                       ; 0614 _ 80. 7D, FC, 42
        jnz     ?_036                                   ; 0618 _ 75, 07
        mov     eax, 12                                 ; 061A _ B8, 0000000C
        jmp     ?_039                                   ; 061F _ EB, 27

?_036:  cmp     byte [ebp-4H], 80                       ; 0621 _ 80. 7D, FC, 50
        jnz     ?_037                                   ; 0625 _ 75, 07
        mov     eax, 13                                 ; 0627 _ B8, 0000000D
        jmp     ?_039                                   ; 062C _ EB, 1A

?_037:  cmp     byte [ebp-4H], 115                      ; 062E _ 80. 7D, FC, 73
        jnz     ?_038                                   ; 0632 _ 75, 07
        mov     eax, 14                                 ; 0634 _ B8, 0000000E
        jmp     ?_039                                   ; 0639 _ EB, 0D

?_038:  cmp     byte [ebp-4H], 61                       ; 063B _ 80. 7D, FC, 3D
        jnz     ?_039                                   ; 063F _ 75, 07
        mov     eax, 15                                 ; 0641 _ B8, 0000000F
        jmp     ?_039                                   ; 0646 _ EB, 00

?_039:  leave                                           ; 0648 _ C9
        ret                                             ; 0649 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 064A _ 55
        mov     ebp, esp                                ; 064B _ 89. E5
        push    ebx                                     ; 064D _ 53
        sub     esp, 16                                 ; 064E _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 0651 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0658 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 065F _ C7. 45, F8, 00000000
?_040:  mov     edx, dword [ebp-8H]                     ; 0666 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0669 _ 8B. 45, 18
        add     eax, edx                                ; 066C _ 01. D0
        movzx   eax, byte [eax]                         ; 066E _ 0F B6. 00
        test    al, al                                  ; 0671 _ 84. C0
        jnz     ?_041                                   ; 0673 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0675 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0678 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 067B _ 8B. 45, 18
        add     eax, edx                                ; 067E _ 01. D0
        movzx   eax, byte [eax]                         ; 0680 _ 0F B6. 00
        test    al, al                                  ; 0683 _ 84. C0
        jz      ?_044                                   ; 0685 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0687 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 068B _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 0692 _ EB, 4C

?_041:  mov     edx, dword [ebp-8H]                     ; 0694 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0697 _ 8B. 45, 18
        add     eax, edx                                ; 069A _ 01. D0
        movzx   eax, byte [eax]                         ; 069C _ 0F B6. 00
        cmp     al, 46                                  ; 069F _ 3C, 2E
        jz      ?_042                                   ; 06A1 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 06A3 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 06A6 _ 8B. 45, F0
        add     eax, edx                                ; 06A9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06AB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06AF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06B1 _ 8B. 45, 10
        add     edx, eax                                ; 06B4 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 06B6 _ 8B. 45, F4
        add     eax, edx                                ; 06B9 _ 01. D0
        mov     edx, eax                                ; 06BB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06BD _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 06C0 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 06C3 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 06C6 _ 8B. 45, 18
        add     eax, edx                                ; 06C9 _ 01. D0
        movzx   eax, byte [eax]                         ; 06CB _ 0F B6. 00
        movsx   eax, al                                 ; 06CE _ 0F BE. C0
        push    eax                                     ; 06D1 _ 50
        call    charToPictColor                         ; 06D2 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 06D7 _ 83. C4, 04
        mov     byte [ebx], al                          ; 06DA _ 88. 03
?_042:  add     dword [ebp-0CH], 1                      ; 06DC _ 83. 45, F4, 01
?_043:  add     dword [ebp-8H], 1                       ; 06E0 _ 83. 45, F8, 01
        jmp     ?_040                                   ; 06E4 _ EB, 80

?_044:  nop                                             ; 06E6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06E7 _ 8B. 5D, FC
        leave                                           ; 06EA _ C9
        ret                                             ; 06EB _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 06EC _ 55
        mov     ebp, esp                                ; 06ED _ 89. E5
        sub     esp, 16                                 ; 06EF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 06F2 _ C7. 45, FC, 00000000
        jmp     ?_046                                   ; 06F9 _ EB, 11

?_045:  mov     edx, dword [ebp-4H]                     ; 06FB _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 06FE _ 8B. 45, 08
        add     eax, edx                                ; 0701 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0703 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0706 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0708 _ 83. 45, FC, 01
?_046:  cmp     dword [ebp-4H], 65534                   ; 070C _ 81. 7D, FC, 0000FFFE
        jle     ?_045                                   ; 0713 _ 7E, E6
        nop                                             ; 0715 _ 90
        leave                                           ; 0716 _ C9
        ret                                             ; 0717 _ C3
; fillAll End of function

Printf: ; Function begin
        push    ebp                                     ; 0718 _ 55
        mov     ebp, esp                                ; 0719 _ 89. E5
        push    ebx                                     ; 071B _ 53
        sub     esp, 16                                 ; 071C _ 83. EC, 10
        push    dword [ebp+8H]                          ; 071F _ FF. 75, 08
        call    strlen                                  ; 0722 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0727 _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 072A _ 89. 45, F8
        mov     ebx, dword [height]                     ; 072D _ 8B. 1D, 00000000(d)
        mov     ecx, dword [width]                      ; 0733 _ 8B. 0D, 00000000(d)
        mov     edx, dword [pointerY]                   ; 0739 _ 8B. 15, 00000000(d)
        mov     eax, dword [pointerX]                   ; 073F _ A1, 00000000(d)
        push    dword [ebp+8H]                          ; 0744 _ FF. 75, 08
        push    7                                       ; 0747 _ 6A, 07
        push    ebx                                     ; 0749 _ 53
        push    ecx                                     ; 074A _ 51
        push    edx                                     ; 074B _ 52
        push    eax                                     ; 074C _ 50
        push    dword [ebp+10H]                         ; 074D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0750 _ FF. 75, 0C
        call    Print                                   ; 0753 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0758 _ 83. C4, 20
        mov     eax, dword [width]                      ; 075B _ A1, 00000000(d)
        imul    eax, dword [ebp-8H]                     ; 0760 _ 0F AF. 45, F8
        mov     edx, eax                                ; 0764 _ 89. C2
        mov     eax, dword [pointerX]                   ; 0766 _ A1, 00000000(d)
        add     eax, edx                                ; 076B _ 01. D0
        mov     dword [pointerX], eax                   ; 076D _ A3, 00000000(d)
        mov     eax, dword [ebp+10H]                    ; 0772 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0775 _ 8D. 50, EC
        mov     eax, dword [pointerX]                   ; 0778 _ A1, 00000000(d)
        cmp     edx, eax                                ; 077D _ 39. C2
        jg      ?_047                                   ; 077F _ 7F, 2B
        mov     dword [pointerX], 20                    ; 0781 _ C7. 05, 00000000(d), 00000014
        mov     eax, dword [pointerY]                   ; 078B _ A1, 00000000(d)
        add     eax, 16                                 ; 0790 _ 83. C0, 10
        mov     dword [pointerY], eax                   ; 0793 _ A3, 00000000(d)
        mov     eax, dword [pointerY]                   ; 0798 _ A1, 00000000(d)
        cmp     eax, dword [ebp+14H]                    ; 079D _ 3B. 45, 14
        jl      ?_047                                   ; 07A0 _ 7C, 0A
        mov     dword [pointerY], 18                    ; 07A2 _ C7. 05, 00000000(d), 00000012
?_047:  nop                                             ; 07AC _ 90
        mov     ebx, dword [ebp-4H]                     ; 07AD _ 8B. 5D, FC
        leave                                           ; 07B0 _ C9
        ret                                             ; 07B1 _ C3
; Printf End of function

charToHex:; Function begin
        push    ebp                                     ; 07B2 _ 55
        mov     ebp, esp                                ; 07B3 _ 89. E5
        sub     esp, 4                                  ; 07B5 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 07B8 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 07BB _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 07BE _ 80. 7D, FC, 09
        jle     ?_048                                   ; 07C2 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 07C4 _ 0F B6. 45, FC
        add     eax, 87                                 ; 07C8 _ 83. C0, 57
        jmp     ?_049                                   ; 07CB _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 07CD _ 0F B6. 45, FC
        add     eax, 48                                 ; 07D1 _ 83. C0, 30
?_049:  leave                                           ; 07D4 _ C9
        ret                                             ; 07D5 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 07D6 _ 55
        mov     ebp, esp                                ; 07D7 _ 89. E5
        sub     esp, 4                                  ; 07D9 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 07DC _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 07DF _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 07E2 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 07E6 _ 0F BE. C0
        and     eax, 0FH                                ; 07E9 _ 83. E0, 0F
        push    eax                                     ; 07EC _ 50
        call    charToHex                               ; 07ED _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 07F2 _ 83. C4, 04
        mov     byte [?_069], al                        ; 07F5 _ A2, 00000259(d)
        shr     byte [ebp-4H], 4                        ; 07FA _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 07FE _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0802 _ 0F BE. C0
        and     eax, 0FH                                ; 0805 _ 83. E0, 0F
        push    eax                                     ; 0808 _ 50
        call    charToHex                               ; 0809 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 080E _ 83. C4, 04
        mov     byte [keystr.1650], al                  ; 0811 _ A2, 00000258(d)
        mov     eax, keystr.1650                        ; 0816 _ B8, 00000258(d)
        leave                                           ; 081B _ C9
        ret                                             ; 081C _ C3
; charToHexStr End of function

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
        push    ?_070                                   ; 0AF5 _ 68, 00000000(d)
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
        sub     esp, 8                                  ; 0B4C _ 83. EC, 08
        push    eax                                     ; 0B4F _ 50
        push    KEY_FIFO8                               ; 0B50 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0B55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5A _ 83. C4, 10
        nop                                             ; 0B5D _ 90
        leave                                           ; 0B5E _ C9
        ret                                             ; 0B5F _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 0B60 _ 55
        mov     ebp, esp                                ; 0B61 _ 89. E5
        sub     esp, 24                                 ; 0B63 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B66 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B6B _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0B6E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B75 _ 98
        mov     dword [ebp-10H], eax                    ; 0B76 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0B79 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B80 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B81 _ 89. 45, F4
        sub     esp, 8                                  ; 0B84 _ 83. EC, 08
        push    32                                      ; 0B87 _ 6A, 20
        push    160                                     ; 0B89 _ 68, 000000A0
        call    io_out8                                 ; 0B8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B93 _ 83. C4, 10
        sub     esp, 8                                  ; 0B96 _ 83. EC, 08
        push    32                                      ; 0B99 _ 6A, 20
        push    32                                      ; 0B9B _ 6A, 20
        call    io_out8                                 ; 0B9D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BA2 _ 83. C4, 10
        sub     esp, 12                                 ; 0BA5 _ 83. EC, 0C
        push    96                                      ; 0BA8 _ 6A, 60
        call    io_in8                                  ; 0BAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BAF _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0BB2 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0BB5 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0BB9 _ 83. EC, 08
        push    eax                                     ; 0BBC _ 50
        push    MOUSE_FIFO8                             ; 0BBD _ 68, 00000000(d)
        call    fifo8_w                                 ; 0BC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BC7 _ 83. C4, 10
        nop                                             ; 0BCA _ 90
        leave                                           ; 0BCB _ C9
        ret                                             ; 0BCC _ C3
; intHandlerFromC_mouse End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0BCD _ 55
        mov     ebp, esp                                ; 0BCE _ 89. E5
        push    ebx                                     ; 0BD0 _ 53
        mov     eax, dword [ebp+10H]                    ; 0BD1 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0BD4 _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0BD7 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0BDA _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0BDD _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0BDF _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0BE2 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0BE5 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0BE8 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0BEB _ 8B. 00
        push    ebx                                     ; 0BED _ 53
        push    ecx                                     ; 0BEE _ 51
        push    edx                                     ; 0BEF _ 52
        push    eax                                     ; 0BF0 _ 50
        push    15                                      ; 0BF1 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0BF3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BF6 _ FF. 75, 08
        call    boxfill8                                ; 0BF9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0BFE _ 83. C4, 1C
        nop                                             ; 0C01 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0C02 _ 8B. 5D, FC
        leave                                           ; 0C05 _ C9
        ret                                             ; 0C06 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0C07 _ 55
        mov     ebp, esp                                ; 0C08 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0C0A _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0C0D _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0C10 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0C13 _ 8B. 00
        push    cursor                                  ; 0C15 _ 68, 00000000(d)
        push    edx                                     ; 0C1A _ 52
        push    eax                                     ; 0C1B _ 50
        push    dword [ebp+0CH]                         ; 0C1C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0C1F _ FF. 75, 08
        call    PrintRGB                                ; 0C22 _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0C27 _ 83. C4, 14
        nop                                             ; 0C2A _ 90
        leave                                           ; 0C2B _ C9
        ret                                             ; 0C2C _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0C2D _ 55
        mov     ebp, esp                                ; 0C2E _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0C30 _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0C36 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C39 _ 8B. 40, 04
        add     eax, edx                                ; 0C3C _ 01. D0
        mov     dword [cur_pos], eax                    ; 0C3E _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0C43 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0C49 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C4C _ 8B. 40, 08
        add     eax, edx                                ; 0C4F _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0C51 _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0C56 _ A1, 00000000(d)
        test    eax, eax                                ; 0C5B _ 85. C0
        jns     ?_061                                   ; 0C5D _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0C5F _ C7. 05, 00000000(d), 00000000
?_061:  mov     eax, dword [cur_pos+4H]                 ; 0C69 _ A1, 00000004(d)
        test    eax, eax                                ; 0C6E _ 85. C0
        jns     ?_062                                   ; 0C70 _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0C72 _ C7. 05, 00000004(d), 00000000
?_062:  mov     eax, dword [cur_pos]                    ; 0C7C _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0C81 _ 3B. 45, 0C
        jle     ?_063                                   ; 0C84 _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0C86 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0C89 _ A3, 00000000(d)
?_063:  mov     eax, dword [cur_pos+4H]                 ; 0C8E _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0C93 _ 3B. 45, 10
        jle     ?_064                                   ; 0C96 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0C98 _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0C9B _ A3, 00000004(d)
?_064:  nop                                             ; 0CA0 _ 90
        pop     ebp                                     ; 0CA1 _ 5D
        ret                                             ; 0CA2 _ C3
; computeMousePosition End of function

CMain:  ; Function begin
        push    ebp                                     ; 0CA3 _ 55
        mov     ebp, esp                                ; 0CA4 _ 89. E5
        sub     esp, 40                                 ; 0CA6 _ 83. EC, 28
        call    pict_init                               ; 0CA9 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0CAE _ 83. EC, 04
        push    128                                     ; 0CB1 _ 68, 00000080
        push    key_buf                                 ; 0CB6 _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 0CBB _ 68, 00000000(d)
        call    fifo8_init                              ; 0CC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CC5 _ 83. C4, 10
        sub     esp, 4                                  ; 0CC8 _ 83. EC, 04
        push    256                                     ; 0CCB _ 68, 00000100
        push    mouse_buf                               ; 0CD0 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 0CD5 _ 68, 00000000(d)
        call    fifo8_init                              ; 0CDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CDF _ 83. C4, 10
        call    init_keyboard                           ; 0CE2 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0CE7 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0CEC _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0CF1 _ A1, 00000000(d)
        mov     dword [ebp-20H], eax                    ; 0CF6 _ 89. 45, E0
        movzx   eax, word [bootInfo+4H]                 ; 0CF9 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D00 _ 98
        mov     dword [ebp-1CH], eax                    ; 0D01 _ 89. 45, E4
        movzx   eax, word [bootInfo+6H]                 ; 0D04 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D0B _ 98
        mov     dword [ebp-18H], eax                    ; 0D0C _ 89. 45, E8
        sub     esp, 8                                  ; 0D0F _ 83. EC, 08
        push    15                                      ; 0D12 _ 6A, 0F
        push    dword [ebp-20H]                         ; 0D14 _ FF. 75, E0
        call    fillAll                                 ; 0D17 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D1C _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 0D1F _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0D25 _ A1, 00000000(d)
        sub     esp, 12                                 ; 0D2A _ 83. EC, 0C
        push    cursor                                  ; 0D2D _ 68, 00000000(d)
        push    edx                                     ; 0D32 _ 52
        push    eax                                     ; 0D33 _ 50
        push    dword [ebp-1CH]                         ; 0D34 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0D37 _ FF. 75, E0
        call    PrintRGB                                ; 0D3A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D3F _ 83. C4, 20
?_065:  call    io_cli                                  ; 0D42 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D47 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0D4A _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0D4F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D54 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0D57 _ 89. 45, EC
        sub     esp, 12                                 ; 0D5A _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0D5D _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 0D62 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D67 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 0D6A _ 89. 45, F0
        cmp     dword [ebp-14H], 0                      ; 0D6D _ 83. 7D, EC, 00
        jz      ?_066                                   ; 0D71 _ 74, 10
        cmp     dword [ebp-10H], 0                      ; 0D73 _ 83. 7D, F0, 00
        jz      ?_066                                   ; 0D77 _ 74, 0A
        call    io_stihlt                               ; 0D79 _ E8, FFFFFFFC(rel)
        jmp     ?_068                                   ; 0D7E _ E9, 000000CB

?_066:  cmp     dword [ebp-14H], 0                      ; 0D83 _ 83. 7D, EC, 00
        jnz     ?_067                                   ; 0D87 _ 75, 44
        call    io_sti                                  ; 0D89 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D8E _ 83. EC, 0C
        push    KEY_FIFO8                               ; 0D91 _ 68, 00000000(d)
        call    fifo8_r                                 ; 0D96 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D9B _ 83. C4, 10
        mov     byte [ebp-22H], al                      ; 0D9E _ 88. 45, DE
        movzx   eax, byte [ebp-22H]                     ; 0DA1 _ 0F B6. 45, DE
        sub     esp, 12                                 ; 0DA5 _ 83. EC, 0C
        push    eax                                     ; 0DA8 _ 50
        call    charToHexStr                            ; 0DA9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DAE _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0DB1 _ 89. 45, F4
        push    dword [ebp-18H]                         ; 0DB4 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0DB7 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0DBA _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 0DBD _ FF. 75, F4
        call    Printf                                  ; 0DC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DC5 _ 83. C4, 10
        jmp     ?_065                                   ; 0DC8 _ E9, FFFFFF75

?_067:  cmp     dword [ebp-10H], 0                      ; 0DCD _ 83. 7D, F0, 00
        jne     ?_065                                   ; 0DD1 _ 0F 85, FFFFFF6B
        call    io_sti                                  ; 0DD7 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0DDC _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 0DDF _ 68, 00000000(d)
        call    fifo8_r                                 ; 0DE4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DE9 _ 83. C4, 10
        mov     byte [ebp-21H], al                      ; 0DEC _ 88. 45, DF
        movzx   eax, byte [ebp-21H]                     ; 0DEF _ 0F B6. 45, DF
        sub     esp, 8                                  ; 0DF3 _ 83. EC, 08
        push    eax                                     ; 0DF6 _ 50
        push    mdec                                    ; 0DF7 _ 68, 00000000(d)
        call    mouse_decode                            ; 0DFC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E01 _ 83. C4, 10
        test    eax, eax                                ; 0E04 _ 85. C0
        je      ?_065                                   ; 0E06 _ 0F 84, FFFFFF36
        sub     esp, 4                                  ; 0E0C _ 83. EC, 04
        push    cur_pos                                 ; 0E0F _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 0E14 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0E17 _ FF. 75, E0
        call    eraseMouse                              ; 0E1A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E1F _ 83. C4, 10
        sub     esp, 4                                  ; 0E22 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 0E25 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0E28 _ FF. 75, E4
        push    mdec                                    ; 0E2B _ 68, 00000000(d)
        call    computeMousePosition                    ; 0E30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E35 _ 83. C4, 10
        sub     esp, 4                                  ; 0E38 _ 83. EC, 04
        push    cur_pos                                 ; 0E3B _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 0E40 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0E43 _ FF. 75, E0
        call    drawMouse                               ; 0E46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E4B _ 83. C4, 10
?_068:  jmp     ?_065                                   ; 0E4E _ E9, FFFFFEEF
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
        resb    256                                     ; 00A0

key_buf:                                                ; byte
        resb    128                                     ; 01A0

MOUSE_FIFO8:                                            ; byte
        resb    20                                      ; 0220

KEY_FIFO8:                                              ; byte
        resb    20                                      ; 0234

mdec:                                                   ; oword
        resb    16                                      ; 0248

keystr.1650:                                            ; byte
        resb    1                                       ; 0258

?_069:  resb    2                                       ; 0259




?_070:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.


