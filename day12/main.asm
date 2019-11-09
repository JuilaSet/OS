; Disassembly of file: main.o
; Fri Nov  8 19:35:42 2019
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

getAddrRangeDescArray:; Function begin
        push    ebp                                     ; 00F4 _ 55
        mov     ebp, esp                                ; 00F5 _ 89. E5
        sub     esp, 8                                  ; 00F7 _ 83. EC, 08
        call    GET_MEMOTY_BLOCK_COUNT                  ; 00FA _ E8, FFFFFFFC(rel)
        mov     dword [addrArray.1536], eax             ; 00FF _ A3, 000001B8(d)
        call    GET_MEMDESC_ADDR                        ; 0104 _ E8, FFFFFFFC(rel)
        mov     dword [?_093], eax                      ; 0109 _ A3, 000001BC(d)
        mov     eax, addrArray.1536                     ; 010E _ B8, 000001B8(d)
        leave                                           ; 0113 _ C9
        ret                                             ; 0114 _ C3
; getAddrRangeDescArray End of function

strlen: ; Function begin
        push    ebp                                     ; 0115 _ 55
        mov     ebp, esp                                ; 0116 _ 89. E5
        sub     esp, 16                                 ; 0118 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 011B _ C7. 45, FC, 00000000
        nop                                             ; 0122 _ 90
?_001:  mov     eax, dword [ebp-4H]                     ; 0123 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 0126 _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 0129 _ 89. 55, FC
        mov     edx, eax                                ; 012C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 012E _ 8B. 45, 08
        add     eax, edx                                ; 0131 _ 01. D0
        movzx   eax, byte [eax]                         ; 0133 _ 0F B6. 00
        test    al, al                                  ; 0136 _ 84. C0
        jnz     ?_001                                   ; 0138 _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 013A _ 8B. 45, FC
        sub     eax, 1                                  ; 013D _ 83. E8, 01
        leave                                           ; 0140 _ C9
        ret                                             ; 0141 _ C3
; strlen End of function

charToHex:; Function begin
        push    ebp                                     ; 0142 _ 55
        mov     ebp, esp                                ; 0143 _ 89. E5
        sub     esp, 4                                  ; 0145 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0148 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 014B _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 014E _ 80. 7D, FC, 09
        jle     ?_002                                   ; 0152 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0154 _ 0F B6. 45, FC
        add     eax, 87                                 ; 0158 _ 83. C0, 57
        jmp     ?_003                                   ; 015B _ EB, 07

?_002:  movzx   eax, byte [ebp-4H]                      ; 015D _ 0F B6. 45, FC
        add     eax, 48                                 ; 0161 _ 83. C0, 30
?_003:  leave                                           ; 0164 _ C9
        ret                                             ; 0165 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0166 _ 55
        mov     ebp, esp                                ; 0167 _ 89. E5
        sub     esp, 4                                  ; 0169 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 016C _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 016F _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 0172 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0176 _ 0F BE. C0
        and     eax, 0FH                                ; 0179 _ 83. E0, 0F
        push    eax                                     ; 017C _ 50
        call    charToHex                               ; 017D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0182 _ 83. C4, 04
        mov     byte [?_094], al                        ; 0185 _ A2, 000001C1(d)
        shr     byte [ebp-4H], 4                        ; 018A _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 018E _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0192 _ 0F BE. C0
        and     eax, 0FH                                ; 0195 _ 83. E0, 0F
        push    eax                                     ; 0198 _ 50
        call    charToHex                               ; 0199 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 019E _ 83. C4, 04
        mov     byte [str.1551], al                     ; 01A1 _ A2, 000001C0(d)
        mov     eax, str.1551                           ; 01A6 _ B8, 000001C0(d)
        leave                                           ; 01AB _ C9
        ret                                             ; 01AC _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 01AD _ 55
        mov     ebp, esp                                ; 01AE _ 89. E5
        sub     esp, 16                                 ; 01B0 _ 83. EC, 10
        mov     dword [ebp-0CH], 2                      ; 01B3 _ C7. 45, F4, 00000002
        jmp     ?_005                                   ; 01BA _ EB, 0F

?_004:  mov     eax, dword [ebp-0CH]                    ; 01BC _ 8B. 45, F4
        add     eax, str.1555                           ; 01BF _ 05, 000000C0(d)
        mov     byte [eax], 48                          ; 01C4 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 01C7 _ 83. 45, F4, 01
?_005:  cmp     dword [ebp-0CH], 9                      ; 01CB _ 83. 7D, F4, 09
        jle     ?_004                                   ; 01CF _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 01D1 _ C7. 45, F8, 00000009
        jmp     ?_009                                   ; 01D8 _ EB, 42

?_006:  mov     eax, dword [ebp+8H]                     ; 01DA _ 8B. 45, 08
        and     eax, 0FH                                ; 01DD _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 01E0 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 01E3 _ 8B. 45, 08
        shr     eax, 4                                  ; 01E6 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 01E9 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 01EC _ 83. 7D, FC, 09
        jle     ?_007                                   ; 01F0 _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 01F2 _ 8B. 45, FC
        add     eax, 55                                 ; 01F5 _ 83. C0, 37
        mov     edx, eax                                ; 01F8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 01FA _ 8B. 45, F8
        add     eax, str.1555                           ; 01FD _ 05, 000000C0(d)
        mov     byte [eax], dl                          ; 0202 _ 88. 10
        jmp     ?_008                                   ; 0204 _ EB, 12

?_007:  mov     eax, dword [ebp-4H]                     ; 0206 _ 8B. 45, FC
        add     eax, 48                                 ; 0209 _ 83. C0, 30
        mov     edx, eax                                ; 020C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 020E _ 8B. 45, F8
        add     eax, str.1555                           ; 0211 _ 05, 000000C0(d)
        mov     byte [eax], dl                          ; 0216 _ 88. 10
?_008:  sub     dword [ebp-8H], 1                       ; 0218 _ 83. 6D, F8, 01
?_009:  cmp     dword [ebp-8H], 1                       ; 021C _ 83. 7D, F8, 01
        jle     ?_010                                   ; 0220 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0222 _ 83. 7D, 08, 00
        jnz     ?_006                                   ; 0226 _ 75, B2
?_010:  mov     eax, str.1555                           ; 0228 _ B8, 000000C0(d)
        leave                                           ; 022D _ C9
        ret                                             ; 022E _ C3
; intToHexStr End of function

set_pict:; Function begin
        push    ebp                                     ; 022F _ 55
        mov     ebp, esp                                ; 0230 _ 89. E5
        sub     esp, 24                                 ; 0232 _ 83. EC, 18
        call    io_load_eflags                          ; 0235 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 023A _ 89. 45, F4
        call    io_cli                                  ; 023D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0242 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 0245 _ FF. 75, 14
        push    968                                     ; 0248 _ 68, 000003C8
        call    io_out8                                 ; 024D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0252 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0255 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0258 _ 89. 45, F0
        jmp     ?_012                                   ; 025B _ EB, 65

?_011:  mov     eax, dword [ebp+10H]                    ; 025D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0260 _ 0F B6. 00
        shr     al, 2                                   ; 0263 _ C0. E8, 02
        movzx   eax, al                                 ; 0266 _ 0F B6. C0
        sub     esp, 8                                  ; 0269 _ 83. EC, 08
        push    eax                                     ; 026C _ 50
        push    969                                     ; 026D _ 68, 000003C9
        call    io_out8                                 ; 0272 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0277 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 027A _ 8B. 45, 10
        add     eax, 1                                  ; 027D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0280 _ 0F B6. 00
        shr     al, 2                                   ; 0283 _ C0. E8, 02
        movzx   eax, al                                 ; 0286 _ 0F B6. C0
        sub     esp, 8                                  ; 0289 _ 83. EC, 08
        push    eax                                     ; 028C _ 50
        push    969                                     ; 028D _ 68, 000003C9
        call    io_out8                                 ; 0292 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0297 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 029A _ 8B. 45, 10
        add     eax, 2                                  ; 029D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 02A0 _ 0F B6. 00
        shr     al, 2                                   ; 02A3 _ C0. E8, 02
        movzx   eax, al                                 ; 02A6 _ 0F B6. C0
        sub     esp, 8                                  ; 02A9 _ 83. EC, 08
        push    eax                                     ; 02AC _ 50
        push    969                                     ; 02AD _ 68, 000003C9
        call    io_out8                                 ; 02B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B7 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 02BA _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 02BE _ 83. 45, F0, 01
?_012:  mov     eax, dword [ebp-10H]                    ; 02C2 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 02C5 _ 3B. 45, 0C
        jl      ?_011                                   ; 02C8 _ 7C, 93
        sub     esp, 12                                 ; 02CA _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 02CD _ FF. 75, F4
        call    io_store_eflags                         ; 02D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D5 _ 83. C4, 10
        nop                                             ; 02D8 _ 90
        leave                                           ; 02D9 _ C9
        ret                                             ; 02DA _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 02DB _ 55
        mov     ebp, esp                                ; 02DC _ 89. E5
        sub     esp, 8                                  ; 02DE _ 83. EC, 08
        push    0                                       ; 02E1 _ 6A, 00
        push    pict                                    ; 02E3 _ 68, 00000000(d)
        push    16                                      ; 02E8 _ 6A, 10
        push    0                                       ; 02EA _ 6A, 00
        call    set_pict                                ; 02EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F1 _ 83. C4, 10
        nop                                             ; 02F4 _ 90
        leave                                           ; 02F5 _ C9
        ret                                             ; 02F6 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 02F7 _ 55
        mov     ebp, esp                                ; 02F8 _ 89. E5
        sub     esp, 20                                 ; 02FA _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 02FD _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0300 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0303 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0306 _ 89. 45, FC
        jmp     ?_016                                   ; 0309 _ EB, 33

?_013:  mov     eax, dword [ebp+14H]                    ; 030B _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 030E _ 89. 45, F8
        jmp     ?_015                                   ; 0311 _ EB, 1F

?_014:  mov     eax, dword [ebp-4H]                     ; 0313 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0316 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 031A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 031C _ 8B. 45, F8
        add     eax, edx                                ; 031F _ 01. D0
        mov     edx, eax                                ; 0321 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0323 _ 8B. 45, 08
        add     edx, eax                                ; 0326 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0328 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 032C _ 88. 02
        add     dword [ebp-8H], 1                       ; 032E _ 83. 45, F8, 01
?_015:  mov     eax, dword [ebp-8H]                     ; 0332 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0335 _ 3B. 45, 1C
        jle     ?_014                                   ; 0338 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 033A _ 83. 45, FC, 01
?_016:  mov     eax, dword [ebp-4H]                     ; 033E _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0341 _ 3B. 45, 20
        jle     ?_013                                   ; 0344 _ 7E, C5
        nop                                             ; 0346 _ 90
        leave                                           ; 0347 _ C9
        ret                                             ; 0348 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 0349 _ 55
        mov     ebp, esp                                ; 034A _ 89. E5
        sub     esp, 20                                 ; 034C _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 034F _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0352 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0355 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 0359 _ 83. E8, 61
        shl     eax, 4                                  ; 035C _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 035F _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0364 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0367 _ 8B. 45, FC
        leave                                           ; 036A _ C9
        ret                                             ; 036B _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 036C _ 55
        mov     ebp, esp                                ; 036D _ 89. E5
        sub     esp, 20                                 ; 036F _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0372 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0375 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0378 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 037C _ 83. E8, 30
        shl     eax, 4                                  ; 037F _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0382 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0387 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 038A _ 8B. 45, FC
        leave                                           ; 038D _ C9
        ret                                             ; 038E _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 038F _ 55
        mov     ebp, esp                                ; 0390 _ 89. E5
        sub     esp, 20                                 ; 0392 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0395 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0398 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 039B _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 03A2 _ E9, 0000016C

?_017:  mov     edx, dword [ebp-4H]                     ; 03A7 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 03AA _ 8B. 45, 1C
        add     eax, edx                                ; 03AD _ 01. D0
        movzx   eax, byte [eax]                         ; 03AF _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 03B2 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 03B5 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 03B9 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 03BB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03BE _ 8B. 45, FC
        add     eax, edx                                ; 03C1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03C3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03C7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03C9 _ 8B. 45, 10
        add     eax, edx                                ; 03CC _ 01. D0
        mov     edx, eax                                ; 03CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 03D0 _ 8B. 45, 08
        add     edx, eax                                ; 03D3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03D5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03D9 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 03DB _ 0F BE. 45, FB
        and     eax, 40H                                ; 03DF _ 83. E0, 40
        test    eax, eax                                ; 03E2 _ 85. C0
        jz      ?_019                                   ; 03E4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 03E6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 03E9 _ 8B. 45, FC
        add     eax, edx                                ; 03EC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03EE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03F2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03F4 _ 8B. 45, 10
        add     eax, edx                                ; 03F7 _ 01. D0
        lea     edx, [eax+1H]                           ; 03F9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 03FC _ 8B. 45, 08
        add     edx, eax                                ; 03FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0401 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0405 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0407 _ 0F BE. 45, FB
        and     eax, 20H                                ; 040B _ 83. E0, 20
        test    eax, eax                                ; 040E _ 85. C0
        jz      ?_020                                   ; 0410 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0412 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0415 _ 8B. 45, FC
        add     eax, edx                                ; 0418 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 041A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 041E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0420 _ 8B. 45, 10
        add     eax, edx                                ; 0423 _ 01. D0
        lea     edx, [eax+2H]                           ; 0425 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0428 _ 8B. 45, 08
        add     edx, eax                                ; 042B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 042D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0431 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0433 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0437 _ 83. E0, 10
        test    eax, eax                                ; 043A _ 85. C0
        jz      ?_021                                   ; 043C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 043E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0441 _ 8B. 45, FC
        add     eax, edx                                ; 0444 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0446 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 044A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 044C _ 8B. 45, 10
        add     eax, edx                                ; 044F _ 01. D0
        lea     edx, [eax+3H]                           ; 0451 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0454 _ 8B. 45, 08
        add     edx, eax                                ; 0457 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0459 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 045D _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 045F _ 0F BE. 45, FB
        and     eax, 08H                                ; 0463 _ 83. E0, 08
        test    eax, eax                                ; 0466 _ 85. C0
        jz      ?_022                                   ; 0468 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 046A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 046D _ 8B. 45, FC
        add     eax, edx                                ; 0470 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0472 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0476 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0478 _ 8B. 45, 10
        add     eax, edx                                ; 047B _ 01. D0
        lea     edx, [eax+4H]                           ; 047D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0480 _ 8B. 45, 08
        add     edx, eax                                ; 0483 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0485 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0489 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 048B _ 0F BE. 45, FB
        and     eax, 04H                                ; 048F _ 83. E0, 04
        test    eax, eax                                ; 0492 _ 85. C0
        jz      ?_023                                   ; 0494 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0496 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0499 _ 8B. 45, FC
        add     eax, edx                                ; 049C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 049E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04A2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04A4 _ 8B. 45, 10
        add     eax, edx                                ; 04A7 _ 01. D0
        lea     edx, [eax+5H]                           ; 04A9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 04AC _ 8B. 45, 08
        add     edx, eax                                ; 04AF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04B1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04B5 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 04B7 _ 0F BE. 45, FB
        and     eax, 02H                                ; 04BB _ 83. E0, 02
        test    eax, eax                                ; 04BE _ 85. C0
        jz      ?_024                                   ; 04C0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04C2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04C5 _ 8B. 45, FC
        add     eax, edx                                ; 04C8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04CA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04CE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04D0 _ 8B. 45, 10
        add     eax, edx                                ; 04D3 _ 01. D0
        lea     edx, [eax+6H]                           ; 04D5 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 04D8 _ 8B. 45, 08
        add     edx, eax                                ; 04DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04E1 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 04E3 _ 0F BE. 45, FB
        and     eax, 01H                                ; 04E7 _ 83. E0, 01
        test    eax, eax                                ; 04EA _ 85. C0
        jz      ?_025                                   ; 04EC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04EE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04F1 _ 8B. 45, FC
        add     eax, edx                                ; 04F4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04F6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04FA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04FC _ 8B. 45, 10
        add     eax, edx                                ; 04FF _ 01. D0
        lea     edx, [eax+7H]                           ; 0501 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0504 _ 8B. 45, 08
        add     edx, eax                                ; 0507 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0509 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 050D _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 050F _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0513 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0517 _ 0F 8E, FFFFFE8A
        nop                                             ; 051D _ 90
        leave                                           ; 051E _ C9
        ret                                             ; 051F _ C3
; showFont8 End of function

putChar:; Function begin
        push    ebp                                     ; 0520 _ 55
        mov     ebp, esp                                ; 0521 _ 89. E5
        sub     esp, 4                                  ; 0523 _ 83. EC, 04
        mov     eax, dword [ebp+1CH]                    ; 0526 _ 8B. 45, 1C
        mov     byte [ebp-4H], al                       ; 0529 _ 88. 45, FC
        cmp     byte [ebp-4H], 57                       ; 052C _ 80. 7D, FC, 39
        ja      ?_027                                   ; 0530 _ 77, 39
        cmp     byte [ebp-4H], 47                       ; 0532 _ 80. 7D, FC, 2F
        jbe     ?_027                                   ; 0536 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0538 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 053C _ 0F BE. C0
        push    eax                                     ; 053F _ 50
        call    getAddrOffsetNumber                     ; 0540 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0545 _ 83. C4, 04
        mov     edx, eax                                ; 0548 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 054A _ 8B. 45, 18
        movsx   eax, al                                 ; 054D _ 0F BE. C0
        push    edx                                     ; 0550 _ 52
        push    eax                                     ; 0551 _ 50
        push    dword [ebp+14H]                         ; 0552 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0555 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0558 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 055B _ FF. 75, 08
        call    showFont8                               ; 055E _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0563 _ 83. C4, 18
        jmp     ?_033                                   ; 0566 _ E9, 00000121

?_027:  cmp     byte [ebp-4H], 122                      ; 056B _ 80. 7D, FC, 7A
        ja      ?_028                                   ; 056F _ 77, 39
        cmp     byte [ebp-4H], 96                       ; 0571 _ 80. 7D, FC, 60
        jbe     ?_028                                   ; 0575 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0577 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 057B _ 0F BE. C0
        push    eax                                     ; 057E _ 50
        call    getAddrOffsetAlpha                      ; 057F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0584 _ 83. C4, 04
        mov     edx, eax                                ; 0587 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0589 _ 8B. 45, 18
        movsx   eax, al                                 ; 058C _ 0F BE. C0
        push    edx                                     ; 058F _ 52
        push    eax                                     ; 0590 _ 50
        push    dword [ebp+14H]                         ; 0591 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0594 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0597 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 059A _ FF. 75, 08
        call    showFont8                               ; 059D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05A2 _ 83. C4, 18
        jmp     ?_033                                   ; 05A5 _ E9, 000000E2

?_028:  cmp     byte [ebp-4H], 90                       ; 05AA _ 80. 7D, FC, 5A
        ja      ?_029                                   ; 05AE _ 77, 3C
        cmp     byte [ebp-4H], 64                       ; 05B0 _ 80. 7D, FC, 40
        jbe     ?_029                                   ; 05B4 _ 76, 36
        movzx   eax, byte [ebp-4H]                      ; 05B6 _ 0F B6. 45, FC
        add     eax, 32                                 ; 05BA _ 83. C0, 20
        movsx   eax, al                                 ; 05BD _ 0F BE. C0
        push    eax                                     ; 05C0 _ 50
        call    getAddrOffsetAlpha                      ; 05C1 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 05C6 _ 83. C4, 04
        mov     edx, eax                                ; 05C9 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 05CB _ 8B. 45, 18
        movsx   eax, al                                 ; 05CE _ 0F BE. C0
        push    edx                                     ; 05D1 _ 52
        push    eax                                     ; 05D2 _ 50
        push    dword [ebp+14H]                         ; 05D3 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 05D6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 05D9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05DC _ FF. 75, 08
        call    showFont8                               ; 05DF _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 05E4 _ 83. C4, 18
        jmp     ?_033                                   ; 05E7 _ E9, 000000A0

?_029:  cmp     byte [ebp-4H], 32                       ; 05EC _ 80. 7D, FC, 20
        jnz     ?_030                                   ; 05F0 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 05F2 _ 8B. 45, 18
        movsx   eax, al                                 ; 05F5 _ 0F BE. C0
        push    vsFont_EMPTY                            ; 05F8 _ 68, 00000000(d)
        push    eax                                     ; 05FD _ 50
        push    dword [ebp+14H]                         ; 05FE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0601 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0604 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0607 _ FF. 75, 08
        call    showFont8                               ; 060A _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 060F _ 83. C4, 18
        jmp     ?_033                                   ; 0612 _ EB, 78

?_030:  cmp     byte [ebp-4H], 63                       ; 0614 _ 80. 7D, FC, 3F
        jnz     ?_031                                   ; 0618 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 061A _ 8B. 45, 18
        movsx   eax, al                                 ; 061D _ 0F BE. C0
        push    vsFont_ASK                              ; 0620 _ 68, 00000000(d)
        push    eax                                     ; 0625 _ 50
        push    dword [ebp+14H]                         ; 0626 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0629 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 062C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 062F _ FF. 75, 08
        call    showFont8                               ; 0632 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0637 _ 83. C4, 18
        jmp     ?_033                                   ; 063A _ EB, 50

?_031:  cmp     byte [ebp-4H], 95                       ; 063C _ 80. 7D, FC, 5F
        jnz     ?_032                                   ; 0640 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0642 _ 8B. 45, 18
        movsx   eax, al                                 ; 0645 _ 0F BE. C0
        push    vsFont__                                ; 0648 _ 68, 00000000(d)
        push    eax                                     ; 064D _ 50
        push    dword [ebp+14H]                         ; 064E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0651 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0654 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0657 _ FF. 75, 08
        call    showFont8                               ; 065A _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 065F _ 83. C4, 18
        jmp     ?_033                                   ; 0662 _ EB, 28

?_032:  cmp     byte [ebp-4H], 58                       ; 0664 _ 80. 7D, FC, 3A
        jnz     ?_033                                   ; 0668 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 066A _ 8B. 45, 18
        movsx   eax, al                                 ; 066D _ 0F BE. C0
        push    vsFont_colon                            ; 0670 _ 68, 00000000(d)
        push    eax                                     ; 0675 _ 50
        push    dword [ebp+14H]                         ; 0676 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0679 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 067C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 067F _ FF. 75, 08
        call    showFont8                               ; 0682 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0687 _ 83. C4, 18
        jmp     ?_033                                   ; 068A _ EB, 00

?_033:  nop                                             ; 068C _ 90
        leave                                           ; 068D _ C9
        ret                                             ; 068E _ C3
; putChar End of function

putStr: ; Function begin
        push    ebp                                     ; 068F _ 55
        mov     ebp, esp                                ; 0690 _ 89. E5
        sub     esp, 16                                 ; 0692 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0695 _ C7. 45, FC, 00000000
        jmp     ?_035                                   ; 069C _ EB, 36

?_034:  mov     edx, dword [ebp-4H]                     ; 069E _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 06A1 _ 8B. 45, 20
        add     eax, edx                                ; 06A4 _ 01. D0
        movzx   eax, byte [eax]                         ; 06A6 _ 0F B6. 00
        movzx   eax, al                                 ; 06A9 _ 0F B6. C0
        mov     edx, dword [ebp+18H]                    ; 06AC _ 8B. 55, 18
        mov     ecx, edx                                ; 06AF _ 89. D1
        imul    ecx, dword [ebp-4H]                     ; 06B1 _ 0F AF. 4D, FC
        mov     edx, dword [ebp+10H]                    ; 06B5 _ 8B. 55, 10
        add     edx, ecx                                ; 06B8 _ 01. CA
        push    eax                                     ; 06BA _ 50
        push    dword [ebp+1CH]                         ; 06BB _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 06BE _ FF. 75, 14
        push    edx                                     ; 06C1 _ 52
        push    dword [ebp+0CH]                         ; 06C2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06C5 _ FF. 75, 08
        call    putChar                                 ; 06C8 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 06CD _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 06D0 _ 83. 45, FC, 01
?_035:  mov     eax, dword [ebp-4H]                     ; 06D4 _ 8B. 45, FC
        cmp     eax, dword [ebp+24H]                    ; 06D7 _ 3B. 45, 24
        jl      ?_034                                   ; 06DA _ 7C, C2
        nop                                             ; 06DC _ 90
        leave                                           ; 06DD _ C9
        ret                                             ; 06DE _ C3
; putStr End of function

charToPictColor:; Function begin
        push    ebp                                     ; 06DF _ 55
        mov     ebp, esp                                ; 06E0 _ 89. E5
        sub     esp, 4                                  ; 06E2 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 06E5 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 06E8 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 06EB _ 80. 7D, FC, 2A
        jnz     ?_036                                   ; 06EF _ 75, 0A
        mov     eax, 0                                  ; 06F1 _ B8, 00000000
        jmp     ?_051                                   ; 06F6 _ E9, 000000D2

?_036:  cmp     byte [ebp-4H], 114                      ; 06FB _ 80. 7D, FC, 72
        jnz     ?_037                                   ; 06FF _ 75, 0A
        mov     eax, 1                                  ; 0701 _ B8, 00000001
        jmp     ?_051                                   ; 0706 _ E9, 000000C2

?_037:  cmp     byte [ebp-4H], 103                      ; 070B _ 80. 7D, FC, 67
        jnz     ?_038                                   ; 070F _ 75, 0A
        mov     eax, 2                                  ; 0711 _ B8, 00000002
        jmp     ?_051                                   ; 0716 _ E9, 000000B2

?_038:  cmp     byte [ebp-4H], 121                      ; 071B _ 80. 7D, FC, 79
        jnz     ?_039                                   ; 071F _ 75, 0A
        mov     eax, 3                                  ; 0721 _ B8, 00000003
        jmp     ?_051                                   ; 0726 _ E9, 000000A2

?_039:  cmp     byte [ebp-4H], 98                       ; 072B _ 80. 7D, FC, 62
        jnz     ?_040                                   ; 072F _ 75, 0A
        mov     eax, 4                                  ; 0731 _ B8, 00000004
        jmp     ?_051                                   ; 0736 _ E9, 00000092

?_040:  cmp     byte [ebp-4H], 112                      ; 073B _ 80. 7D, FC, 70
        jnz     ?_041                                   ; 073F _ 75, 0A
        mov     eax, 5                                  ; 0741 _ B8, 00000005
        jmp     ?_051                                   ; 0746 _ E9, 00000082

?_041:  cmp     byte [ebp-4H], 108                      ; 074B _ 80. 7D, FC, 6C
        jnz     ?_042                                   ; 074F _ 75, 07
        mov     eax, 6                                  ; 0751 _ B8, 00000006
        jmp     ?_051                                   ; 0756 _ EB, 75

?_042:  cmp     byte [ebp-4H], 119                      ; 0758 _ 80. 7D, FC, 77
        jnz     ?_043                                   ; 075C _ 75, 07
        mov     eax, 7                                  ; 075E _ B8, 00000007
        jmp     ?_051                                   ; 0763 _ EB, 68

?_043:  cmp     byte [ebp-4H], 45                       ; 0765 _ 80. 7D, FC, 2D
        jnz     ?_044                                   ; 0769 _ 75, 07
        mov     eax, 8                                  ; 076B _ B8, 00000008
        jmp     ?_051                                   ; 0770 _ EB, 5B

?_044:  cmp     byte [ebp-4H], 82                       ; 0772 _ 80. 7D, FC, 52
        jnz     ?_045                                   ; 0776 _ 75, 07
        mov     eax, 9                                  ; 0778 _ B8, 00000009
        jmp     ?_051                                   ; 077D _ EB, 4E

?_045:  cmp     byte [ebp-4H], 71                       ; 077F _ 80. 7D, FC, 47
        jnz     ?_046                                   ; 0783 _ 75, 07
        mov     eax, 10                                 ; 0785 _ B8, 0000000A
        jmp     ?_051                                   ; 078A _ EB, 41

?_046:  cmp     byte [ebp-4H], 89                       ; 078C _ 80. 7D, FC, 59
        jnz     ?_047                                   ; 0790 _ 75, 07
        mov     eax, 11                                 ; 0792 _ B8, 0000000B
        jmp     ?_051                                   ; 0797 _ EB, 34

?_047:  cmp     byte [ebp-4H], 66                       ; 0799 _ 80. 7D, FC, 42
        jnz     ?_048                                   ; 079D _ 75, 07
        mov     eax, 12                                 ; 079F _ B8, 0000000C
        jmp     ?_051                                   ; 07A4 _ EB, 27

?_048:  cmp     byte [ebp-4H], 80                       ; 07A6 _ 80. 7D, FC, 50
        jnz     ?_049                                   ; 07AA _ 75, 07
        mov     eax, 13                                 ; 07AC _ B8, 0000000D
        jmp     ?_051                                   ; 07B1 _ EB, 1A

?_049:  cmp     byte [ebp-4H], 115                      ; 07B3 _ 80. 7D, FC, 73
        jnz     ?_050                                   ; 07B7 _ 75, 07
        mov     eax, 14                                 ; 07B9 _ B8, 0000000E
        jmp     ?_051                                   ; 07BE _ EB, 0D

?_050:  cmp     byte [ebp-4H], 61                       ; 07C0 _ 80. 7D, FC, 3D
        jnz     ?_051                                   ; 07C4 _ 75, 07
        mov     eax, 15                                 ; 07C6 _ B8, 0000000F
        jmp     ?_051                                   ; 07CB _ EB, 00

?_051:  leave                                           ; 07CD _ C9
        ret                                             ; 07CE _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 07CF _ 55
        mov     ebp, esp                                ; 07D0 _ 89. E5
        push    ebx                                     ; 07D2 _ 53
        sub     esp, 16                                 ; 07D3 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 07D6 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 07DD _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 07E4 _ C7. 45, F8, 00000000
?_052:  mov     edx, dword [ebp-8H]                     ; 07EB _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 07EE _ 8B. 45, 18
        add     eax, edx                                ; 07F1 _ 01. D0
        movzx   eax, byte [eax]                         ; 07F3 _ 0F B6. 00
        test    al, al                                  ; 07F6 _ 84. C0
        jnz     ?_053                                   ; 07F8 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 07FA _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 07FD _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0800 _ 8B. 45, 18
        add     eax, edx                                ; 0803 _ 01. D0
        movzx   eax, byte [eax]                         ; 0805 _ 0F B6. 00
        test    al, al                                  ; 0808 _ 84. C0
        jz      ?_056                                   ; 080A _ 74, 5F
        add     dword [ebp-10H], 1                      ; 080C _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0810 _ C7. 45, F4, 00000000
        jmp     ?_055                                   ; 0817 _ EB, 4C

?_053:  mov     edx, dword [ebp-8H]                     ; 0819 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 081C _ 8B. 45, 18
        add     eax, edx                                ; 081F _ 01. D0
        movzx   eax, byte [eax]                         ; 0821 _ 0F B6. 00
        cmp     al, 46                                  ; 0824 _ 3C, 2E
        jz      ?_054                                   ; 0826 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0828 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 082B _ 8B. 45, F0
        add     eax, edx                                ; 082E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0830 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0834 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0836 _ 8B. 45, 10
        add     edx, eax                                ; 0839 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 083B _ 8B. 45, F4
        add     eax, edx                                ; 083E _ 01. D0
        mov     edx, eax                                ; 0840 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0842 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0845 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0848 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 084B _ 8B. 45, 18
        add     eax, edx                                ; 084E _ 01. D0
        movzx   eax, byte [eax]                         ; 0850 _ 0F B6. 00
        movsx   eax, al                                 ; 0853 _ 0F BE. C0
        push    eax                                     ; 0856 _ 50
        call    charToPictColor                         ; 0857 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 085C _ 83. C4, 04
        mov     byte [ebx], al                          ; 085F _ 88. 03
?_054:  add     dword [ebp-0CH], 1                      ; 0861 _ 83. 45, F4, 01
?_055:  add     dword [ebp-8H], 1                       ; 0865 _ 83. 45, F8, 01
        jmp     ?_052                                   ; 0869 _ EB, 80

?_056:  nop                                             ; 086B _ 90
        mov     ebx, dword [ebp-4H]                     ; 086C _ 8B. 5D, FC
        leave                                           ; 086F _ C9
        ret                                             ; 0870 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0871 _ 55
        mov     ebp, esp                                ; 0872 _ 89. E5
        sub     esp, 16                                 ; 0874 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0877 _ C7. 45, FC, 00000000
        jmp     ?_058                                   ; 087E _ EB, 11

?_057:  mov     edx, dword [ebp-4H]                     ; 0880 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0883 _ 8B. 45, 08
        add     eax, edx                                ; 0886 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0888 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 088B _ 88. 10
        add     dword [ebp-4H], 1                       ; 088D _ 83. 45, FC, 01
?_058:  cmp     dword [ebp-4H], 65534                   ; 0891 _ 81. 7D, FC, 0000FFFE
        jle     ?_057                                   ; 0898 _ 7E, E6
        nop                                             ; 089A _ 90
        leave                                           ; 089B _ C9
        ret                                             ; 089C _ C3
; fillAll End of function

initCursor:; Function begin
        push    ebp                                     ; 089D _ 55
        mov     ebp, esp                                ; 089E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 08A0 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 08A3 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 08A6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 08A9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 08AB _ 8B. 45, 08
        mov     edx, dword [eax+14H]                    ; 08AE _ 8B. 50, 14
        mov     eax, dword [ebp+8H]                     ; 08B1 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 08B4 _ 89. 50, 04
        nop                                             ; 08B7 _ 90
        pop     ebp                                     ; 08B8 _ 5D
        ret                                             ; 08B9 _ C3
; initCursor End of function

clear:  ; Function begin
        push    ebp                                     ; 08BA _ 55
        mov     ebp, esp                                ; 08BB _ 89. E5
        sub     esp, 16                                 ; 08BD _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 08C0 _ C7. 45, FC, 00000000
        jmp     ?_060                                   ; 08C7 _ EB, 13

?_059:  mov     eax, dword [ebp+8H]                     ; 08C9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 08CC _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 08CE _ 8B. 45, FC
        add     eax, edx                                ; 08D1 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 08D3 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 08D6 _ 88. 10
        add     dword [ebp-4H], 1                       ; 08D8 _ 83. 45, FC, 01
?_060:  cmp     dword [ebp-4H], 65534                   ; 08DC _ 81. 7D, FC, 0000FFFE
        jle     ?_059                                   ; 08E3 _ 7E, E4
        nop                                             ; 08E5 _ 90
        leave                                           ; 08E6 _ C9
        ret                                             ; 08E7 _ C3
; clear End of function

Println:; Function begin
        push    ebp                                     ; 08E8 _ 55
        mov     ebp, esp                                ; 08E9 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 08EB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 08EE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 08F1 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 08F4 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 08F6 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 08F9 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 08FC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 08FF _ 8B. 40, 0C
        add     edx, eax                                ; 0902 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0904 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0907 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 090A _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 090D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0910 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0913 _ 0F B7. 40, 06
        cwde                                            ; 0917 _ 98
        cmp     edx, eax                                ; 0918 _ 39. C2
        jl      ?_061                                   ; 091A _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 091C _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 091F _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0922 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0925 _ 89. 50, 04
?_061:  nop                                             ; 0928 _ 90
        pop     ebp                                     ; 0929 _ 5D
        ret                                             ; 092A _ C3
; Println End of function

PrintlnMult:; Function begin
        push    ebp                                     ; 092B _ 55
        mov     ebp, esp                                ; 092C _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 092E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0931 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0934 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0937 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0939 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 093C _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 093F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0942 _ 8B. 40, 0C
        imul    eax, dword [ebp+10H]                    ; 0945 _ 0F AF. 45, 10
        add     edx, eax                                ; 0949 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 094B _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 094E _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0951 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0954 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0957 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 095A _ 0F B7. 40, 06
        cwde                                            ; 095E _ 98
        cmp     edx, eax                                ; 095F _ 39. C2
        jl      ?_062                                   ; 0961 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0963 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0966 _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0969 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 096C _ 89. 50, 04
?_062:  nop                                             ; 096F _ 90
        pop     ebp                                     ; 0970 _ 5D
        ret                                             ; 0971 _ C3
; PrintlnMult End of function

Printf: ; Function begin
        push    ebp                                     ; 0972 _ 55
        mov     ebp, esp                                ; 0973 _ 89. E5
        push    ebx                                     ; 0975 _ 53
        sub     esp, 16                                 ; 0976 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 0979 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 097C _ 0F B7. 40, 04
        cwde                                            ; 0980 _ 98
        mov     dword [ebp-14H], eax                    ; 0981 _ 89. 45, EC
        mov     eax, dword [ebp+0CH]                    ; 0984 _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0987 _ 0F B7. 40, 06
        cwde                                            ; 098B _ 98
        mov     dword [ebp-10H], eax                    ; 098C _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 098F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0992 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 0994 _ 89. 45, F4
        push    dword [ebp+8H]                          ; 0997 _ FF. 75, 08
        call    strlen                                  ; 099A _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 099F _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 09A2 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 09A5 _ 8B. 45, 10
        mov     ebx, dword [eax+1CH]                    ; 09A8 _ 8B. 58, 1C
        mov     eax, dword [ebp+10H]                    ; 09AB _ 8B. 45, 10
        mov     ecx, dword [eax+8H]                     ; 09AE _ 8B. 48, 08
        mov     eax, dword [ebp+10H]                    ; 09B1 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 09B4 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 09B7 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 09BA _ 8B. 00
        push    dword [ebp-8H]                          ; 09BC _ FF. 75, F8
        push    dword [ebp+8H]                          ; 09BF _ FF. 75, 08
        push    ebx                                     ; 09C2 _ 53
        push    ecx                                     ; 09C3 _ 51
        push    edx                                     ; 09C4 _ 52
        push    eax                                     ; 09C5 _ 50
        push    dword [ebp-14H]                         ; 09C6 _ FF. 75, EC
        push    dword [ebp-0CH]                         ; 09C9 _ FF. 75, F4
        call    putStr                                  ; 09CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09D1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09D4 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 09D7 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 09D9 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 09DC _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 09DF _ 0F AF. 45, F8
        add     edx, eax                                ; 09E3 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 09E5 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 09E8 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 09EA _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 09ED _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 09EF _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 09F2 _ 8B. 40, 10
        mov     ecx, dword [ebp-14H]                    ; 09F5 _ 8B. 4D, EC
        sub     ecx, eax                                ; 09F8 _ 29. C1
        mov     eax, ecx                                ; 09FA _ 89. C8
        cmp     edx, eax                                ; 09FC _ 39. C2
        jl      ?_063                                   ; 09FE _ 7C, 0E
        push    dword [ebp+10H]                         ; 0A00 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A03 _ FF. 75, 0C
        call    Println                                 ; 0A06 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0A0B _ 83. C4, 08
?_063:  nop                                             ; 0A0E _ 90
        mov     ebx, dword [ebp-4H]                     ; 0A0F _ 8B. 5D, FC
        leave                                           ; 0A12 _ C9
        ret                                             ; 0A13 _ C3
; Printf End of function

PrintChar:; Function begin
        push    ebp                                     ; 0A14 _ 55
        mov     ebp, esp                                ; 0A15 _ 89. E5
        push    ebx                                     ; 0A17 _ 53
        sub     esp, 20                                 ; 0A18 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0A1B _ 8B. 45, 08
        mov     byte [ebp-18H], al                      ; 0A1E _ 88. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 0A21 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0A24 _ 0F B7. 40, 04
        cwde                                            ; 0A28 _ 98
        mov     dword [ebp-10H], eax                    ; 0A29 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0A2C _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0A2F _ 0F B7. 40, 06
        cwde                                            ; 0A33 _ 98
        mov     dword [ebp-0CH], eax                    ; 0A34 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 0A37 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0A3A _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 0A3C _ 89. 45, F8
        movzx   eax, byte [ebp-18H]                     ; 0A3F _ 0F B6. 45, E8
        movzx   ebx, al                                 ; 0A43 _ 0F B6. D8
        mov     eax, dword [ebp+10H]                    ; 0A46 _ 8B. 45, 10
        mov     ecx, dword [eax+1CH]                    ; 0A49 _ 8B. 48, 1C
        mov     eax, dword [ebp+10H]                    ; 0A4C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0A4F _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0A52 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0A55 _ 8B. 00
        push    ebx                                     ; 0A57 _ 53
        push    ecx                                     ; 0A58 _ 51
        push    edx                                     ; 0A59 _ 52
        push    eax                                     ; 0A5A _ 50
        push    dword [ebp-10H]                         ; 0A5B _ FF. 75, F0
        push    dword [ebp-8H]                          ; 0A5E _ FF. 75, F8
        call    putChar                                 ; 0A61 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A66 _ 83. C4, 18
        mov     eax, dword [ebp+10H]                    ; 0A69 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0A6C _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0A6E _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0A71 _ 8B. 40, 08
        add     edx, eax                                ; 0A74 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0A76 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0A79 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0A7B _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0A7E _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0A80 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0A83 _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 0A86 _ 8B. 4D, F0
        sub     ecx, eax                                ; 0A89 _ 29. C1
        mov     eax, ecx                                ; 0A8B _ 89. C8
        cmp     edx, eax                                ; 0A8D _ 39. C2
        jl      ?_064                                   ; 0A8F _ 7C, 0E
        push    dword [ebp+10H]                         ; 0A91 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A94 _ FF. 75, 0C
        call    Println                                 ; 0A97 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0A9C _ 83. C4, 08
?_064:  nop                                             ; 0A9F _ 90
        mov     ebx, dword [ebp-4H]                     ; 0AA0 _ 8B. 5D, FC
        leave                                           ; 0AA3 _ C9
        ret                                             ; 0AA4 _ C3
; PrintChar End of function

PrintTab:; Function begin
        push    ebp                                     ; 0AA5 _ 55
        mov     ebp, esp                                ; 0AA6 _ 89. E5
        push    ebx                                     ; 0AA8 _ 53
        sub     esp, 16                                 ; 0AA9 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0AAC _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0AAF _ 0F B7. 40, 04
        cwde                                            ; 0AB3 _ 98
        mov     dword [ebp-0CH], eax                    ; 0AB4 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0AB7 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0ABA _ 0F B7. 40, 06
        cwde                                            ; 0ABE _ 98
        mov     dword [ebp-8H], eax                     ; 0ABF _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 0AC2 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0AC5 _ 0F B7. 40, 04
        cwde                                            ; 0AC9 _ 98
        mov     edx, dword [ebp+0CH]                    ; 0ACA _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0ACD _ 8B. 5A, 18
        cdq                                             ; 0AD0 _ 99
        idiv    ebx                                     ; 0AD1 _ F7. FB
        mov     word [ebp-0EH], ax                      ; 0AD3 _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 0AD7 _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 0ADB _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0ADE _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 0AE0 _ 0F BF. 45, F2
        imul    eax, dword [ebp+10H]                    ; 0AE4 _ 0F AF. 45, 10
        add     eax, edx                                ; 0AE8 _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 0AEA _ 0F BF. 5D, F2
        cdq                                             ; 0AEE _ 99
        idiv    ebx                                     ; 0AEF _ F7. FB
        imul    ecx, eax                                ; 0AF1 _ 0F AF. C8
        mov     edx, ecx                                ; 0AF4 _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 0AF6 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0AF9 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0AFB _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0AFE _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 0B00 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 0B03 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 0B06 _ 8B. 4D, F4
        sub     ecx, eax                                ; 0B09 _ 29. C1
        mov     eax, ecx                                ; 0B0B _ 89. C8
        cmp     edx, eax                                ; 0B0D _ 39. C2
        jl      ?_065                                   ; 0B0F _ 7C, 0E
        push    dword [ebp+0CH]                         ; 0B11 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B14 _ FF. 75, 08
        call    Println                                 ; 0B17 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0B1C _ 83. C4, 08
?_065:  nop                                             ; 0B1F _ 90
        mov     ebx, dword [ebp-4H]                     ; 0B20 _ 8B. 5D, FC
        leave                                           ; 0B23 _ C9
        ret                                             ; 0B24 _ C3
; PrintTab End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0B25 _ 55
        mov     ebp, esp                                ; 0B26 _ 89. E5
        sub     esp, 8                                  ; 0B28 _ 83. EC, 08
?_066:  sub     esp, 12                                 ; 0B2B _ 83. EC, 0C
        push    100                                     ; 0B2E _ 6A, 64
        call    io_in8                                  ; 0B30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B35 _ 83. C4, 10
        movsx   eax, al                                 ; 0B38 _ 0F BE. C0
        and     eax, 02H                                ; 0B3B _ 83. E0, 02
        test    eax, eax                                ; 0B3E _ 85. C0
        jz      ?_067                                   ; 0B40 _ 74, 02
        jmp     ?_066                                   ; 0B42 _ EB, E7

?_067:  nop                                             ; 0B44 _ 90
        nop                                             ; 0B45 _ 90
        leave                                           ; 0B46 _ C9
        ret                                             ; 0B47 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0B48 _ 55
        mov     ebp, esp                                ; 0B49 _ 89. E5
        sub     esp, 8                                  ; 0B4B _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0B4E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B53 _ 83. EC, 08
        push    96                                      ; 0B56 _ 6A, 60
        push    100                                     ; 0B58 _ 6A, 64
        call    io_out8                                 ; 0B5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5F _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0B62 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B67 _ 83. EC, 08
        push    71                                      ; 0B6A _ 6A, 47
        push    96                                      ; 0B6C _ 6A, 60
        call    io_out8                                 ; 0B6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B73 _ 83. C4, 10
        nop                                             ; 0B76 _ 90
        leave                                           ; 0B77 _ C9
        ret                                             ; 0B78 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0B79 _ 55
        mov     ebp, esp                                ; 0B7A _ 89. E5
        sub     esp, 8                                  ; 0B7C _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0B7F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B84 _ 83. EC, 08
        push    212                                     ; 0B87 _ 68, 000000D4
        push    100                                     ; 0B8C _ 6A, 64
        call    io_out8                                 ; 0B8E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B93 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0B96 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B9B _ 83. EC, 08
        push    244                                     ; 0B9E _ 68, 000000F4
        push    96                                      ; 0BA3 _ 6A, 60
        call    io_out8                                 ; 0BA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BAA _ 83. C4, 10
        nop                                             ; 0BAD _ 90
        leave                                           ; 0BAE _ C9
        ret                                             ; 0BAF _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0BB0 _ 55
        mov     ebp, esp                                ; 0BB1 _ 89. E5
        sub     esp, 4                                  ; 0BB3 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0BB6 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0BB9 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0BBC _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0BBF _ 0F B6. 40, 03
        test    al, al                                  ; 0BC3 _ 84. C0
        jnz     ?_069                                   ; 0BC5 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0BC7 _ 80. 7D, FC, FA
        jnz     ?_068                                   ; 0BCB _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0BCD _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0BD0 _ C6. 40, 03, 01
?_068:  mov     eax, 0                                  ; 0BD4 _ B8, 00000000
        jmp     ?_076                                   ; 0BD9 _ E9, 0000010F

?_069:  mov     eax, dword [ebp+8H]                     ; 0BDE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0BE1 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0BE5 _ 3C, 01
        jnz     ?_071                                   ; 0BE7 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0BE9 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0BED _ 25, 000000C8
        cmp     eax, 8                                  ; 0BF2 _ 83. F8, 08
        jnz     ?_070                                   ; 0BF5 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0BF7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0BFA _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0BFE _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0C00 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0C03 _ C6. 40, 03, 02
?_070:  mov     eax, 0                                  ; 0C07 _ B8, 00000000
        jmp     ?_076                                   ; 0C0C _ E9, 000000DC

?_071:  mov     eax, dword [ebp+8H]                     ; 0C11 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0C14 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0C18 _ 3C, 02
        jnz     ?_072                                   ; 0C1A _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0C1C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0C1F _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0C23 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C26 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0C29 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0C2D _ B8, 00000000
        jmp     ?_076                                   ; 0C32 _ E9, 000000B6

?_072:  mov     eax, dword [ebp+8H]                     ; 0C37 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0C3A _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0C3E _ 3C, 03
        jne     ?_075                                   ; 0C40 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0C46 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0C49 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0C4D _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0C50 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0C53 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0C57 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0C5A _ 0F B6. 00
        movzx   eax, al                                 ; 0C5D _ 0F B6. C0
        and     eax, 07H                                ; 0C60 _ 83. E0, 07
        mov     edx, eax                                ; 0C63 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C65 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0C68 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0C6B _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0C6E _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0C72 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0C75 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0C78 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C7B _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0C7E _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0C82 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0C85 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0C88 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0C8B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0C8E _ 0F B6. 00
        movzx   eax, al                                 ; 0C91 _ 0F B6. C0
        and     eax, 10H                                ; 0C94 _ 83. E0, 10
        test    eax, eax                                ; 0C97 _ 85. C0
        jz      ?_073                                   ; 0C99 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0C9B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C9E _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0CA1 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0CA6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CA8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0CAB _ 89. 50, 04
?_073:  mov     eax, dword [ebp+8H]                     ; 0CAE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0CB1 _ 0F B6. 00
        movzx   eax, al                                 ; 0CB4 _ 0F B6. C0
        and     eax, 20H                                ; 0CB7 _ 83. E0, 20
        test    eax, eax                                ; 0CBA _ 85. C0
        jz      ?_074                                   ; 0CBC _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0CBE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0CC1 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0CC4 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0CC9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CCB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0CCE _ 89. 50, 08
?_074:  mov     eax, dword [ebp+8H]                     ; 0CD1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0CD4 _ 8B. 40, 08
        neg     eax                                     ; 0CD7 _ F7. D8
        mov     edx, eax                                ; 0CD9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CDB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0CDE _ 89. 50, 08
        mov     eax, 1                                  ; 0CE1 _ B8, 00000001
        jmp     ?_076                                   ; 0CE6 _ EB, 05

?_075:  mov     eax, 4294967295                         ; 0CE8 _ B8, FFFFFFFF
?_076:  leave                                           ; 0CED _ C9
        ret                                             ; 0CEE _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 0CEF _ 55
        mov     ebp, esp                                ; 0CF0 _ 89. E5
        sub     esp, 4                                  ; 0CF2 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0CF5 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0CF8 _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 0CFB _ 80. 7D, FC, 0E
        jbe     ?_077                                   ; 0CFF _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 0D01 _ 80. 7D, FC, 35
        ja      ?_077                                   ; 0D05 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 0D07 _ 0F B6. 45, FC
        sub     eax, 15                                 ; 0D0B _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.1761+eax]       ; 0D0E _ 0F B6. 80, 000000E0(d)
        jmp     ?_079                                   ; 0D15 _ EB, 21

?_077:  cmp     byte [ebp-4H], 1                        ; 0D17 _ 80. 7D, FC, 01
        jbe     ?_078                                   ; 0D1B _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 0D1D _ 80. 7D, FC, 0E
        ja      ?_078                                   ; 0D21 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 0D23 _ 0F B6. 45, FC
        sub     eax, 2                                  ; 0D27 _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.1762+eax]    ; 0D2A _ 0F B6. 80, 00000108(d)
        jmp     ?_079                                   ; 0D31 _ EB, 05

?_078:  mov     eax, 0                                  ; 0D33 _ B8, 00000000
?_079:  leave                                           ; 0D38 _ C9
        ret                                             ; 0D39 _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 0D3A _ 55
        mov     ebp, esp                                ; 0D3B _ 89. E5
        sub     esp, 4                                  ; 0D3D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D40 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D43 _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 0D46 _ 80. 7D, FC, 8E
        jbe     ?_080                                   ; 0D4A _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 0D4C _ 80. 7D, FC, B5
        ja      ?_080                                   ; 0D50 _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 0D52 _ 0F B6. 45, FC
        sub     eax, 143                                ; 0D56 _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.1766+eax]       ; 0D5B _ 0F B6. 80, 00000120(d)
        jmp     ?_082                                   ; 0D62 _ EB, 23

?_080:  cmp     byte [ebp-4H], -127                     ; 0D64 _ 80. 7D, FC, 81
        jbe     ?_081                                   ; 0D68 _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 0D6A _ 80. 7D, FC, 8E
        ja      ?_081                                   ; 0D6E _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 0D70 _ 0F B6. 45, FC
        sub     eax, 130                                ; 0D74 _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.1767+eax]    ; 0D79 _ 0F B6. 80, 00000148(d)
        jmp     ?_082                                   ; 0D80 _ EB, 05

?_081:  mov     eax, 0                                  ; 0D82 _ B8, 00000000
?_082:  leave                                           ; 0D87 _ C9
        ret                                             ; 0D88 _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0D89 _ 55
        mov     ebp, esp                                ; 0D8A _ 89. E5
        push    ebx                                     ; 0D8C _ 53
        mov     eax, dword [ebp+10H]                    ; 0D8D _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 0D90 _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 0D93 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 0D96 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0D99 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 0D9B _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 0D9E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0DA1 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0DA4 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0DA7 _ 8B. 00
        push    ebx                                     ; 0DA9 _ 53
        push    ecx                                     ; 0DAA _ 51
        push    edx                                     ; 0DAB _ 52
        push    eax                                     ; 0DAC _ 50
        push    15                                      ; 0DAD _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0DAF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DB2 _ FF. 75, 08
        call    boxfill8                                ; 0DB5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0DBA _ 83. C4, 1C
        nop                                             ; 0DBD _ 90
        mov     ebx, dword [ebp-4H]                     ; 0DBE _ 8B. 5D, FC
        leave                                           ; 0DC1 _ C9
        ret                                             ; 0DC2 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0DC3 _ 55
        mov     ebp, esp                                ; 0DC4 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0DC6 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0DC9 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0DCC _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0DCF _ 8B. 00
        push    cursor                                  ; 0DD1 _ 68, 00000000(d)
        push    edx                                     ; 0DD6 _ 52
        push    eax                                     ; 0DD7 _ 50
        push    dword [ebp+0CH]                         ; 0DD8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0DDB _ FF. 75, 08
        call    PrintRGB                                ; 0DDE _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 0DE3 _ 83. C4, 14
        nop                                             ; 0DE6 _ 90
        leave                                           ; 0DE7 _ C9
        ret                                             ; 0DE8 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0DE9 _ 55
        mov     ebp, esp                                ; 0DEA _ 89. E5
        mov     edx, dword [cur_pos]                    ; 0DEC _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 0DF2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DF5 _ 8B. 40, 04
        add     eax, edx                                ; 0DF8 _ 01. D0
        mov     dword [cur_pos], eax                    ; 0DFA _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 0DFF _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 0E05 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E08 _ 8B. 40, 08
        add     eax, edx                                ; 0E0B _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 0E0D _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 0E12 _ A1, 00000000(d)
        test    eax, eax                                ; 0E17 _ 85. C0
        jns     ?_083                                   ; 0E19 _ 79, 0A
        mov     dword [cur_pos], 0                      ; 0E1B _ C7. 05, 00000000(d), 00000000
?_083:  mov     eax, dword [cur_pos+4H]                 ; 0E25 _ A1, 00000004(d)
        test    eax, eax                                ; 0E2A _ 85. C0
        jns     ?_084                                   ; 0E2C _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 0E2E _ C7. 05, 00000004(d), 00000000
?_084:  mov     eax, dword [cur_pos]                    ; 0E38 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 0E3D _ 3B. 45, 0C
        jle     ?_085                                   ; 0E40 _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 0E42 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 0E45 _ A3, 00000000(d)
?_085:  mov     eax, dword [cur_pos+4H]                 ; 0E4A _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 0E4F _ 3B. 45, 10
        jle     ?_086                                   ; 0E52 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 0E54 _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 0E57 _ A3, 00000004(d)
?_086:  nop                                             ; 0E5C _ 90
        pop     ebp                                     ; 0E5D _ 5D
        ret                                             ; 0E5E _ C3
; computeMousePosition End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 0E5F _ 55
        mov     ebp, esp                                ; 0E60 _ 89. E5
        sub     esp, 24                                 ; 0E62 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0E65 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0E6A _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0E6D _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E74 _ 98
        mov     dword [ebp-10H], eax                    ; 0E75 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0E78 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E7F _ 98
        mov     dword [ebp-0CH], eax                    ; 0E80 _ 89. 45, F4
        sub     esp, 8                                  ; 0E83 _ 83. EC, 08
        push    33                                      ; 0E86 _ 6A, 21
        push    32                                      ; 0E88 _ 6A, 20
        call    io_out8                                 ; 0E8A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E8F _ 83. C4, 10
        sub     esp, 12                                 ; 0E92 _ 83. EC, 0C
        push    96                                      ; 0E95 _ 6A, 60
        call    io_in8                                  ; 0E97 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E9C _ 83. C4, 10
        sub     esp, 4                                  ; 0E9F _ 83. EC, 04
        push    txtCursor                               ; 0EA2 _ 68, 00000000(d)
        push    bootInfo                                ; 0EA7 _ 68, 00000000(d)
        push    ?_095                                   ; 0EAC _ 68, 00000000(d)
        call    Printf                                  ; 0EB1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EB6 _ 83. C4, 10
        nop                                             ; 0EB9 _ 90
        leave                                           ; 0EBA _ C9
        ret                                             ; 0EBB _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 0EBC _ 55
        mov     ebp, esp                                ; 0EBD _ 89. E5
        sub     esp, 24                                 ; 0EBF _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0EC2 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0EC7 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0ECA _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0ED1 _ 98
        mov     dword [ebp-10H], eax                    ; 0ED2 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0ED5 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EDC _ 98
        mov     dword [ebp-0CH], eax                    ; 0EDD _ 89. 45, F4
        sub     esp, 8                                  ; 0EE0 _ 83. EC, 08
        push    33                                      ; 0EE3 _ 6A, 21
        push    32                                      ; 0EE5 _ 6A, 20
        call    io_out8                                 ; 0EE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EEC _ 83. C4, 10
        sub     esp, 12                                 ; 0EEF _ 83. EC, 0C
        push    96                                      ; 0EF2 _ 6A, 60
        call    io_in8                                  ; 0EF4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EF9 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0EFC _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0EFF _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0F03 _ 83. EC, 08
        push    eax                                     ; 0F06 _ 50
        push    KEY_FIFO8                               ; 0F07 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0F0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F11 _ 83. C4, 10
        nop                                             ; 0F14 _ 90
        leave                                           ; 0F15 _ C9
        ret                                             ; 0F16 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 0F17 _ 55
        mov     ebp, esp                                ; 0F18 _ 89. E5
        sub     esp, 24                                 ; 0F1A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0F1D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0F22 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 0F25 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0F2C _ 98
        mov     dword [ebp-10H], eax                    ; 0F2D _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 0F30 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0F37 _ 98
        mov     dword [ebp-0CH], eax                    ; 0F38 _ 89. 45, F4
        sub     esp, 8                                  ; 0F3B _ 83. EC, 08
        push    32                                      ; 0F3E _ 6A, 20
        push    160                                     ; 0F40 _ 68, 000000A0
        call    io_out8                                 ; 0F45 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F4A _ 83. C4, 10
        sub     esp, 8                                  ; 0F4D _ 83. EC, 08
        push    32                                      ; 0F50 _ 6A, 20
        push    32                                      ; 0F52 _ 6A, 20
        call    io_out8                                 ; 0F54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F59 _ 83. C4, 10
        sub     esp, 12                                 ; 0F5C _ 83. EC, 0C
        push    96                                      ; 0F5F _ 6A, 60
        call    io_in8                                  ; 0F61 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F66 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0F69 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0F6C _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0F70 _ 83. EC, 08
        push    eax                                     ; 0F73 _ 50
        push    MOUSE_FIFO8                             ; 0F74 _ 68, 00000000(d)
        call    fifo8_w                                 ; 0F79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F7E _ 83. C4, 10
        nop                                             ; 0F81 _ 90
        leave                                           ; 0F82 _ C9
        ret                                             ; 0F83 _ C3
; intHandlerFromC_mouse End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 0F84 _ 55
        mov     ebp, esp                                ; 0F85 _ 89. E5
        push    dword [ebp+10H]                         ; 0F87 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F8A _ FF. 75, 0C
        push    ?_096                                   ; 0F8D _ 68, 00000003(d)
        call    Printf                                  ; 0F92 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0F97 _ 83. C4, 0C
        push    1                                       ; 0F9A _ 6A, 01
        push    dword [ebp+10H]                         ; 0F9C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F9F _ FF. 75, 0C
        call    PrintTab                                ; 0FA2 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FA7 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 0FAA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FAD _ 8B. 00
        push    eax                                     ; 0FAF _ 50
        call    intToHexStr                             ; 0FB0 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0FB5 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 0FB8 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FBB _ FF. 75, 0C
        push    eax                                     ; 0FBE _ 50
        call    Printf                                  ; 0FBF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FC4 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 0FC7 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FCA _ FF. 75, 0C
        call    Println                                 ; 0FCD _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0FD2 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 0FD5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FD8 _ FF. 75, 0C
        push    ?_097                                   ; 0FDB _ 68, 00000012(d)
        call    Printf                                  ; 0FE0 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FE5 _ 83. C4, 0C
        push    1                                       ; 0FE8 _ 6A, 01
        push    dword [ebp+10H]                         ; 0FEA _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FED _ FF. 75, 0C
        call    PrintTab                                ; 0FF0 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FF5 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 0FF8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FFB _ 8B. 40, 04
        push    eax                                     ; 0FFE _ 50
        call    intToHexStr                             ; 0FFF _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1004 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1007 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 100A _ FF. 75, 0C
        push    eax                                     ; 100D _ 50
        call    Printf                                  ; 100E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1013 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1016 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1019 _ FF. 75, 0C
        call    Println                                 ; 101C _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1021 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1024 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1027 _ FF. 75, 0C
        push    ?_098                                   ; 102A _ 68, 00000023(d)
        call    Printf                                  ; 102F _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1034 _ 83. C4, 0C
        push    2                                       ; 1037 _ 6A, 02
        push    dword [ebp+10H]                         ; 1039 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 103C _ FF. 75, 0C
        call    PrintTab                                ; 103F _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1044 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1047 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 104A _ 8B. 40, 08
        push    eax                                     ; 104D _ 50
        call    intToHexStr                             ; 104E _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1053 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1056 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1059 _ FF. 75, 0C
        push    eax                                     ; 105C _ 50
        call    Printf                                  ; 105D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1062 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1065 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1068 _ FF. 75, 0C
        call    Println                                 ; 106B _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1070 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1073 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1076 _ FF. 75, 0C
        push    ?_099                                   ; 1079 _ 68, 00000030(d)
        call    Printf                                  ; 107E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1083 _ 83. C4, 0C
        push    1                                       ; 1086 _ 6A, 01
        push    dword [ebp+10H]                         ; 1088 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 108B _ FF. 75, 0C
        call    PrintTab                                ; 108E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1093 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1096 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1099 _ 8B. 40, 0C
        push    eax                                     ; 109C _ 50
        call    intToHexStr                             ; 109D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 10A2 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 10A5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10A8 _ FF. 75, 0C
        push    eax                                     ; 10AB _ 50
        call    Printf                                  ; 10AC _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10B1 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 10B4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10B7 _ FF. 75, 0C
        call    Println                                 ; 10BA _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 10BF _ 83. C4, 08
        push    dword [ebp+10H]                         ; 10C2 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10C5 _ FF. 75, 0C
        push    ?_100                                   ; 10C8 _ 68, 0000003F(d)
        call    Printf                                  ; 10CD _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10D2 _ 83. C4, 0C
        push    3                                       ; 10D5 _ 6A, 03
        push    dword [ebp+10H]                         ; 10D7 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10DA _ FF. 75, 0C
        call    PrintTab                                ; 10DD _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10E2 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 10E5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 10E8 _ 8B. 40, 10
        push    eax                                     ; 10EB _ 50
        call    intToHexStr                             ; 10EC _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 10F1 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 10F4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10F7 _ FF. 75, 0C
        push    eax                                     ; 10FA _ 50
        call    Printf                                  ; 10FB _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1100 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1103 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1106 _ FF. 75, 0C
        call    Println                                 ; 1109 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 110E _ 83. C4, 08
        nop                                             ; 1111 _ 90
        leave                                           ; 1112 _ C9
        ret                                             ; 1113 _ C3
; showMemoryInfo End of function

CMain:  ; Function begin
        push    ebp                                     ; 1114 _ 55
        mov     ebp, esp                                ; 1115 _ 89. E5
        sub     esp, 40                                 ; 1117 _ 83. EC, 28
        call    pict_init                               ; 111A _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 111F _ A1, 00000000(d)
        mov     dword [ebp-20H], eax                    ; 1124 _ 89. 45, E0
        movzx   eax, word [bootInfo+4H]                 ; 1127 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 112E _ 98
        mov     dword [ebp-1CH], eax                    ; 112F _ 89. 45, E4
        movzx   eax, word [bootInfo+6H]                 ; 1132 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1139 _ 98
        mov     dword [ebp-18H], eax                    ; 113A _ 89. 45, E8
        sub     esp, 8                                  ; 113D _ 83. EC, 08
        push    15                                      ; 1140 _ 6A, 0F
        push    dword [ebp-20H]                         ; 1142 _ FF. 75, E0
        call    fillAll                                 ; 1145 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 114A _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 114D _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 1153 _ A1, 00000000(d)
        sub     esp, 12                                 ; 1158 _ 83. EC, 0C
        push    cursor                                  ; 115B _ 68, 00000000(d)
        push    edx                                     ; 1160 _ 52
        push    eax                                     ; 1161 _ 50
        push    dword [ebp-1CH]                         ; 1162 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 1165 _ FF. 75, E0
        call    PrintRGB                                ; 1168 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 116D _ 83. C4, 20
        call    io_sti                                  ; 1170 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 1175 _ E8, FFFFFFFC(rel)
        call    getAddrRangeDescArray                   ; 117A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 117F _ 89. 45, EC
        sub     esp, 4                                  ; 1182 _ 83. EC, 04
        push    128                                     ; 1185 _ 68, 00000080
        push    key_buf                                 ; 118A _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 118F _ 68, 00000000(d)
        call    fifo8_init                              ; 1194 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1199 _ 83. C4, 10
        sub     esp, 4                                  ; 119C _ 83. EC, 04
        push    256                                     ; 119F _ 68, 00000100
        push    mouse_buf                               ; 11A4 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 11A9 _ 68, 00000000(d)
        call    fifo8_init                              ; 11AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11B3 _ 83. C4, 10
        call    init_keyboard                           ; 11B6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-24H], 0                      ; 11BB _ C7. 45, DC, 00000000
?_087:  call    io_cli                                  ; 11C2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 11C7 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 11CA _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 11CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11D4 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 11D7 _ 89. 45, F0
        sub     esp, 12                                 ; 11DA _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 11DD _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 11E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11E7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 11EA _ 89. 45, F4
        cmp     dword [ebp-10H], 0                      ; 11ED _ 83. 7D, F0, 00
        jz      ?_088                                   ; 11F1 _ 74, 10
        cmp     dword [ebp-0CH], 0                      ; 11F3 _ 83. 7D, F4, 00
        jz      ?_088                                   ; 11F7 _ 74, 0A
        call    io_stihlt                               ; 11F9 _ E8, FFFFFFFC(rel)
        jmp     ?_092                                   ; 11FE _ E9, 0000018F

?_088:  cmp     dword [ebp-10H], 0                      ; 1203 _ 83. 7D, F0, 00
        jne     ?_091                                   ; 1207 _ 0F 85, 00000104
        call    io_sti                                  ; 120D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1212 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 1215 _ 68, 00000000(d)
        call    fifo8_r                                 ; 121A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 121F _ 83. C4, 10
        mov     byte [ebp-27H], al                      ; 1222 _ 88. 45, D9
        movzx   eax, byte [ebp-27H]                     ; 1225 _ 0F B6. 45, D9
        sub     esp, 12                                 ; 1229 _ 83. EC, 0C
        push    eax                                     ; 122C _ 50
        call    getKeyMakeChar                          ; 122D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1232 _ 83. C4, 10
        mov     byte [ebp-26H], al                      ; 1235 _ 88. 45, DA
        cmp     byte [ebp-27H], 28                      ; 1238 _ 80. 7D, D9, 1C
        jne     ?_089                                   ; 123C _ 0F 85, 00000084
        sub     esp, 8                                  ; 1242 _ 83. EC, 08
        push    txtCursor                               ; 1245 _ 68, 00000000(d)
        push    bootInfo                                ; 124A _ 68, 00000000(d)
        call    Println                                 ; 124F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1254 _ 83. C4, 10
        sub     esp, 8                                  ; 1257 _ 83. EC, 08
        push    15                                      ; 125A _ 6A, 0F
        push    bootInfo                                ; 125C _ 68, 00000000(d)
        call    clear                                   ; 1261 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1266 _ 83. C4, 10
        sub     esp, 12                                 ; 1269 _ 83. EC, 0C
        push    txtCursor                               ; 126C _ 68, 00000000(d)
        call    initCursor                              ; 1271 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1276 _ 83. C4, 10
        mov     eax, dword [ebp-14H]                    ; 1279 _ 8B. 45, EC
        mov     ecx, dword [eax+4H]                     ; 127C _ 8B. 48, 04
        mov     eax, dword [ebp-24H]                    ; 127F _ 8B. 45, DC
        lea     edx, [eax+1H]                           ; 1282 _ 8D. 50, 01
        mov     dword [ebp-24H], edx                    ; 1285 _ 89. 55, DC
        mov     edx, eax                                ; 1288 _ 89. C2
        mov     eax, edx                                ; 128A _ 89. D0
        shl     eax, 2                                  ; 128C _ C1. E0, 02
        add     eax, edx                                ; 128F _ 01. D0
        shl     eax, 2                                  ; 1291 _ C1. E0, 02
        add     eax, ecx                                ; 1294 _ 01. C8
        sub     esp, 4                                  ; 1296 _ 83. EC, 04
        push    txtCursor                               ; 1299 _ 68, 00000000(d)
        push    bootInfo                                ; 129E _ 68, 00000000(d)
        push    eax                                     ; 12A3 _ 50
        call    showMemoryInfo                          ; 12A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12A9 _ 83. C4, 10
        mov     eax, dword [ebp-14H]                    ; 12AC _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 12AF _ 8B. 00
        cmp     eax, dword [ebp-24H]                    ; 12B1 _ 3B. 45, DC
        jg      ?_087                                   ; 12B4 _ 0F 8F, FFFFFF08
        mov     dword [ebp-24H], 0                      ; 12BA _ C7. 45, DC, 00000000
        jmp     ?_087                                   ; 12C1 _ E9, FFFFFEFC

?_089:  cmp     byte [ebp-26H], 9                       ; 12C6 _ 80. 7D, DA, 09
        jnz     ?_090                                   ; 12CA _ 75, 1C
        sub     esp, 4                                  ; 12CC _ 83. EC, 04
        push    1                                       ; 12CF _ 6A, 01
        push    txtCursor                               ; 12D1 _ 68, 00000000(d)
        push    bootInfo                                ; 12D6 _ 68, 00000000(d)
        call    PrintTab                                ; 12DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12E0 _ 83. C4, 10
        jmp     ?_087                                   ; 12E3 _ E9, FFFFFEDA

?_090:  cmp     byte [ebp-26H], 0                       ; 12E8 _ 80. 7D, DA, 00
        je      ?_087                                   ; 12EC _ 0F 84, FFFFFED0
        movsx   eax, byte [ebp-26H]                     ; 12F2 _ 0F BE. 45, DA
        sub     esp, 4                                  ; 12F6 _ 83. EC, 04
        push    txtCursor                               ; 12F9 _ 68, 00000000(d)
        push    bootInfo                                ; 12FE _ 68, 00000000(d)
        push    eax                                     ; 1303 _ 50
        call    PrintChar                               ; 1304 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1309 _ 83. C4, 10
        jmp     ?_087                                   ; 130C _ E9, FFFFFEB1

?_091:  cmp     dword [ebp-0CH], 0                      ; 1311 _ 83. 7D, F4, 00
        jne     ?_087                                   ; 1315 _ 0F 85, FFFFFEA7
        call    io_sti                                  ; 131B _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1320 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 1323 _ 68, 00000000(d)
        call    fifo8_r                                 ; 1328 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 132D _ 83. C4, 10
        mov     byte [ebp-25H], al                      ; 1330 _ 88. 45, DB
        movzx   eax, byte [ebp-25H]                     ; 1333 _ 0F B6. 45, DB
        sub     esp, 8                                  ; 1337 _ 83. EC, 08
        push    eax                                     ; 133A _ 50
        push    mdec                                    ; 133B _ 68, 00000000(d)
        call    mouse_decode                            ; 1340 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1345 _ 83. C4, 10
        test    eax, eax                                ; 1348 _ 85. C0
        je      ?_087                                   ; 134A _ 0F 84, FFFFFE72
        sub     esp, 4                                  ; 1350 _ 83. EC, 04
        push    cur_pos                                 ; 1353 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 1358 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 135B _ FF. 75, E0
        call    eraseMouse                              ; 135E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1363 _ 83. C4, 10
        sub     esp, 4                                  ; 1366 _ 83. EC, 04
        push    dword [ebp-18H]                         ; 1369 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 136C _ FF. 75, E4
        push    mdec                                    ; 136F _ 68, 00000000(d)
        call    computeMousePosition                    ; 1374 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1379 _ 83. C4, 10
        sub     esp, 4                                  ; 137C _ 83. EC, 04
        push    cur_pos                                 ; 137F _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 1384 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 1387 _ FF. 75, E0
        call    drawMouse                               ; 138A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 138F _ 83. C4, 10
?_092:  jmp     ?_087                                   ; 1392 _ E9, FFFFFE2B
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

str.1555:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C0 _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........

keyintToChar.1761:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 00E0 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 00E8 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 00F0 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 00F8 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0100 _ vbnm,./.

keyintToNumChar.1762:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0108 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0110 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........

keyintToChar.1766:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0120 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0128 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0130 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0138 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0140 _ vbnm,./.

keyintToNumChar.1767:                                   ; byte
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

addrArray.1536:                                         ; qword
        resb    4                                       ; 01B8

?_093:  resd    1                                       ; 01BC

str.1551:                                               ; byte
        resb    1                                       ; 01C0

?_094:  resb    2                                       ; 01C1




?_095:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.

?_096:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0003 _ baseAddr
        db 5FH, 4CH, 6FH, 77H, 3AH, 20H, 00H            ; 000B _ _Low: .

?_097:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0012 _ baseAddr
        db 5FH, 48H, 69H, 67H, 68H, 74H, 3AH, 20H       ; 001A _ _Hight: 
        db 00H                                          ; 0022 _ .

?_098:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 4CH       ; 0023 _ length_L
        db 6FH, 77H, 3AH, 20H, 00H                      ; 002B _ ow: .

?_099:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 48H       ; 0030 _ length_H
        db 69H, 67H, 68H, 74H, 3AH, 20H, 00H            ; 0038 _ ight: .

?_100:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003F _ type: .


