; Disassembly of file: main.o
; Tue Nov 12 05:20:07 2019
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
        mov     byte [?_168], al                        ; 0164 _ A2, 00000739(d)
        shr     byte [ebp-4H], 4                        ; 0169 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 016D _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0171 _ 0F BE. C0
        and     eax, 0FH                                ; 0174 _ 83. E0, 0F
        push    eax                                     ; 0177 _ 50
        call    charToHex                               ; 0178 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 017D _ 83. C4, 04
        mov     byte [str.1536], al                     ; 0180 _ A2, 00000738(d)
        mov     eax, str.1536                           ; 0185 _ B8, 00000738(d)
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
        add     eax, str.1540                           ; 019E _ 05, 00000220(d)
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
        add     eax, str.1540                           ; 01DC _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 01E1 _ 88. 10
        jmp     ?_008                                   ; 01E3 _ EB, 12

?_007:  mov     eax, dword [ebp-4H]                     ; 01E5 _ 8B. 45, FC
        add     eax, 48                                 ; 01E8 _ 83. C0, 30
        mov     edx, eax                                ; 01EB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 01ED _ 8B. 45, F8
        add     eax, str.1540                           ; 01F0 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 01F5 _ 88. 10
?_008:  sub     dword [ebp-8H], 1                       ; 01F7 _ 83. 6D, F8, 01
?_009:  cmp     dword [ebp-8H], 1                       ; 01FB _ 83. 7D, F8, 01
        jle     ?_010                                   ; 01FF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0201 _ 83. 7D, 08, 00
        jnz     ?_006                                   ; 0205 _ 75, B2
?_010:  mov     eax, str.1540                           ; 0207 _ B8, 00000220(d)
        leave                                           ; 020C _ C9
        ret                                             ; 020D _ C3
; intToHexStr End of function

memset_8:; Function begin
        push    ebp                                     ; 020E _ 55
        mov     ebp, esp                                ; 020F _ 89. E5
        sub     esp, 4                                  ; 0211 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0214 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0217 _ 88. 45, FC
        jmp     ?_012                                   ; 021A _ EB, 0F

?_011:  mov     eax, dword [ebp+8H]                     ; 021C _ 8B. 45, 08
        lea     edx, [eax+1H]                           ; 021F _ 8D. 50, 01
        mov     dword [ebp+8H], edx                     ; 0222 _ 89. 55, 08
        movzx   edx, byte [ebp-4H]                      ; 0225 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0229 _ 88. 10
?_012:  mov     eax, dword [ebp+10H]                    ; 022B _ 8B. 45, 10
        lea     edx, [eax-1H]                           ; 022E _ 8D. 50, FF
        mov     dword [ebp+10H], edx                    ; 0231 _ 89. 55, 10
        test    eax, eax                                ; 0234 _ 85. C0
        jnz     ?_011                                   ; 0236 _ 75, E4
        nop                                             ; 0238 _ 90
        leave                                           ; 0239 _ C9
        ret                                             ; 023A _ C3
; memset_8 End of function

memcpy_8:; Function begin
        push    ebp                                     ; 023B _ 55
        mov     ebp, esp                                ; 023C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 023E _ 8B. 45, 08
        cmp     eax, dword [ebp+0CH]                    ; 0241 _ 3B. 45, 0C
        jz      ?_015                                   ; 0244 _ 74, 28
        jmp     ?_014                                   ; 0246 _ EB, 17

?_013:  mov     eax, dword [ebp+0CH]                    ; 0248 _ 8B. 45, 0C
        lea     edx, [eax+1H]                           ; 024B _ 8D. 50, 01
        mov     dword [ebp+0CH], edx                    ; 024E _ 89. 55, 0C
        mov     edx, dword [ebp+8H]                     ; 0251 _ 8B. 55, 08
        lea     ecx, [edx+1H]                           ; 0254 _ 8D. 4A, 01
        mov     dword [ebp+8H], ecx                     ; 0257 _ 89. 4D, 08
        movzx   edx, byte [edx]                         ; 025A _ 0F B6. 12
        mov     byte [eax], dl                          ; 025D _ 88. 10
?_014:  mov     eax, dword [ebp+10H]                    ; 025F _ 8B. 45, 10
        lea     edx, [eax-1H]                           ; 0262 _ 8D. 50, FF
        mov     dword [ebp+10H], edx                    ; 0265 _ 89. 55, 10
        test    eax, eax                                ; 0268 _ 85. C0
        jnz     ?_013                                   ; 026A _ 75, DC
        jmp     ?_016                                   ; 026C _ EB, 01

?_015:  nop                                             ; 026E _ 90
?_016:  pop     ebp                                     ; 026F _ 5D
        ret                                             ; 0270 _ C3
; memcpy_8 End of function

memcmb: ; Function begin
        push    ebp                                     ; 0271 _ 55
        mov     ebp, esp                                ; 0272 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0274 _ 8B. 45, 08
        cmp     eax, dword [ebp+0CH]                    ; 0277 _ 3B. 45, 0C
        jz      ?_020                                   ; 027A _ 74, 2E
        jmp     ?_019                                   ; 027C _ EB, 1D

?_017:  mov     eax, dword [ebp+8H]                     ; 027E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0281 _ 0F B6. 00
        test    al, al                                  ; 0284 _ 84. C0
        jz      ?_018                                   ; 0286 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 0288 _ 8B. 45, 08
        movzx   edx, byte [eax]                         ; 028B _ 0F B6. 10
        mov     eax, dword [ebp+0CH]                    ; 028E _ 8B. 45, 0C
        mov     byte [eax], dl                          ; 0291 _ 88. 10
?_018:  add     dword [ebp+0CH], 1                      ; 0293 _ 83. 45, 0C, 01
        add     dword [ebp+8H], 1                       ; 0297 _ 83. 45, 08, 01
?_019:  mov     eax, dword [ebp+10H]                    ; 029B _ 8B. 45, 10
        lea     edx, [eax-1H]                           ; 029E _ 8D. 50, FF
        mov     dword [ebp+10H], edx                    ; 02A1 _ 89. 55, 10
        test    eax, eax                                ; 02A4 _ 85. C0
        jnz     ?_017                                   ; 02A6 _ 75, D6
        jmp     ?_021                                   ; 02A8 _ EB, 01

?_020:  nop                                             ; 02AA _ 90
?_021:  pop     ebp                                     ; 02AB _ 5D
        ret                                             ; 02AC _ C3
; memcmb End of function

getAddrRangeDescArray:; Function begin
        push    ebp                                     ; 02AD _ 55
        mov     ebp, esp                                ; 02AE _ 89. E5
        sub     esp, 8                                  ; 02B0 _ 83. EC, 08
        call    GET_MEMOTY_BLOCK_COUNT                  ; 02B3 _ E8, FFFFFFFC(rel)
        mov     dword [addrArray.1591], eax             ; 02B8 _ A3, 0000073C(d)
        call    GET_MEMDESC_ADDR                        ; 02BD _ E8, FFFFFFFC(rel)
        mov     dword [?_169], eax                      ; 02C2 _ A3, 00000740(d)
        mov     eax, addrArray.1591                     ; 02C7 _ B8, 0000073C(d)
        leave                                           ; 02CC _ C9
        ret                                             ; 02CD _ C3
; getAddrRangeDescArray End of function

memman_total:; Function begin
        push    ebp                                     ; 02CE _ 55
        mov     ebp, esp                                ; 02CF _ 89. E5
        sub     esp, 16                                 ; 02D1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 02D4 _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 02DB _ C7. 45, F8, 00000000
        jmp     ?_023                                   ; 02E2 _ EB, 17

?_022:  mov     eax, dword [memman+10H]                 ; 02E4 _ A1, 00000010(d)
        mov     edx, dword [ebp-8H]                     ; 02E9 _ 8B. 55, F8
        shl     edx, 3                                  ; 02EC _ C1. E2, 03
        add     eax, edx                                ; 02EF _ 01. D0
        mov     eax, dword [eax+4H]                     ; 02F1 _ 8B. 40, 04
        add     dword [ebp-4H], eax                     ; 02F4 _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 02F7 _ 83. 45, F8, 01
?_023:  mov     eax, dword [memman]                     ; 02FB _ A1, 00000000(d)
        cmp     eax, dword [ebp-8H]                     ; 0300 _ 3B. 45, F8
        ja      ?_022                                   ; 0303 _ 77, DF
        mov     eax, dword [ebp-4H]                     ; 0305 _ 8B. 45, FC
        leave                                           ; 0308 _ C9
        ret                                             ; 0309 _ C3
; memman_total End of function

memman_alloc:; Function begin
        push    ebp                                     ; 030A _ 55
        mov     ebp, esp                                ; 030B _ 89. E5
        sub     esp, 16                                 ; 030D _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0310 _ C7. 45, F4, 00000000
        jmp     ?_029                                   ; 0317 _ E9, 0000010B

?_024:  mov     eax, dword [memman+10H]                 ; 031C _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0321 _ 8B. 55, F4
        shl     edx, 3                                  ; 0324 _ C1. E2, 03
        add     eax, edx                                ; 0327 _ 01. D0
        mov     eax, dword [eax+4H]                     ; 0329 _ 8B. 40, 04
        cmp     eax, dword [ebp+8H]                     ; 032C _ 3B. 45, 08
        jc      ?_028                                   ; 032F _ 0F 82, 000000EE
        mov     eax, dword [memman+10H]                 ; 0335 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 033A _ 8B. 55, F4
        shl     edx, 3                                  ; 033D _ C1. E2, 03
        add     eax, edx                                ; 0340 _ 01. D0
        mov     eax, dword [eax]                        ; 0342 _ 8B. 00
        mov     dword [ebp-4H], eax                     ; 0344 _ 89. 45, FC
        mov     eax, dword [memman+10H]                 ; 0347 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 034C _ 8B. 55, F4
        shl     edx, 3                                  ; 034F _ C1. E2, 03
        add     eax, edx                                ; 0352 _ 01. D0
        mov     edx, dword [memman+10H]                 ; 0354 _ 8B. 15, 00000010(d)
        mov     ecx, dword [ebp-0CH]                    ; 035A _ 8B. 4D, F4
        shl     ecx, 3                                  ; 035D _ C1. E1, 03
        add     edx, ecx                                ; 0360 _ 01. CA
        mov     ecx, dword [edx]                        ; 0362 _ 8B. 0A
        mov     edx, dword [ebp+8H]                     ; 0364 _ 8B. 55, 08
        add     edx, ecx                                ; 0367 _ 01. CA
        mov     dword [eax], edx                        ; 0369 _ 89. 10
        mov     eax, dword [memman+10H]                 ; 036B _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0370 _ 8B. 55, F4
        shl     edx, 3                                  ; 0373 _ C1. E2, 03
        add     edx, eax                                ; 0376 _ 01. C2
        mov     eax, dword [memman+10H]                 ; 0378 _ A1, 00000010(d)
        mov     ecx, dword [ebp-0CH]                    ; 037D _ 8B. 4D, F4
        shl     ecx, 3                                  ; 0380 _ C1. E1, 03
        add     eax, ecx                                ; 0383 _ 01. C8
        mov     eax, dword [eax+4H]                     ; 0385 _ 8B. 40, 04
        sub     eax, dword [ebp+8H]                     ; 0388 _ 2B. 45, 08
        mov     dword [edx+4H], eax                     ; 038B _ 89. 42, 04
        mov     eax, dword [memman+10H]                 ; 038E _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0393 _ 8B. 55, F4
        shl     edx, 3                                  ; 0396 _ C1. E2, 03
        add     eax, edx                                ; 0399 _ 01. D0
        mov     eax, dword [eax+4H]                     ; 039B _ 8B. 40, 04
        test    eax, eax                                ; 039E _ 85. C0
        jnz     ?_027                                   ; 03A0 _ 75, 7C
        mov     eax, dword [ebp-0CH]                    ; 03A2 _ 8B. 45, F4
        mov     dword [ebp-8H], eax                     ; 03A5 _ 89. 45, F8
        jmp     ?_026                                   ; 03A8 _ EB, 2C

?_025:  mov     eax, dword [memman+10H]                 ; 03AA _ A1, 00000010(d)
        mov     edx, dword [ebp-8H]                     ; 03AF _ 8B. 55, F8
        shl     edx, 3                                  ; 03B2 _ C1. E2, 03
        lea     ecx, [eax+edx]                          ; 03B5 _ 8D. 0C 10
        mov     eax, dword [memman+10H]                 ; 03B8 _ A1, 00000010(d)
        mov     edx, dword [ebp-8H]                     ; 03BD _ 8B. 55, F8
        add     edx, 1                                  ; 03C0 _ 83. C2, 01
        shl     edx, 3                                  ; 03C3 _ C1. E2, 03
        add     eax, edx                                ; 03C6 _ 01. D0
        mov     edx, dword [eax+4H]                     ; 03C8 _ 8B. 50, 04
        mov     eax, dword [eax]                        ; 03CB _ 8B. 00
        mov     dword [ecx], eax                        ; 03CD _ 89. 01
        mov     dword [ecx+4H], edx                     ; 03CF _ 89. 51, 04
        add     dword [ebp-8H], 1                       ; 03D2 _ 83. 45, F8, 01
?_026:  mov     eax, dword [memman]                     ; 03D6 _ A1, 00000000(d)
        cmp     eax, dword [ebp-8H]                     ; 03DB _ 3B. 45, F8
        ja      ?_025                                   ; 03DE _ 77, CA
        mov     eax, dword [memman+10H]                 ; 03E0 _ A1, 00000010(d)
        mov     ecx, dword [ebp-8H]                     ; 03E5 _ 8B. 4D, F8
        mov     edx, dword [ebp-0CH]                    ; 03E8 _ 8B. 55, F4
        add     edx, ecx                                ; 03EB _ 01. CA
        shl     edx, 3                                  ; 03ED _ C1. E2, 03
        add     eax, edx                                ; 03F0 _ 01. D0
        mov     dword [eax], 0                          ; 03F2 _ C7. 00, 00000000
        mov     eax, dword [memman+10H]                 ; 03F8 _ A1, 00000010(d)
        mov     ecx, dword [ebp-8H]                     ; 03FD _ 8B. 4D, F8
        mov     edx, dword [ebp-0CH]                    ; 0400 _ 8B. 55, F4
        add     edx, ecx                                ; 0403 _ 01. CA
        shl     edx, 3                                  ; 0405 _ C1. E2, 03
        add     eax, edx                                ; 0408 _ 01. D0
        mov     dword [eax+4H], 0                       ; 040A _ C7. 40, 04, 00000000
        mov     eax, dword [memman]                     ; 0411 _ A1, 00000000(d)
        sub     eax, 1                                  ; 0416 _ 83. E8, 01
        mov     dword [memman], eax                     ; 0419 _ A3, 00000000(d)
?_027:  mov     eax, dword [ebp-4H]                     ; 041E _ 8B. 45, FC
        jmp     ?_030                                   ; 0421 _ EB, 12

?_028:  add     dword [ebp-0CH], 1                      ; 0423 _ 83. 45, F4, 01
?_029:  mov     eax, dword [memman+0CH]                 ; 0427 _ A1, 0000000C(d)
        cmp     eax, dword [ebp-0CH]                    ; 042C _ 3B. 45, F4
        ja      ?_024                                   ; 042F _ 0F 87, FFFFFEE7
?_030:  leave                                           ; 0435 _ C9
        ret                                             ; 0436 _ C3
; memman_alloc End of function

memman_free:; Function begin
        push    ebp                                     ; 0437 _ 55
        mov     ebp, esp                                ; 0438 _ 89. E5
        push    ebx                                     ; 043A _ 53
        sub     esp, 16                                 ; 043B _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 043E _ C7. 45, F4, 00000000
        jmp     ?_032                                   ; 0445 _ EB, 18

?_031:  mov     eax, dword [memman+10H]                 ; 0447 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 044C _ 8B. 55, F4
        shl     edx, 3                                  ; 044F _ C1. E2, 03
        add     eax, edx                                ; 0452 _ 01. D0
        mov     eax, dword [eax]                        ; 0454 _ 8B. 00
        cmp     eax, dword [ebp+8H]                     ; 0456 _ 3B. 45, 08
        ja      ?_033                                   ; 0459 _ 77, 10
        add     dword [ebp-0CH], 1                      ; 045B _ 83. 45, F4, 01
?_032:  mov     eax, dword [memman]                     ; 045F _ A1, 00000000(d)
        cmp     eax, dword [ebp-0CH]                    ; 0464 _ 3B. 45, F4
        jg      ?_031                                   ; 0467 _ 7F, DE
        jmp     ?_034                                   ; 0469 _ EB, 01

?_033:  nop                                             ; 046B _ 90
?_034:  cmp     dword [ebp-0CH], 0                      ; 046C _ 83. 7D, F4, 00
        jle     ?_036                                   ; 0470 _ 0F 8E, 000000E5
        mov     eax, dword [memman+10H]                 ; 0476 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 047B _ 8B. 55, F4
        add     edx, 536870911                          ; 047E _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 0484 _ C1. E2, 03
        add     eax, edx                                ; 0487 _ 01. D0
        mov     edx, dword [eax]                        ; 0489 _ 8B. 10
        mov     eax, dword [memman+10H]                 ; 048B _ A1, 00000010(d)
        mov     ecx, dword [ebp-0CH]                    ; 0490 _ 8B. 4D, F4
        add     ecx, 536870911                          ; 0493 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 0499 _ C1. E1, 03
        add     eax, ecx                                ; 049C _ 01. C8
        mov     eax, dword [eax+4H]                     ; 049E _ 8B. 40, 04
        add     eax, edx                                ; 04A1 _ 01. D0
        cmp     eax, dword [ebp+8H]                     ; 04A3 _ 3B. 45, 08
        jne     ?_036                                   ; 04A6 _ 0F 85, 000000AF
        mov     eax, dword [memman+10H]                 ; 04AC _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 04B1 _ 8B. 55, F4
        add     edx, 536870911                          ; 04B4 _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 04BA _ C1. E2, 03
        add     eax, edx                                ; 04BD _ 01. D0
        mov     edx, dword [memman+10H]                 ; 04BF _ 8B. 15, 00000010(d)
        mov     ecx, dword [ebp-0CH]                    ; 04C5 _ 8B. 4D, F4
        add     ecx, 536870911                          ; 04C8 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 04CE _ C1. E1, 03
        add     edx, ecx                                ; 04D1 _ 01. CA
        mov     ecx, dword [edx+4H]                     ; 04D3 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 04D6 _ 8B. 55, 0C
        add     edx, ecx                                ; 04D9 _ 01. CA
        mov     dword [eax+4H], edx                     ; 04DB _ 89. 50, 04
        mov     eax, dword [memman]                     ; 04DE _ A1, 00000000(d)
        cmp     eax, dword [ebp-0CH]                    ; 04E3 _ 3B. 45, F4
        jle     ?_035                                   ; 04E6 _ 7E, 69
        mov     edx, dword [ebp+8H]                     ; 04E8 _ 8B. 55, 08
        mov     eax, dword [ebp+0CH]                    ; 04EB _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 04EE _ 8D. 0C 02
        mov     eax, dword [memman+10H]                 ; 04F1 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 04F6 _ 8B. 55, F4
        shl     edx, 3                                  ; 04F9 _ C1. E2, 03
        add     eax, edx                                ; 04FC _ 01. D0
        mov     eax, dword [eax]                        ; 04FE _ 8B. 00
        cmp     ecx, eax                                ; 0500 _ 39. C1
        jnz     ?_035                                   ; 0502 _ 75, 4D
        mov     eax, dword [memman+10H]                 ; 0504 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0509 _ 8B. 55, F4
        add     edx, 536870911                          ; 050C _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 0512 _ C1. E2, 03
        add     eax, edx                                ; 0515 _ 01. D0
        mov     edx, dword [memman+10H]                 ; 0517 _ 8B. 15, 00000010(d)
        mov     ecx, dword [ebp-0CH]                    ; 051D _ 8B. 4D, F4
        add     ecx, 536870911                          ; 0520 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 0526 _ C1. E1, 03
        add     edx, ecx                                ; 0529 _ 01. CA
        mov     ecx, dword [edx+4H]                     ; 052B _ 8B. 4A, 04
        mov     edx, dword [memman+10H]                 ; 052E _ 8B. 15, 00000010(d)
        mov     ebx, dword [ebp-0CH]                    ; 0534 _ 8B. 5D, F4
        shl     ebx, 3                                  ; 0537 _ C1. E3, 03
        add     edx, ebx                                ; 053A _ 01. DA
        mov     edx, dword [edx+4H]                     ; 053C _ 8B. 52, 04
        add     edx, ecx                                ; 053F _ 01. CA
        mov     dword [eax+4H], edx                     ; 0541 _ 89. 50, 04
        mov     eax, dword [memman]                     ; 0544 _ A1, 00000000(d)
        sub     eax, 1                                  ; 0549 _ 83. E8, 01
        mov     dword [memman], eax                     ; 054C _ A3, 00000000(d)
?_035:  mov     eax, 0                                  ; 0551 _ B8, 00000000
        jmp     ?_042                                   ; 0556 _ E9, 0000012E

?_036:  mov     eax, dword [memman]                     ; 055B _ A1, 00000000(d)
        cmp     eax, dword [ebp-0CH]                    ; 0560 _ 3B. 45, F4
        jle     ?_037                                   ; 0563 _ 7E, 5E
        mov     edx, dword [ebp+8H]                     ; 0565 _ 8B. 55, 08
        mov     eax, dword [ebp+0CH]                    ; 0568 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 056B _ 8D. 0C 02
        mov     eax, dword [memman+10H]                 ; 056E _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0573 _ 8B. 55, F4
        shl     edx, 3                                  ; 0576 _ C1. E2, 03
        add     eax, edx                                ; 0579 _ 01. D0
        mov     eax, dword [eax]                        ; 057B _ 8B. 00
        cmp     ecx, eax                                ; 057D _ 39. C1
        jnz     ?_037                                   ; 057F _ 75, 42
        mov     eax, dword [memman+10H]                 ; 0581 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0586 _ 8B. 55, F4
        shl     edx, 3                                  ; 0589 _ C1. E2, 03
        add     edx, eax                                ; 058C _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 058E _ 8B. 45, 08
        mov     dword [edx], eax                        ; 0591 _ 89. 02
        mov     eax, dword [memman+10H]                 ; 0593 _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0598 _ 8B. 55, F4
        shl     edx, 3                                  ; 059B _ C1. E2, 03
        add     eax, edx                                ; 059E _ 01. D0
        mov     edx, dword [memman+10H]                 ; 05A0 _ 8B. 15, 00000010(d)
        mov     ecx, dword [ebp-0CH]                    ; 05A6 _ 8B. 4D, F4
        shl     ecx, 3                                  ; 05A9 _ C1. E1, 03
        add     edx, ecx                                ; 05AC _ 01. CA
        mov     ecx, dword [edx+4H]                     ; 05AE _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 05B1 _ 8B. 55, 0C
        add     edx, ecx                                ; 05B4 _ 01. CA
        mov     dword [eax+4H], edx                     ; 05B6 _ 89. 50, 04
        mov     eax, 0                                  ; 05B9 _ B8, 00000000
        jmp     ?_042                                   ; 05BE _ E9, 000000C6

?_037:  mov     eax, dword [memman]                     ; 05C3 _ A1, 00000000(d)
        cmp     eax, 1023                               ; 05C8 _ 3D, 000003FF
        jg      ?_041                                   ; 05CD _ 0F 8F, 00000093
        mov     eax, dword [memman]                     ; 05D3 _ A1, 00000000(d)
        mov     dword [ebp-8H], eax                     ; 05D8 _ 89. 45, F8
        jmp     ?_039                                   ; 05DB _ EB, 2F

?_038:  mov     eax, dword [memman+10H]                 ; 05DD _ A1, 00000010(d)
        mov     edx, dword [ebp-8H]                     ; 05E2 _ 8B. 55, F8
        shl     edx, 3                                  ; 05E5 _ C1. E2, 03
        lea     ecx, [eax+edx]                          ; 05E8 _ 8D. 0C 10
        mov     eax, dword [memman+10H]                 ; 05EB _ A1, 00000010(d)
        mov     edx, dword [ebp-8H]                     ; 05F0 _ 8B. 55, F8
        add     edx, 536870911                          ; 05F3 _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 05F9 _ C1. E2, 03
        add     eax, edx                                ; 05FC _ 01. D0
        mov     edx, dword [eax+4H]                     ; 05FE _ 8B. 50, 04
        mov     eax, dword [eax]                        ; 0601 _ 8B. 00
        mov     dword [ecx], eax                        ; 0603 _ 89. 01
        mov     dword [ecx+4H], edx                     ; 0605 _ 89. 51, 04
        sub     dword [ebp-8H], 1                       ; 0608 _ 83. 6D, F8, 01
?_039:  mov     eax, dword [ebp-8H]                     ; 060C _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 060F _ 3B. 45, F4
        jg      ?_038                                   ; 0612 _ 7F, C9
        mov     eax, dword [memman]                     ; 0614 _ A1, 00000000(d)
        add     eax, 1                                  ; 0619 _ 83. C0, 01
        mov     dword [memman], eax                     ; 061C _ A3, 00000000(d)
        mov     edx, dword [memman+0CH]                 ; 0621 _ 8B. 15, 0000000C(d)
        mov     eax, dword [memman]                     ; 0627 _ A1, 00000000(d)
        cmp     edx, eax                                ; 062C _ 39. C2
        jge     ?_040                                   ; 062E _ 7D, 0A
        mov     eax, dword [memman]                     ; 0630 _ A1, 00000000(d)
        mov     dword [memman+0CH], eax                 ; 0635 _ A3, 0000000C(d)
?_040:  mov     eax, dword [memman+10H]                 ; 063A _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 063F _ 8B. 55, F4
        shl     edx, 3                                  ; 0642 _ C1. E2, 03
        add     edx, eax                                ; 0645 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 0647 _ 8B. 45, 08
        mov     dword [edx], eax                        ; 064A _ 89. 02
        mov     eax, dword [memman+10H]                 ; 064C _ A1, 00000010(d)
        mov     edx, dword [ebp-0CH]                    ; 0651 _ 8B. 55, F4
        shl     edx, 3                                  ; 0654 _ C1. E2, 03
        add     edx, eax                                ; 0657 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0659 _ 8B. 45, 0C
        mov     dword [edx+4H], eax                     ; 065C _ 89. 42, 04
        mov     eax, 0                                  ; 065F _ B8, 00000000
        jmp     ?_042                                   ; 0664 _ EB, 23

?_041:  mov     eax, dword [memman+8H]                  ; 0666 _ A1, 00000008(d)
        add     eax, 1                                  ; 066B _ 83. C0, 01
        mov     dword [memman+8H], eax                  ; 066E _ A3, 00000008(d)
        mov     eax, dword [memman+4H]                  ; 0673 _ A1, 00000004(d)
        mov     edx, eax                                ; 0678 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 067A _ 8B. 45, 0C
        add     eax, edx                                ; 067D _ 01. D0
        mov     dword [memman+4H], eax                  ; 067F _ A3, 00000004(d)
        mov     eax, 4294967295                         ; 0684 _ B8, FFFFFFFF
?_042:  add     esp, 16                                 ; 0689 _ 83. C4, 10
        pop     ebx                                     ; 068C _ 5B
        pop     ebp                                     ; 068D _ 5D
        ret                                             ; 068E _ C3
; memman_free End of function

malloc_4k:; Function begin
        push    ebp                                     ; 068F _ 55
        mov     ebp, esp                                ; 0690 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0692 _ 8B. 45, 08
        add     eax, 4095                               ; 0695 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 069A _ 25, FFFFF000
        mov     dword [ebp+8H], eax                     ; 069F _ 89. 45, 08
        mov     eax, dword [ebp+8H]                     ; 06A2 _ 8B. 45, 08
        push    eax                                     ; 06A5 _ 50
        call    memman_alloc                            ; 06A6 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 06AB _ 83. C4, 04
        leave                                           ; 06AE _ C9
        ret                                             ; 06AF _ C3
; malloc_4k End of function

malloc_8:; Function begin
        push    ebp                                     ; 06B0 _ 55
        mov     ebp, esp                                ; 06B1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 06B3 _ 8B. 45, 08
        push    eax                                     ; 06B6 _ 50
        call    memman_alloc                            ; 06B7 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 06BC _ 83. C4, 04
        leave                                           ; 06BF _ C9
        ret                                             ; 06C0 _ C3
; malloc_8 End of function

free_8: ; Function begin
        push    ebp                                     ; 06C1 _ 55
        mov     ebp, esp                                ; 06C2 _ 89. E5
        push    dword [ebp+0CH]                         ; 06C4 _ FF. 75, 0C
        push    0                                       ; 06C7 _ 6A, 00
        push    dword [ebp+8H]                          ; 06C9 _ FF. 75, 08
        call    memset_8                                ; 06CC _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 06D1 _ 83. C4, 0C
        mov     eax, dword [ebp+0CH]                    ; 06D4 _ 8B. 45, 0C
        push    eax                                     ; 06D7 _ 50
        push    dword [ebp+8H]                          ; 06D8 _ FF. 75, 08
        call    memman_free                             ; 06DB _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 06E0 _ 83. C4, 08
        leave                                           ; 06E3 _ C9
        ret                                             ; 06E4 _ C3
; free_8 End of function

set_pict:; Function begin
        push    ebp                                     ; 06E5 _ 55
        mov     ebp, esp                                ; 06E6 _ 89. E5
        sub     esp, 24                                 ; 06E8 _ 83. EC, 18
        call    io_load_eflags                          ; 06EB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 06F0 _ 89. 45, F4
        call    io_cli                                  ; 06F3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 06F8 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 06FB _ FF. 75, 14
        push    968                                     ; 06FE _ 68, 000003C8
        call    io_out8                                 ; 0703 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0708 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 070B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 070E _ 89. 45, F0
        jmp     ?_044                                   ; 0711 _ EB, 65

?_043:  mov     eax, dword [ebp+10H]                    ; 0713 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0716 _ 0F B6. 00
        shr     al, 2                                   ; 0719 _ C0. E8, 02
        movzx   eax, al                                 ; 071C _ 0F B6. C0
        sub     esp, 8                                  ; 071F _ 83. EC, 08
        push    eax                                     ; 0722 _ 50
        push    969                                     ; 0723 _ 68, 000003C9
        call    io_out8                                 ; 0728 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 072D _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0730 _ 8B. 45, 10
        add     eax, 1                                  ; 0733 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0736 _ 0F B6. 00
        shr     al, 2                                   ; 0739 _ C0. E8, 02
        movzx   eax, al                                 ; 073C _ 0F B6. C0
        sub     esp, 8                                  ; 073F _ 83. EC, 08
        push    eax                                     ; 0742 _ 50
        push    969                                     ; 0743 _ 68, 000003C9
        call    io_out8                                 ; 0748 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 074D _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0750 _ 8B. 45, 10
        add     eax, 2                                  ; 0753 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0756 _ 0F B6. 00
        shr     al, 2                                   ; 0759 _ C0. E8, 02
        movzx   eax, al                                 ; 075C _ 0F B6. C0
        sub     esp, 8                                  ; 075F _ 83. EC, 08
        push    eax                                     ; 0762 _ 50
        push    969                                     ; 0763 _ 68, 000003C9
        call    io_out8                                 ; 0768 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 076D _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0770 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0774 _ 83. 45, F0, 01
?_044:  mov     eax, dword [ebp-10H]                    ; 0778 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 077B _ 3B. 45, 0C
        jl      ?_043                                   ; 077E _ 7C, 93
        sub     esp, 12                                 ; 0780 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0783 _ FF. 75, F4
        call    io_store_eflags                         ; 0786 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 078B _ 83. C4, 10
        nop                                             ; 078E _ 90
        leave                                           ; 078F _ C9
        ret                                             ; 0790 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 0791 _ 55
        mov     ebp, esp                                ; 0792 _ 89. E5
        sub     esp, 8                                  ; 0794 _ 83. EC, 08
        push    0                                       ; 0797 _ 6A, 00
        push    pict                                    ; 0799 _ 68, 00000000(d)
        push    16                                      ; 079E _ 6A, 10
        push    0                                       ; 07A0 _ 6A, 00
        call    set_pict                                ; 07A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07A7 _ 83. C4, 10
        nop                                             ; 07AA _ 90
        leave                                           ; 07AB _ C9
        ret                                             ; 07AC _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 07AD _ 55
        mov     ebp, esp                                ; 07AE _ 89. E5
        sub     esp, 20                                 ; 07B0 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07B3 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07B6 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07B9 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 07BC _ 89. 45, FC
        jmp     ?_048                                   ; 07BF _ EB, 33

?_045:  mov     eax, dword [ebp+14H]                    ; 07C1 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 07C4 _ 89. 45, F8
        jmp     ?_047                                   ; 07C7 _ EB, 1F

?_046:  mov     eax, dword [ebp-4H]                     ; 07C9 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 07CC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07D0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07D2 _ 8B. 45, F8
        add     eax, edx                                ; 07D5 _ 01. D0
        mov     edx, eax                                ; 07D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07D9 _ 8B. 45, 08
        add     edx, eax                                ; 07DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07E2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 07E4 _ 83. 45, F8, 01
?_047:  mov     eax, dword [ebp-8H]                     ; 07E8 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 07EB _ 3B. 45, 1C
        jle     ?_046                                   ; 07EE _ 7E, D9
        add     dword [ebp-4H], 1                       ; 07F0 _ 83. 45, FC, 01
?_048:  mov     eax, dword [ebp-4H]                     ; 07F4 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 07F7 _ 3B. 45, 20
        jle     ?_045                                   ; 07FA _ 7E, C5
        nop                                             ; 07FC _ 90
        leave                                           ; 07FD _ C9
        ret                                             ; 07FE _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 07FF _ 55
        mov     ebp, esp                                ; 0800 _ 89. E5
        sub     esp, 20                                 ; 0802 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0805 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0808 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 080B _ 0F BE. 45, EC
        sub     eax, 97                                 ; 080F _ 83. E8, 61
        shl     eax, 4                                  ; 0812 _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 0815 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 081A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 081D _ 8B. 45, FC
        leave                                           ; 0820 _ C9
        ret                                             ; 0821 _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 0822 _ 55
        mov     ebp, esp                                ; 0823 _ 89. E5
        sub     esp, 20                                 ; 0825 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0828 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 082B _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 082E _ 0F BE. 45, EC
        sub     eax, 48                                 ; 0832 _ 83. E8, 30
        shl     eax, 4                                  ; 0835 _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0838 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 083D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0840 _ 8B. 45, FC
        leave                                           ; 0843 _ C9
        ret                                             ; 0844 _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 0845 _ 55
        mov     ebp, esp                                ; 0846 _ 89. E5
        sub     esp, 20                                 ; 0848 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 084B _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 084E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0851 _ C7. 45, FC, 00000000
        jmp     ?_058                                   ; 0858 _ E9, 0000016C

?_049:  mov     edx, dword [ebp-4H]                     ; 085D _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0860 _ 8B. 45, 1C
        add     eax, edx                                ; 0863 _ 01. D0
        movzx   eax, byte [eax]                         ; 0865 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0868 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 086B _ 80. 7D, FB, 00
        jns     ?_050                                   ; 086F _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0871 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0874 _ 8B. 45, FC
        add     eax, edx                                ; 0877 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0879 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 087D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 087F _ 8B. 45, 10
        add     eax, edx                                ; 0882 _ 01. D0
        mov     edx, eax                                ; 0884 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0886 _ 8B. 45, 08
        add     edx, eax                                ; 0889 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 088B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 088F _ 88. 02
?_050:  movsx   eax, byte [ebp-5H]                      ; 0891 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0895 _ 83. E0, 40
        test    eax, eax                                ; 0898 _ 85. C0
        jz      ?_051                                   ; 089A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 089C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 089F _ 8B. 45, FC
        add     eax, edx                                ; 08A2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08A4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08A8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08AA _ 8B. 45, 10
        add     eax, edx                                ; 08AD _ 01. D0
        lea     edx, [eax+1H]                           ; 08AF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 08B2 _ 8B. 45, 08
        add     edx, eax                                ; 08B5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08B7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08BB _ 88. 02
?_051:  movsx   eax, byte [ebp-5H]                      ; 08BD _ 0F BE. 45, FB
        and     eax, 20H                                ; 08C1 _ 83. E0, 20
        test    eax, eax                                ; 08C4 _ 85. C0
        jz      ?_052                                   ; 08C6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08C8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08CB _ 8B. 45, FC
        add     eax, edx                                ; 08CE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08D0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D6 _ 8B. 45, 10
        add     eax, edx                                ; 08D9 _ 01. D0
        lea     edx, [eax+2H]                           ; 08DB _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08DE _ 8B. 45, 08
        add     edx, eax                                ; 08E1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08E3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E7 _ 88. 02
?_052:  movsx   eax, byte [ebp-5H]                      ; 08E9 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08ED _ 83. E0, 10
        test    eax, eax                                ; 08F0 _ 85. C0
        jz      ?_053                                   ; 08F2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08F4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F7 _ 8B. 45, FC
        add     eax, edx                                ; 08FA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08FC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0900 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0902 _ 8B. 45, 10
        add     eax, edx                                ; 0905 _ 01. D0
        lea     edx, [eax+3H]                           ; 0907 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 090A _ 8B. 45, 08
        add     edx, eax                                ; 090D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 090F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0913 _ 88. 02
?_053:  movsx   eax, byte [ebp-5H]                      ; 0915 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0919 _ 83. E0, 08
        test    eax, eax                                ; 091C _ 85. C0
        jz      ?_054                                   ; 091E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0920 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0923 _ 8B. 45, FC
        add     eax, edx                                ; 0926 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0928 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 092C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 092E _ 8B. 45, 10
        add     eax, edx                                ; 0931 _ 01. D0
        lea     edx, [eax+4H]                           ; 0933 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0936 _ 8B. 45, 08
        add     edx, eax                                ; 0939 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 093B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 093F _ 88. 02
?_054:  movsx   eax, byte [ebp-5H]                      ; 0941 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0945 _ 83. E0, 04
        test    eax, eax                                ; 0948 _ 85. C0
        jz      ?_055                                   ; 094A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 094C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 094F _ 8B. 45, FC
        add     eax, edx                                ; 0952 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0954 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0958 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 095A _ 8B. 45, 10
        add     eax, edx                                ; 095D _ 01. D0
        lea     edx, [eax+5H]                           ; 095F _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0962 _ 8B. 45, 08
        add     edx, eax                                ; 0965 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0967 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 096B _ 88. 02
?_055:  movsx   eax, byte [ebp-5H]                      ; 096D _ 0F BE. 45, FB
        and     eax, 02H                                ; 0971 _ 83. E0, 02
        test    eax, eax                                ; 0974 _ 85. C0
        jz      ?_056                                   ; 0976 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0978 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 097B _ 8B. 45, FC
        add     eax, edx                                ; 097E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0980 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0984 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0986 _ 8B. 45, 10
        add     eax, edx                                ; 0989 _ 01. D0
        lea     edx, [eax+6H]                           ; 098B _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 098E _ 8B. 45, 08
        add     edx, eax                                ; 0991 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0993 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0997 _ 88. 02
?_056:  movsx   eax, byte [ebp-5H]                      ; 0999 _ 0F BE. 45, FB
        and     eax, 01H                                ; 099D _ 83. E0, 01
        test    eax, eax                                ; 09A0 _ 85. C0
        jz      ?_057                                   ; 09A2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09A4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09A7 _ 8B. 45, FC
        add     eax, edx                                ; 09AA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09AC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09B0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09B2 _ 8B. 45, 10
        add     eax, edx                                ; 09B5 _ 01. D0
        lea     edx, [eax+7H]                           ; 09B7 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 09BA _ 8B. 45, 08
        add     edx, eax                                ; 09BD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09BF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09C3 _ 88. 02
?_057:  add     dword [ebp-4H], 1                       ; 09C5 _ 83. 45, FC, 01
?_058:  cmp     dword [ebp-4H], 15                      ; 09C9 _ 83. 7D, FC, 0F
        jle     ?_049                                   ; 09CD _ 0F 8E, FFFFFE8A
        nop                                             ; 09D3 _ 90
        leave                                           ; 09D4 _ C9
        ret                                             ; 09D5 _ C3
; showFont8 End of function

putChar:; Function begin
        push    ebp                                     ; 09D6 _ 55
        mov     ebp, esp                                ; 09D7 _ 89. E5
        sub     esp, 4                                  ; 09D9 _ 83. EC, 04
        mov     eax, dword [ebp+1CH]                    ; 09DC _ 8B. 45, 1C
        mov     byte [ebp-4H], al                       ; 09DF _ 88. 45, FC
        cmp     byte [ebp-4H], 57                       ; 09E2 _ 80. 7D, FC, 39
        ja      ?_059                                   ; 09E6 _ 77, 39
        cmp     byte [ebp-4H], 47                       ; 09E8 _ 80. 7D, FC, 2F
        jbe     ?_059                                   ; 09EC _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 09EE _ 0F B6. 45, FC
        movsx   eax, al                                 ; 09F2 _ 0F BE. C0
        push    eax                                     ; 09F5 _ 50
        call    getAddrOffsetNumber                     ; 09F6 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09FB _ 83. C4, 04
        mov     edx, eax                                ; 09FE _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0A00 _ 8B. 45, 18
        movsx   eax, al                                 ; 0A03 _ 0F BE. C0
        push    edx                                     ; 0A06 _ 52
        push    eax                                     ; 0A07 _ 50
        push    dword [ebp+14H]                         ; 0A08 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A0B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A0E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A11 _ FF. 75, 08
        call    showFont8                               ; 0A14 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A19 _ 83. C4, 18
        jmp     ?_065                                   ; 0A1C _ E9, 00000121

?_059:  cmp     byte [ebp-4H], 122                      ; 0A21 _ 80. 7D, FC, 7A
        ja      ?_060                                   ; 0A25 _ 77, 39
        cmp     byte [ebp-4H], 96                       ; 0A27 _ 80. 7D, FC, 60
        jbe     ?_060                                   ; 0A2B _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0A2D _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0A31 _ 0F BE. C0
        push    eax                                     ; 0A34 _ 50
        call    getAddrOffsetAlpha                      ; 0A35 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0A3A _ 83. C4, 04
        mov     edx, eax                                ; 0A3D _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0A3F _ 8B. 45, 18
        movsx   eax, al                                 ; 0A42 _ 0F BE. C0
        push    edx                                     ; 0A45 _ 52
        push    eax                                     ; 0A46 _ 50
        push    dword [ebp+14H]                         ; 0A47 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A4A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A4D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A50 _ FF. 75, 08
        call    showFont8                               ; 0A53 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A58 _ 83. C4, 18
        jmp     ?_065                                   ; 0A5B _ E9, 000000E2

?_060:  cmp     byte [ebp-4H], 90                       ; 0A60 _ 80. 7D, FC, 5A
        ja      ?_061                                   ; 0A64 _ 77, 3C
        cmp     byte [ebp-4H], 64                       ; 0A66 _ 80. 7D, FC, 40
        jbe     ?_061                                   ; 0A6A _ 76, 36
        movzx   eax, byte [ebp-4H]                      ; 0A6C _ 0F B6. 45, FC
        add     eax, 32                                 ; 0A70 _ 83. C0, 20
        movsx   eax, al                                 ; 0A73 _ 0F BE. C0
        push    eax                                     ; 0A76 _ 50
        call    getAddrOffsetAlpha                      ; 0A77 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0A7C _ 83. C4, 04
        mov     edx, eax                                ; 0A7F _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0A81 _ 8B. 45, 18
        movsx   eax, al                                 ; 0A84 _ 0F BE. C0
        push    edx                                     ; 0A87 _ 52
        push    eax                                     ; 0A88 _ 50
        push    dword [ebp+14H]                         ; 0A89 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A8C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A8F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A92 _ FF. 75, 08
        call    showFont8                               ; 0A95 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A9A _ 83. C4, 18
        jmp     ?_065                                   ; 0A9D _ E9, 000000A0

?_061:  cmp     byte [ebp-4H], 32                       ; 0AA2 _ 80. 7D, FC, 20
        jnz     ?_062                                   ; 0AA6 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0AA8 _ 8B. 45, 18
        movsx   eax, al                                 ; 0AAB _ 0F BE. C0
        push    vsFont_EMPTY                            ; 0AAE _ 68, 00000000(d)
        push    eax                                     ; 0AB3 _ 50
        push    dword [ebp+14H]                         ; 0AB4 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0AB7 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0ABA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0ABD _ FF. 75, 08
        call    showFont8                               ; 0AC0 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0AC5 _ 83. C4, 18
        jmp     ?_065                                   ; 0AC8 _ EB, 78

?_062:  cmp     byte [ebp-4H], 63                       ; 0ACA _ 80. 7D, FC, 3F
        jnz     ?_063                                   ; 0ACE _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0AD0 _ 8B. 45, 18
        movsx   eax, al                                 ; 0AD3 _ 0F BE. C0
        push    vsFont_ASK                              ; 0AD6 _ 68, 00000000(d)
        push    eax                                     ; 0ADB _ 50
        push    dword [ebp+14H]                         ; 0ADC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0ADF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0AE2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AE5 _ FF. 75, 08
        call    showFont8                               ; 0AE8 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0AED _ 83. C4, 18
        jmp     ?_065                                   ; 0AF0 _ EB, 50

?_063:  cmp     byte [ebp-4H], 95                       ; 0AF2 _ 80. 7D, FC, 5F
        jnz     ?_064                                   ; 0AF6 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0AF8 _ 8B. 45, 18
        movsx   eax, al                                 ; 0AFB _ 0F BE. C0
        push    vsFont__                                ; 0AFE _ 68, 00000000(d)
        push    eax                                     ; 0B03 _ 50
        push    dword [ebp+14H]                         ; 0B04 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B07 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0B0A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B0D _ FF. 75, 08
        call    showFont8                               ; 0B10 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B15 _ 83. C4, 18
        jmp     ?_065                                   ; 0B18 _ EB, 28

?_064:  cmp     byte [ebp-4H], 58                       ; 0B1A _ 80. 7D, FC, 3A
        jnz     ?_065                                   ; 0B1E _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0B20 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B23 _ 0F BE. C0
        push    vsFont_colon                            ; 0B26 _ 68, 00000000(d)
        push    eax                                     ; 0B2B _ 50
        push    dword [ebp+14H]                         ; 0B2C _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B2F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0B32 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B35 _ FF. 75, 08
        call    showFont8                               ; 0B38 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B3D _ 83. C4, 18
        jmp     ?_065                                   ; 0B40 _ EB, 00

?_065:  nop                                             ; 0B42 _ 90
        leave                                           ; 0B43 _ C9
        ret                                             ; 0B44 _ C3
; putChar End of function

putStr: ; Function begin
        push    ebp                                     ; 0B45 _ 55
        mov     ebp, esp                                ; 0B46 _ 89. E5
        sub     esp, 16                                 ; 0B48 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0B4B _ C7. 45, FC, 00000000
        jmp     ?_067                                   ; 0B52 _ EB, 36

?_066:  mov     edx, dword [ebp-4H]                     ; 0B54 _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 0B57 _ 8B. 45, 20
        add     eax, edx                                ; 0B5A _ 01. D0
        movzx   eax, byte [eax]                         ; 0B5C _ 0F B6. 00
        movzx   eax, al                                 ; 0B5F _ 0F B6. C0
        mov     edx, dword [ebp+18H]                    ; 0B62 _ 8B. 55, 18
        mov     ecx, edx                                ; 0B65 _ 89. D1
        imul    ecx, dword [ebp-4H]                     ; 0B67 _ 0F AF. 4D, FC
        mov     edx, dword [ebp+10H]                    ; 0B6B _ 8B. 55, 10
        add     edx, ecx                                ; 0B6E _ 01. CA
        push    eax                                     ; 0B70 _ 50
        push    dword [ebp+1CH]                         ; 0B71 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 0B74 _ FF. 75, 14
        push    edx                                     ; 0B77 _ 52
        push    dword [ebp+0CH]                         ; 0B78 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B7B _ FF. 75, 08
        call    putChar                                 ; 0B7E _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B83 _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 0B86 _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp-4H]                     ; 0B8A _ 8B. 45, FC
        cmp     eax, dword [ebp+24H]                    ; 0B8D _ 3B. 45, 24
        jl      ?_066                                   ; 0B90 _ 7C, C2
        nop                                             ; 0B92 _ 90
        leave                                           ; 0B93 _ C9
        ret                                             ; 0B94 _ C3
; putStr End of function

charToPictColor:; Function begin
        push    ebp                                     ; 0B95 _ 55
        mov     ebp, esp                                ; 0B96 _ 89. E5
        sub     esp, 4                                  ; 0B98 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0B9B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0B9E _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0BA1 _ 80. 7D, FC, 2A
        jnz     ?_068                                   ; 0BA5 _ 75, 0A
        mov     eax, 0                                  ; 0BA7 _ B8, 00000000
        jmp     ?_083                                   ; 0BAC _ E9, 000000D2

?_068:  cmp     byte [ebp-4H], 114                      ; 0BB1 _ 80. 7D, FC, 72
        jnz     ?_069                                   ; 0BB5 _ 75, 0A
        mov     eax, 1                                  ; 0BB7 _ B8, 00000001
        jmp     ?_083                                   ; 0BBC _ E9, 000000C2

?_069:  cmp     byte [ebp-4H], 103                      ; 0BC1 _ 80. 7D, FC, 67
        jnz     ?_070                                   ; 0BC5 _ 75, 0A
        mov     eax, 2                                  ; 0BC7 _ B8, 00000002
        jmp     ?_083                                   ; 0BCC _ E9, 000000B2

?_070:  cmp     byte [ebp-4H], 121                      ; 0BD1 _ 80. 7D, FC, 79
        jnz     ?_071                                   ; 0BD5 _ 75, 0A
        mov     eax, 3                                  ; 0BD7 _ B8, 00000003
        jmp     ?_083                                   ; 0BDC _ E9, 000000A2

?_071:  cmp     byte [ebp-4H], 98                       ; 0BE1 _ 80. 7D, FC, 62
        jnz     ?_072                                   ; 0BE5 _ 75, 0A
        mov     eax, 4                                  ; 0BE7 _ B8, 00000004
        jmp     ?_083                                   ; 0BEC _ E9, 00000092

?_072:  cmp     byte [ebp-4H], 112                      ; 0BF1 _ 80. 7D, FC, 70
        jnz     ?_073                                   ; 0BF5 _ 75, 0A
        mov     eax, 5                                  ; 0BF7 _ B8, 00000005
        jmp     ?_083                                   ; 0BFC _ E9, 00000082

?_073:  cmp     byte [ebp-4H], 108                      ; 0C01 _ 80. 7D, FC, 6C
        jnz     ?_074                                   ; 0C05 _ 75, 07
        mov     eax, 6                                  ; 0C07 _ B8, 00000006
        jmp     ?_083                                   ; 0C0C _ EB, 75

?_074:  cmp     byte [ebp-4H], 119                      ; 0C0E _ 80. 7D, FC, 77
        jnz     ?_075                                   ; 0C12 _ 75, 07
        mov     eax, 7                                  ; 0C14 _ B8, 00000007
        jmp     ?_083                                   ; 0C19 _ EB, 68

?_075:  cmp     byte [ebp-4H], 45                       ; 0C1B _ 80. 7D, FC, 2D
        jnz     ?_076                                   ; 0C1F _ 75, 07
        mov     eax, 8                                  ; 0C21 _ B8, 00000008
        jmp     ?_083                                   ; 0C26 _ EB, 5B

?_076:  cmp     byte [ebp-4H], 82                       ; 0C28 _ 80. 7D, FC, 52
        jnz     ?_077                                   ; 0C2C _ 75, 07
        mov     eax, 9                                  ; 0C2E _ B8, 00000009
        jmp     ?_083                                   ; 0C33 _ EB, 4E

?_077:  cmp     byte [ebp-4H], 71                       ; 0C35 _ 80. 7D, FC, 47
        jnz     ?_078                                   ; 0C39 _ 75, 07
        mov     eax, 10                                 ; 0C3B _ B8, 0000000A
        jmp     ?_083                                   ; 0C40 _ EB, 41

?_078:  cmp     byte [ebp-4H], 89                       ; 0C42 _ 80. 7D, FC, 59
        jnz     ?_079                                   ; 0C46 _ 75, 07
        mov     eax, 11                                 ; 0C48 _ B8, 0000000B
        jmp     ?_083                                   ; 0C4D _ EB, 34

?_079:  cmp     byte [ebp-4H], 66                       ; 0C4F _ 80. 7D, FC, 42
        jnz     ?_080                                   ; 0C53 _ 75, 07
        mov     eax, 12                                 ; 0C55 _ B8, 0000000C
        jmp     ?_083                                   ; 0C5A _ EB, 27

?_080:  cmp     byte [ebp-4H], 80                       ; 0C5C _ 80. 7D, FC, 50
        jnz     ?_081                                   ; 0C60 _ 75, 07
        mov     eax, 13                                 ; 0C62 _ B8, 0000000D
        jmp     ?_083                                   ; 0C67 _ EB, 1A

?_081:  cmp     byte [ebp-4H], 115                      ; 0C69 _ 80. 7D, FC, 73
        jnz     ?_082                                   ; 0C6D _ 75, 07
        mov     eax, 14                                 ; 0C6F _ B8, 0000000E
        jmp     ?_083                                   ; 0C74 _ EB, 0D

?_082:  cmp     byte [ebp-4H], 61                       ; 0C76 _ 80. 7D, FC, 3D
        jnz     ?_083                                   ; 0C7A _ 75, 07
        mov     eax, 15                                 ; 0C7C _ B8, 0000000F
        jmp     ?_083                                   ; 0C81 _ EB, 00

?_083:  leave                                           ; 0C83 _ C9
        ret                                             ; 0C84 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 0C85 _ 55
        mov     ebp, esp                                ; 0C86 _ 89. E5
        push    ebx                                     ; 0C88 _ 53
        sub     esp, 16                                 ; 0C89 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 0C8C _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0C93 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 0C9A _ C7. 45, F8, 00000000
?_084:  mov     edx, dword [ebp-8H]                     ; 0CA1 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0CA4 _ 8B. 45, 18
        add     eax, edx                                ; 0CA7 _ 01. D0
        movzx   eax, byte [eax]                         ; 0CA9 _ 0F B6. 00
        test    al, al                                  ; 0CAC _ 84. C0
        jnz     ?_085                                   ; 0CAE _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0CB0 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0CB3 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0CB6 _ 8B. 45, 18
        add     eax, edx                                ; 0CB9 _ 01. D0
        movzx   eax, byte [eax]                         ; 0CBB _ 0F B6. 00
        test    al, al                                  ; 0CBE _ 84. C0
        jz      ?_088                                   ; 0CC0 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0CC2 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0CC6 _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 0CCD _ EB, 4C

?_085:  mov     edx, dword [ebp-8H]                     ; 0CCF _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0CD2 _ 8B. 45, 18
        add     eax, edx                                ; 0CD5 _ 01. D0
        movzx   eax, byte [eax]                         ; 0CD7 _ 0F B6. 00
        cmp     al, 46                                  ; 0CDA _ 3C, 2E
        jz      ?_086                                   ; 0CDC _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0CDE _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 0CE1 _ 8B. 45, F0
        add     eax, edx                                ; 0CE4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0CE6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0CEA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0CEC _ 8B. 45, 10
        add     edx, eax                                ; 0CEF _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 0CF1 _ 8B. 45, F4
        add     eax, edx                                ; 0CF4 _ 01. D0
        mov     edx, eax                                ; 0CF6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CF8 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0CFB _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0CFE _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0D01 _ 8B. 45, 18
        add     eax, edx                                ; 0D04 _ 01. D0
        movzx   eax, byte [eax]                         ; 0D06 _ 0F B6. 00
        movsx   eax, al                                 ; 0D09 _ 0F BE. C0
        push    eax                                     ; 0D0C _ 50
        call    charToPictColor                         ; 0D0D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0D12 _ 83. C4, 04
        mov     byte [ebx], al                          ; 0D15 _ 88. 03
?_086:  add     dword [ebp-0CH], 1                      ; 0D17 _ 83. 45, F4, 01
?_087:  add     dword [ebp-8H], 1                       ; 0D1B _ 83. 45, F8, 01
        jmp     ?_084                                   ; 0D1F _ EB, 80

?_088:  nop                                             ; 0D21 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0D22 _ 8B. 5D, FC
        leave                                           ; 0D25 _ C9
        ret                                             ; 0D26 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0D27 _ 55
        mov     ebp, esp                                ; 0D28 _ 89. E5
        sub     esp, 16                                 ; 0D2A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0D2D _ C7. 45, FC, 00000000
        jmp     ?_090                                   ; 0D34 _ EB, 11

?_089:  mov     edx, dword [ebp-4H]                     ; 0D36 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0D39 _ 8B. 45, 08
        add     eax, edx                                ; 0D3C _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0D3E _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0D41 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0D43 _ 83. 45, FC, 01
?_090:  cmp     dword [ebp-4H], 65534                   ; 0D47 _ 81. 7D, FC, 0000FFFE
        jle     ?_089                                   ; 0D4E _ 7E, E6
        nop                                             ; 0D50 _ 90
        leave                                           ; 0D51 _ C9
        ret                                             ; 0D52 _ C3
; fillAll End of function

initCursor:; Function begin
        push    ebp                                     ; 0D53 _ 55
        mov     ebp, esp                                ; 0D54 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D56 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0D59 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D5C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0D5F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D61 _ 8B. 45, 08
        mov     edx, dword [eax+14H]                    ; 0D64 _ 8B. 50, 14
        mov     eax, dword [ebp+8H]                     ; 0D67 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0D6A _ 89. 50, 04
        nop                                             ; 0D6D _ 90
        pop     ebp                                     ; 0D6E _ 5D
        ret                                             ; 0D6F _ C3
; initCursor End of function

clear:  ; Function begin
        push    ebp                                     ; 0D70 _ 55
        mov     ebp, esp                                ; 0D71 _ 89. E5
        sub     esp, 16                                 ; 0D73 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0D76 _ C7. 45, FC, 00000000
        jmp     ?_092                                   ; 0D7D _ EB, 13

?_091:  mov     eax, dword [ebp+8H]                     ; 0D7F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D82 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 0D84 _ 8B. 45, FC
        add     eax, edx                                ; 0D87 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0D89 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0D8C _ 88. 10
        add     dword [ebp-4H], 1                       ; 0D8E _ 83. 45, FC, 01
?_092:  cmp     dword [ebp-4H], 65534                   ; 0D92 _ 81. 7D, FC, 0000FFFE
        jle     ?_091                                   ; 0D99 _ 7E, E4
        nop                                             ; 0D9B _ 90
        leave                                           ; 0D9C _ C9
        ret                                             ; 0D9D _ C3
; clear End of function

Println:; Function begin
        push    ebp                                     ; 0D9E _ 55
        mov     ebp, esp                                ; 0D9F _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0DA1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0DA4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0DA7 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0DAA _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0DAC _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DAF _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DB2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0DB5 _ 8B. 40, 0C
        add     edx, eax                                ; 0DB8 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0DBA _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0DBD _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DC0 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DC3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DC6 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0DC9 _ 0F B7. 40, 06
        cwde                                            ; 0DCD _ 98
        cmp     edx, eax                                ; 0DCE _ 39. C2
        jl      ?_093                                   ; 0DD0 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0DD2 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0DD5 _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0DD8 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0DDB _ 89. 50, 04
?_093:  nop                                             ; 0DDE _ 90
        pop     ebp                                     ; 0DDF _ 5D
        ret                                             ; 0DE0 _ C3
; Println End of function

PrintlnMult:; Function begin
        push    ebp                                     ; 0DE1 _ 55
        mov     ebp, esp                                ; 0DE2 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0DE4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0DE7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0DEA _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0DED _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0DEF _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DF2 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DF5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0DF8 _ 8B. 40, 0C
        imul    eax, dword [ebp+10H]                    ; 0DFB _ 0F AF. 45, 10
        add     edx, eax                                ; 0DFF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0E01 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0E04 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0E07 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0E0A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E0D _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0E10 _ 0F B7. 40, 06
        cwde                                            ; 0E14 _ 98
        cmp     edx, eax                                ; 0E15 _ 39. C2
        jl      ?_094                                   ; 0E17 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0E19 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0E1C _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0E1F _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0E22 _ 89. 50, 04
?_094:  nop                                             ; 0E25 _ 90
        pop     ebp                                     ; 0E26 _ 5D
        ret                                             ; 0E27 _ C3
; PrintlnMult End of function

Printf: ; Function begin
        push    ebp                                     ; 0E28 _ 55
        mov     ebp, esp                                ; 0E29 _ 89. E5
        push    ebx                                     ; 0E2B _ 53
        sub     esp, 16                                 ; 0E2C _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 0E2F _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0E32 _ 0F B7. 40, 04
        cwde                                            ; 0E36 _ 98
        mov     dword [ebp-14H], eax                    ; 0E37 _ 89. 45, EC
        mov     eax, dword [ebp+0CH]                    ; 0E3A _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0E3D _ 0F B7. 40, 06
        cwde                                            ; 0E41 _ 98
        mov     dword [ebp-10H], eax                    ; 0E42 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0E45 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0E48 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 0E4A _ 89. 45, F4
        push    dword [ebp+8H]                          ; 0E4D _ FF. 75, 08
        call    strlen                                  ; 0E50 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0E55 _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 0E58 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0E5B _ 8B. 45, 10
        mov     ebx, dword [eax+1CH]                    ; 0E5E _ 8B. 58, 1C
        mov     eax, dword [ebp+10H]                    ; 0E61 _ 8B. 45, 10
        mov     ecx, dword [eax+8H]                     ; 0E64 _ 8B. 48, 08
        mov     eax, dword [ebp+10H]                    ; 0E67 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0E6A _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0E6D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0E70 _ 8B. 00
        push    dword [ebp-8H]                          ; 0E72 _ FF. 75, F8
        push    dword [ebp+8H]                          ; 0E75 _ FF. 75, 08
        push    ebx                                     ; 0E78 _ 53
        push    ecx                                     ; 0E79 _ 51
        push    edx                                     ; 0E7A _ 52
        push    eax                                     ; 0E7B _ 50
        push    dword [ebp-14H]                         ; 0E7C _ FF. 75, EC
        push    dword [ebp-0CH]                         ; 0E7F _ FF. 75, F4
        call    putStr                                  ; 0E82 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E87 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E8A _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0E8D _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0E8F _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0E92 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 0E95 _ 0F AF. 45, F8
        add     edx, eax                                ; 0E99 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0E9B _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0E9E _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0EA0 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0EA3 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0EA5 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0EA8 _ 8B. 40, 10
        mov     ecx, dword [ebp-14H]                    ; 0EAB _ 8B. 4D, EC
        sub     ecx, eax                                ; 0EAE _ 29. C1
        mov     eax, ecx                                ; 0EB0 _ 89. C8
        cmp     edx, eax                                ; 0EB2 _ 39. C2
        jl      ?_095                                   ; 0EB4 _ 7C, 0E
        push    dword [ebp+10H]                         ; 0EB6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0EB9 _ FF. 75, 0C
        call    Println                                 ; 0EBC _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0EC1 _ 83. C4, 08
?_095:  nop                                             ; 0EC4 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0EC5 _ 8B. 5D, FC
        leave                                           ; 0EC8 _ C9
        ret                                             ; 0EC9 _ C3
; Printf End of function

PrintChar:; Function begin
        push    ebp                                     ; 0ECA _ 55
        mov     ebp, esp                                ; 0ECB _ 89. E5
        push    ebx                                     ; 0ECD _ 53
        sub     esp, 20                                 ; 0ECE _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0ED1 _ 8B. 45, 08
        mov     byte [ebp-18H], al                      ; 0ED4 _ 88. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 0ED7 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0EDA _ 0F B7. 40, 04
        cwde                                            ; 0EDE _ 98
        mov     dword [ebp-10H], eax                    ; 0EDF _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0EE2 _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0EE5 _ 0F B7. 40, 06
        cwde                                            ; 0EE9 _ 98
        mov     dword [ebp-0CH], eax                    ; 0EEA _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 0EED _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0EF0 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 0EF2 _ 89. 45, F8
        movzx   eax, byte [ebp-18H]                     ; 0EF5 _ 0F B6. 45, E8
        movzx   ebx, al                                 ; 0EF9 _ 0F B6. D8
        mov     eax, dword [ebp+10H]                    ; 0EFC _ 8B. 45, 10
        mov     ecx, dword [eax+1CH]                    ; 0EFF _ 8B. 48, 1C
        mov     eax, dword [ebp+10H]                    ; 0F02 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0F05 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0F08 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0F0B _ 8B. 00
        push    ebx                                     ; 0F0D _ 53
        push    ecx                                     ; 0F0E _ 51
        push    edx                                     ; 0F0F _ 52
        push    eax                                     ; 0F10 _ 50
        push    dword [ebp-10H]                         ; 0F11 _ FF. 75, F0
        push    dword [ebp-8H]                          ; 0F14 _ FF. 75, F8
        call    putChar                                 ; 0F17 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0F1C _ 83. C4, 18
        mov     eax, dword [ebp+10H]                    ; 0F1F _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0F22 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0F24 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0F27 _ 8B. 40, 08
        add     edx, eax                                ; 0F2A _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0F2C _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0F2F _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0F31 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0F34 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0F36 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0F39 _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 0F3C _ 8B. 4D, F0
        sub     ecx, eax                                ; 0F3F _ 29. C1
        mov     eax, ecx                                ; 0F41 _ 89. C8
        cmp     edx, eax                                ; 0F43 _ 39. C2
        jl      ?_096                                   ; 0F45 _ 7C, 0E
        push    dword [ebp+10H]                         ; 0F47 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F4A _ FF. 75, 0C
        call    Println                                 ; 0F4D _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0F52 _ 83. C4, 08
?_096:  nop                                             ; 0F55 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F56 _ 8B. 5D, FC
        leave                                           ; 0F59 _ C9
        ret                                             ; 0F5A _ C3
; PrintChar End of function

PrintTab:; Function begin
        push    ebp                                     ; 0F5B _ 55
        mov     ebp, esp                                ; 0F5C _ 89. E5
        push    ebx                                     ; 0F5E _ 53
        sub     esp, 16                                 ; 0F5F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0F62 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0F65 _ 0F B7. 40, 04
        cwde                                            ; 0F69 _ 98
        mov     dword [ebp-0CH], eax                    ; 0F6A _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0F6D _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0F70 _ 0F B7. 40, 06
        cwde                                            ; 0F74 _ 98
        mov     dword [ebp-8H], eax                     ; 0F75 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 0F78 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0F7B _ 0F B7. 40, 04
        cwde                                            ; 0F7F _ 98
        mov     edx, dword [ebp+0CH]                    ; 0F80 _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0F83 _ 8B. 5A, 18
        cdq                                             ; 0F86 _ 99
        idiv    ebx                                     ; 0F87 _ F7. FB
        mov     word [ebp-0EH], ax                      ; 0F89 _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 0F8D _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 0F91 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0F94 _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 0F96 _ 0F BF. 45, F2
        imul    eax, dword [ebp+10H]                    ; 0F9A _ 0F AF. 45, 10
        add     eax, edx                                ; 0F9E _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 0FA0 _ 0F BF. 5D, F2
        cdq                                             ; 0FA4 _ 99
        idiv    ebx                                     ; 0FA5 _ F7. FB
        imul    ecx, eax                                ; 0FA7 _ 0F AF. C8
        mov     edx, ecx                                ; 0FAA _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 0FAC _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0FAF _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0FB1 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0FB4 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 0FB6 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 0FB9 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 0FBC _ 8B. 4D, F4
        sub     ecx, eax                                ; 0FBF _ 29. C1
        mov     eax, ecx                                ; 0FC1 _ 89. C8
        cmp     edx, eax                                ; 0FC3 _ 39. C2
        jl      ?_097                                   ; 0FC5 _ 7C, 0E
        push    dword [ebp+0CH]                         ; 0FC7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0FCA _ FF. 75, 08
        call    Println                                 ; 0FCD _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0FD2 _ 83. C4, 08
?_097:  nop                                             ; 0FD5 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0FD6 _ 8B. 5D, FC
        leave                                           ; 0FD9 _ C9
        ret                                             ; 0FDA _ C3
; PrintTab End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 0FDB _ 55
        mov     ebp, esp                                ; 0FDC _ 89. E5
        push    dword [ebp+10H]                         ; 0FDE _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FE1 _ FF. 75, 0C
        push    ?_170                                   ; 0FE4 _ 68, 00000000(d)
        call    Printf                                  ; 0FE9 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FEE _ 83. C4, 0C
        push    1                                       ; 0FF1 _ 6A, 01
        push    dword [ebp+10H]                         ; 0FF3 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FF6 _ FF. 75, 0C
        call    PrintTab                                ; 0FF9 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0FFE _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1001 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1004 _ 8B. 00
        push    eax                                     ; 1006 _ 50
        call    intToHexStr                             ; 1007 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 100C _ 83. C4, 04
        push    dword [ebp+10H]                         ; 100F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1012 _ FF. 75, 0C
        push    eax                                     ; 1015 _ 50
        call    Printf                                  ; 1016 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 101B _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 101E _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1021 _ FF. 75, 0C
        call    Println                                 ; 1024 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1029 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 102C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 102F _ FF. 75, 0C
        push    ?_171                                   ; 1032 _ 68, 0000000F(d)
        call    Printf                                  ; 1037 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 103C _ 83. C4, 0C
        push    1                                       ; 103F _ 6A, 01
        push    dword [ebp+10H]                         ; 1041 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1044 _ FF. 75, 0C
        call    PrintTab                                ; 1047 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 104C _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 104F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1052 _ 8B. 40, 04
        push    eax                                     ; 1055 _ 50
        call    intToHexStr                             ; 1056 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 105B _ 83. C4, 04
        push    dword [ebp+10H]                         ; 105E _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1061 _ FF. 75, 0C
        push    eax                                     ; 1064 _ 50
        call    Printf                                  ; 1065 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 106A _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 106D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1070 _ FF. 75, 0C
        call    Println                                 ; 1073 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1078 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 107B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 107E _ FF. 75, 0C
        push    ?_172                                   ; 1081 _ 68, 00000020(d)
        call    Printf                                  ; 1086 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 108B _ 83. C4, 0C
        push    2                                       ; 108E _ 6A, 02
        push    dword [ebp+10H]                         ; 1090 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1093 _ FF. 75, 0C
        call    PrintTab                                ; 1096 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 109B _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 109E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10A1 _ 8B. 40, 08
        push    eax                                     ; 10A4 _ 50
        call    intToHexStr                             ; 10A5 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 10AA _ 83. C4, 04
        push    dword [ebp+10H]                         ; 10AD _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10B0 _ FF. 75, 0C
        push    eax                                     ; 10B3 _ 50
        call    Printf                                  ; 10B4 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10B9 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 10BC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10BF _ FF. 75, 0C
        call    Println                                 ; 10C2 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 10C7 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 10CA _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10CD _ FF. 75, 0C
        push    ?_173                                   ; 10D0 _ 68, 0000002D(d)
        call    Printf                                  ; 10D5 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10DA _ 83. C4, 0C
        push    1                                       ; 10DD _ 6A, 01
        push    dword [ebp+10H]                         ; 10DF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10E2 _ FF. 75, 0C
        call    PrintTab                                ; 10E5 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10EA _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 10ED _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 10F0 _ 8B. 40, 0C
        push    eax                                     ; 10F3 _ 50
        call    intToHexStr                             ; 10F4 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 10F9 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 10FC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10FF _ FF. 75, 0C
        push    eax                                     ; 1102 _ 50
        call    Printf                                  ; 1103 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1108 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 110B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 110E _ FF. 75, 0C
        call    Println                                 ; 1111 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1116 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1119 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 111C _ FF. 75, 0C
        push    ?_174                                   ; 111F _ 68, 0000003C(d)
        call    Printf                                  ; 1124 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1129 _ 83. C4, 0C
        push    3                                       ; 112C _ 6A, 03
        push    dword [ebp+10H]                         ; 112E _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1131 _ FF. 75, 0C
        call    PrintTab                                ; 1134 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1139 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 113C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 113F _ 8B. 40, 10
        push    eax                                     ; 1142 _ 50
        call    intToHexStr                             ; 1143 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1148 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 114B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 114E _ FF. 75, 0C
        push    eax                                     ; 1151 _ 50
        call    Printf                                  ; 1152 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1157 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 115A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 115D _ FF. 75, 0C
        call    Println                                 ; 1160 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1165 _ 83. C4, 08
        nop                                             ; 1168 _ 90
        leave                                           ; 1169 _ C9
        ret                                             ; 116A _ C3
; showMemoryInfo End of function

displayMem_8:; Function begin
        push    ebp                                     ; 116B _ 55
        mov     ebp, esp                                ; 116C _ 89. E5
        sub     esp, 16                                 ; 116E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1171 _ C7. 45, FC, 00000000
        jmp     ?_099                                   ; 1178 _ EB, 3D

?_098:  mov     edx, dword [ebp-4H]                     ; 117A _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 117D _ 8B. 45, 08
        add     eax, edx                                ; 1180 _ 01. D0
        movzx   eax, byte [eax]                         ; 1182 _ 0F B6. 00
        movzx   eax, al                                 ; 1185 _ 0F B6. C0
        push    eax                                     ; 1188 _ 50
        call    charToHexStr                            ; 1189 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 118E _ 83. C4, 04
        push    dword [ebp+14H]                         ; 1191 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1194 _ FF. 75, 10
        push    eax                                     ; 1197 _ 50
        call    Printf                                  ; 1198 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 119D _ 83. C4, 0C
        push    dword [ebp+14H]                         ; 11A0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 11A3 _ FF. 75, 10
        push    ?_175                                   ; 11A6 _ 68, 00000043(d)
        call    Printf                                  ; 11AB _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 11B0 _ 83. C4, 0C
        add     dword [ebp-4H], 1                       ; 11B3 _ 83. 45, FC, 01
?_099:  mov     eax, dword [ebp-4H]                     ; 11B7 _ 8B. 45, FC
        cmp     eax, dword [ebp+0CH]                    ; 11BA _ 3B. 45, 0C
        jl      ?_098                                   ; 11BD _ 7C, BB
        nop                                             ; 11BF _ 90
        leave                                           ; 11C0 _ C9
        ret                                             ; 11C1 _ C3
; displayMem_8 End of function

insertSheet:; Function begin
        push    ebp                                     ; 11C2 _ 55
        mov     ebp, esp                                ; 11C3 _ 89. E5
        sub     esp, 16                                 ; 11C5 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 11C8 _ C7. 45, F0, 00000000
        jmp     ?_105                                   ; 11CF _ E9, 00000205

?_100:  mov     eax, dword [ebp-10H]                    ; 11D4 _ 8B. 45, F0
        mov     edx, eax                                ; 11D7 _ 89. C2
        lea     eax, [edx*4]                            ; 11D9 _ 8D. 04 95, 00000000
        mov     edx, eax                                ; 11E0 _ 89. C2
        lea     eax, [edx*8]                            ; 11E2 _ 8D. 04 D5, 00000000
        sub     eax, edx                                ; 11E9 _ 29. D0
        add     eax, sheetman                           ; 11EB _ 05, 00000000(d)
        add     eax, 4                                  ; 11F0 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 11F3 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 11F6 _ 8B. 45, F8
        mov     eax, dword [eax+14H]                    ; 11F9 _ 8B. 40, 14
        cmp     eax, 287454020                          ; 11FC _ 3D, 11223344
        jne     ?_103                                   ; 1201 _ 0F 85, 00000193
        mov     eax, dword [ebp-8H]                     ; 1207 _ 8B. 45, F8
        mov     eax, dword [eax+8H]                     ; 120A _ 8B. 40, 08
        cmp     eax, dword [ebp+14H]                    ; 120D _ 3B. 45, 14
        jle     ?_103                                   ; 1210 _ 0F 8E, 00000184
        mov     eax, dword [sheetman]                   ; 1216 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 121B _ 89. 45, F4
        jmp     ?_102                                   ; 121E _ E9, 00000169

?_101:  mov     eax, dword [ebp-0CH]                    ; 1223 _ 8B. 45, F4
        sub     eax, 1                                  ; 1226 _ 83. E8, 01
        shl     eax, 2                                  ; 1229 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 122C _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1233 _ 29. C2
        mov     eax, edx                                ; 1235 _ 89. D0
        add     eax, sheetman+4H                        ; 1237 _ 05, 00000004(d)
        mov     edx, dword [eax]                        ; 123C _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 123E _ 8B. 45, F4
        shl     eax, 2                                  ; 1241 _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 1244 _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 124B _ 29. C1
        mov     eax, ecx                                ; 124D _ 89. C8
        add     eax, sheetman+4H                        ; 124F _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 1254 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1256 _ 8B. 45, F4
        sub     eax, 1                                  ; 1259 _ 83. E8, 01
        shl     eax, 2                                  ; 125C _ C1. E0, 02
        lea     edx, [eax*8]                            ; 125F _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1266 _ 29. C2
        mov     eax, edx                                ; 1268 _ 89. D0
        add     eax, sheetman+8H                        ; 126A _ 05, 00000008(d)
        mov     edx, dword [eax]                        ; 126F _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 1271 _ 8B. 45, F4
        shl     eax, 2                                  ; 1274 _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 1277 _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 127E _ 29. C1
        mov     eax, ecx                                ; 1280 _ 89. C8
        add     eax, sheetman+8H                        ; 1282 _ 05, 00000008(d)
        mov     dword [eax], edx                        ; 1287 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1289 _ 8B. 45, F4
        sub     eax, 1                                  ; 128C _ 83. E8, 01
        shl     eax, 2                                  ; 128F _ C1. E0, 02
        lea     edx, [eax*8]                            ; 1292 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1299 _ 29. C2
        mov     eax, edx                                ; 129B _ 89. D0
        add     eax, sheetman+0CH                       ; 129D _ 05, 0000000C(d)
        mov     edx, dword [eax]                        ; 12A2 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 12A4 _ 8B. 45, F4
        shl     eax, 2                                  ; 12A7 _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 12AA _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 12B1 _ 29. C1
        mov     eax, ecx                                ; 12B3 _ 89. C8
        add     eax, sheetman+0CH                       ; 12B5 _ 05, 0000000C(d)
        mov     dword [eax], edx                        ; 12BA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 12BC _ 8B. 45, F4
        sub     eax, 1                                  ; 12BF _ 83. E8, 01
        shl     eax, 2                                  ; 12C2 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 12C5 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 12CC _ 29. C2
        mov     eax, edx                                ; 12CE _ 89. D0
        add     eax, sheetman+10H                       ; 12D0 _ 05, 00000010(d)
        mov     edx, dword [eax]                        ; 12D5 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 12D7 _ 8B. 45, F4
        shl     eax, 2                                  ; 12DA _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 12DD _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 12E4 _ 29. C1
        mov     eax, ecx                                ; 12E6 _ 89. C8
        add     eax, sheetman+10H                       ; 12E8 _ 05, 00000010(d)
        mov     dword [eax], edx                        ; 12ED _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 12EF _ 8B. 45, F4
        sub     eax, 1                                  ; 12F2 _ 83. E8, 01
        shl     eax, 2                                  ; 12F5 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 12F8 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 12FF _ 29. C2
        mov     eax, edx                                ; 1301 _ 89. D0
        add     eax, sheetman+14H                       ; 1303 _ 05, 00000014(d)
        mov     edx, dword [eax]                        ; 1308 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 130A _ 8B. 45, F4
        shl     eax, 2                                  ; 130D _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 1310 _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 1317 _ 29. C1
        mov     eax, ecx                                ; 1319 _ 89. C8
        add     eax, sheetman+14H                       ; 131B _ 05, 00000014(d)
        mov     dword [eax], edx                        ; 1320 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1322 _ 8B. 45, F4
        sub     eax, 1                                  ; 1325 _ 83. E8, 01
        shl     eax, 2                                  ; 1328 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 132B _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1332 _ 29. C2
        mov     eax, edx                                ; 1334 _ 89. D0
        add     eax, sheetman+18H                       ; 1336 _ 05, 00000018(d)
        mov     edx, dword [eax]                        ; 133B _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 133D _ 8B. 45, F4
        shl     eax, 2                                  ; 1340 _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 1343 _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 134A _ 29. C1
        mov     eax, ecx                                ; 134C _ 89. C8
        add     eax, sheetman+18H                       ; 134E _ 05, 00000018(d)
        mov     dword [eax], edx                        ; 1353 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1355 _ 8B. 45, F4
        sub     eax, 1                                  ; 1358 _ 83. E8, 01
        shl     eax, 2                                  ; 135B _ C1. E0, 02
        lea     edx, [eax*8]                            ; 135E _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1365 _ 29. C2
        mov     eax, edx                                ; 1367 _ 89. D0
        add     eax, sheetman+1CH                       ; 1369 _ 05, 0000001C(d)
        mov     edx, dword [eax]                        ; 136E _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 1370 _ 8B. 45, F4
        shl     eax, 2                                  ; 1373 _ C1. E0, 02
        lea     ecx, [eax*8]                            ; 1376 _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 137D _ 29. C1
        mov     eax, ecx                                ; 137F _ 89. C8
        add     eax, sheetman+1CH                       ; 1381 _ 05, 0000001C(d)
        mov     dword [eax], edx                        ; 1386 _ 89. 10
        sub     dword [ebp-0CH], 1                      ; 1388 _ 83. 6D, F4, 01
?_102:  mov     eax, dword [ebp-0CH]                    ; 138C _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 138F _ 3B. 45, F0
        jg      ?_101                                   ; 1392 _ 0F 8F, FFFFFE8B
        jmp     ?_106                                   ; 1398 _ EB, 4D

?_103:  mov     eax, dword [ebp-8H]                     ; 139A _ 8B. 45, F8
        mov     eax, dword [eax+14H]                    ; 139D _ 8B. 40, 14
        cmp     eax, 287454020                          ; 13A0 _ 3D, 11223344
        jnz     ?_104                                   ; 13A5 _ 75, 2E
        mov     eax, dword [ebp-8H]                     ; 13A7 _ 8B. 45, F8
        mov     eax, dword [eax+8H]                     ; 13AA _ 8B. 40, 08
        cmp     eax, dword [ebp+14H]                    ; 13AD _ 3B. 45, 14
        jnz     ?_104                                   ; 13B0 _ 75, 23
        mov     eax, dword [ebp-8H]                     ; 13B2 _ 8B. 45, F8
        mov     eax, dword [eax+0CH]                    ; 13B5 _ 8B. 40, 0C
        mov     edx, eax                                ; 13B8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 13BA _ 8B. 45, F8
        mov     eax, dword [eax+18H]                    ; 13BD _ 8B. 40, 18
        push    edx                                     ; 13C0 _ 52
        push    eax                                     ; 13C1 _ 50
        push    dword [ebp+18H]                         ; 13C2 _ FF. 75, 18
        call    memcmb                                  ; 13C5 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 13CA _ 83. C4, 0C
        mov     eax, dword [ebp-8H]                     ; 13CD _ 8B. 45, F8
        jmp     ?_107                                   ; 13D0 _ E9, 00000083

?_104:  add     dword [ebp-10H], 1                      ; 13D5 _ 83. 45, F0, 01
?_105:  mov     eax, dword [sheetman]                   ; 13D9 _ A1, 00000000(d)
        cmp     eax, dword [ebp-10H]                    ; 13DE _ 3B. 45, F0
        jg      ?_100                                   ; 13E1 _ 0F 8F, FFFFFDED
?_106:  mov     eax, dword [ebp-10H]                    ; 13E7 _ 8B. 45, F0
        mov     edx, eax                                ; 13EA _ 89. C2
        lea     eax, [edx*4]                            ; 13EC _ 8D. 04 95, 00000000
        mov     edx, eax                                ; 13F3 _ 89. C2
        lea     eax, [edx*8]                            ; 13F5 _ 8D. 04 D5, 00000000
        sub     eax, edx                                ; 13FC _ 29. D0
        add     eax, sheetman                           ; 13FE _ 05, 00000000(d)
        add     eax, 4                                  ; 1403 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 1406 _ 89. 45, FC
        mov     eax, dword [sheetman]                   ; 1409 _ A1, 00000000(d)
        add     eax, 1                                  ; 140E _ 83. C0, 01
        mov     dword [sheetman], eax                   ; 1411 _ A3, 00000000(d)
        mov     eax, dword [ebp-4H]                     ; 1416 _ 8B. 45, FC
        mov     edx, dword [ebp+8H]                     ; 1419 _ 8B. 55, 08
        mov     dword [eax], edx                        ; 141C _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 141E _ 8B. 45, FC
        mov     edx, dword [ebp+0CH]                    ; 1421 _ 8B. 55, 0C
        mov     dword [eax+4H], edx                     ; 1424 _ 89. 50, 04
        mov     eax, dword [ebp-4H]                     ; 1427 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 142A _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 142D _ 89. 50, 08
        mov     eax, dword [ebp-4H]                     ; 1430 _ 8B. 45, FC
        mov     edx, dword [ebp+10H]                    ; 1433 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1436 _ 89. 50, 0C
        mov     eax, dword [ebp-4H]                     ; 1439 _ 8B. 45, FC
        mov     edx, dword [ebp-10H]                    ; 143C _ 8B. 55, F0
        mov     dword [eax+10H], edx                    ; 143F _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 1442 _ 8B. 45, FC
        mov     edx, dword [ebp+18H]                    ; 1445 _ 8B. 55, 18
        mov     dword [eax+18H], edx                    ; 1448 _ 89. 50, 18
        mov     eax, dword [ebp-4H]                     ; 144B _ 8B. 45, FC
        mov     dword [eax+14H], 287454020              ; 144E _ C7. 40, 14, 11223344
        mov     eax, dword [ebp-4H]                     ; 1455 _ 8B. 45, FC
?_107:  leave                                           ; 1458 _ C9
        ret                                             ; 1459 _ C3
; insertSheet End of function

removeSheet:; Function begin
        push    ebp                                     ; 145A _ 55
        mov     ebp, esp                                ; 145B _ 89. E5
        sub     esp, 16                                 ; 145D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1460 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1467 _ C7. 45, FC, 00000000
        jmp     ?_111                                   ; 146E _ E9, 00000090

?_108:  cmp     dword [ebp-8H], 0                       ; 1473 _ 83. 7D, F8, 00
        jnz     ?_109                                   ; 1477 _ 75, 24
        mov     eax, dword [ebp-4H]                     ; 1479 _ 8B. 45, FC
        shl     eax, 2                                  ; 147C _ C1. E0, 02
        lea     edx, [eax*8]                            ; 147F _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1486 _ 29. C2
        mov     eax, edx                                ; 1488 _ 89. D0
        add     eax, sheetman+0CH                       ; 148A _ 05, 0000000C(d)
        mov     eax, dword [eax]                        ; 148F _ 8B. 00
        cmp     eax, dword [ebp+8H]                     ; 1491 _ 3B. 45, 08
        jnz     ?_109                                   ; 1494 _ 75, 07
        mov     dword [ebp-8H], 1                       ; 1496 _ C7. 45, F8, 00000001
?_109:  cmp     dword [ebp-8H], 0                       ; 149D _ 83. 7D, F8, 00
        jz      ?_110                                   ; 14A1 _ 74, 5C
        mov     eax, dword [ebp-4H]                     ; 14A3 _ 8B. 45, FC
        lea     ecx, [eax+1H]                           ; 14A6 _ 8D. 48, 01
        mov     eax, dword [ebp-4H]                     ; 14A9 _ 8B. 45, FC
        shl     eax, 2                                  ; 14AC _ C1. E0, 02
        lea     edx, [eax*8]                            ; 14AF _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 14B6 _ 29. C2
        mov     eax, edx                                ; 14B8 _ 89. D0
        add     eax, sheetman                           ; 14BA _ 05, 00000000(d)
        mov     edx, ecx                                ; 14BF _ 89. CA
        shl     edx, 2                                  ; 14C1 _ C1. E2, 02
        lea     ecx, [edx*8]                            ; 14C4 _ 8D. 0C D5, 00000000
        sub     ecx, edx                                ; 14CB _ 29. D1
        mov     edx, ecx                                ; 14CD _ 89. CA
        add     edx, sheetman                           ; 14CF _ 81. C2, 00000000(d)
        mov     ecx, dword [edx+4H]                     ; 14D5 _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 14D8 _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 14DB _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 14DE _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 14E1 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 14E4 _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 14E7 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 14EA _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 14ED _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 14F0 _ 89. 48, 14
        mov     ecx, dword [edx+18H]                    ; 14F3 _ 8B. 4A, 18
        mov     dword [eax+18H], ecx                    ; 14F6 _ 89. 48, 18
        mov     edx, dword [edx+1CH]                    ; 14F9 _ 8B. 52, 1C
        mov     dword [eax+1CH], edx                    ; 14FC _ 89. 50, 1C
?_110:  add     dword [ebp-4H], 1                       ; 14FF _ 83. 45, FC, 01
?_111:  mov     eax, dword [sheetman]                   ; 1503 _ A1, 00000000(d)
        cmp     eax, dword [ebp-4H]                     ; 1508 _ 3B. 45, FC
        jg      ?_108                                   ; 150B _ 0F 8F, FFFFFF62
        cmp     dword [ebp-8H], 0                       ; 1511 _ 83. 7D, F8, 00
        jz      ?_112                                   ; 1515 _ 74, 21
        mov     eax, dword [sheetman]                   ; 1517 _ A1, 00000000(d)
        sub     eax, 1                                  ; 151C _ 83. E8, 01
        shl     eax, 2                                  ; 151F _ C1. E0, 02
        lea     edx, [eax*8]                            ; 1522 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1529 _ 29. C2
        mov     eax, edx                                ; 152B _ 89. D0
        add     eax, sheetman+18H                       ; 152D _ 05, 00000018(d)
        mov     dword [eax], 0                          ; 1532 _ C7. 00, 00000000
?_112:  nop                                             ; 1538 _ 90
        leave                                           ; 1539 _ C9
        ret                                             ; 153A _ C3
; removeSheet End of function

getSheet:; Function begin
        push    ebp                                     ; 153B _ 55
        mov     ebp, esp                                ; 153C _ 89. E5
        sub     esp, 16                                 ; 153E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1541 _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 1548 _ EB, 42

?_113:  mov     eax, dword [ebp-4H]                     ; 154A _ 8B. 45, FC
        shl     eax, 2                                  ; 154D _ C1. E0, 02
        lea     edx, [eax*8]                            ; 1550 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1557 _ 29. C2
        mov     eax, edx                                ; 1559 _ 89. D0
        add     eax, sheetman+0CH                       ; 155B _ 05, 0000000C(d)
        mov     eax, dword [eax]                        ; 1560 _ 8B. 00
        cmp     eax, dword [ebp+8H]                     ; 1562 _ 3B. 45, 08
        jnz     ?_114                                   ; 1565 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 1567 _ 8B. 45, FC
        mov     edx, eax                                ; 156A _ 89. C2
        lea     eax, [edx*4]                            ; 156C _ 8D. 04 95, 00000000
        mov     edx, eax                                ; 1573 _ 89. C2
        lea     eax, [edx*8]                            ; 1575 _ 8D. 04 D5, 00000000
        sub     eax, edx                                ; 157C _ 29. D0
        add     eax, sheetman                           ; 157E _ 05, 00000000(d)
        add     eax, 4                                  ; 1583 _ 83. C0, 04
        jmp     ?_116                                   ; 1586 _ EB, 13

?_114:  add     dword [ebp-4H], 1                       ; 1588 _ 83. 45, FC, 01
?_115:  mov     eax, dword [sheetman]                   ; 158C _ A1, 00000000(d)
        cmp     eax, dword [ebp-4H]                     ; 1591 _ 3B. 45, FC
        jg      ?_113                                   ; 1594 _ 7F, B4
        mov     eax, 0                                  ; 1596 _ B8, 00000000
?_116:  leave                                           ; 159B _ C9
        ret                                             ; 159C _ C3
; getSheet End of function

alterSheetLayer:; Function begin
        push    ebp                                     ; 159D _ 55
        mov     ebp, esp                                ; 159E _ 89. E5
        sub     esp, 48                                 ; 15A0 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 15A3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 15A6 _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 15A9 _ 3B. 45, 0C
        je      ?_122                                   ; 15AC _ 0F 84, 00000242
        mov     eax, dword [ebp+8H]                     ; 15B2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 15B5 _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 15B8 _ 3B. 45, 0C
        jle     ?_119                                   ; 15BB _ 0F 8E, 0000011A
        mov     eax, dword [ebp+8H]                     ; 15C1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 15C4 _ 8B. 40, 10
        mov     dword [ebp-24H], eax                    ; 15C7 _ 89. 45, DC
        jmp     ?_118                                   ; 15CA _ E9, 000000D8

?_117:  mov     eax, dword [ebp-24H]                    ; 15CF _ 8B. 45, DC
        shl     eax, 2                                  ; 15D2 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 15D5 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 15DC _ 29. C2
        mov     eax, dword [ebp+8H]                     ; 15DE _ 8B. 45, 08
        add     eax, edx                                ; 15E1 _ 01. D0
        mov     edx, dword [eax]                        ; 15E3 _ 8B. 10
        mov     dword [ebp-1CH], edx                    ; 15E5 _ 89. 55, E4
        mov     edx, dword [eax+4H]                     ; 15E8 _ 8B. 50, 04
        mov     dword [ebp-18H], edx                    ; 15EB _ 89. 55, E8
        mov     edx, dword [eax+8H]                     ; 15EE _ 8B. 50, 08
        mov     dword [ebp-14H], edx                    ; 15F1 _ 89. 55, EC
        mov     edx, dword [eax+0CH]                    ; 15F4 _ 8B. 50, 0C
        mov     dword [ebp-10H], edx                    ; 15F7 _ 89. 55, F0
        mov     edx, dword [eax+10H]                    ; 15FA _ 8B. 50, 10
        mov     dword [ebp-0CH], edx                    ; 15FD _ 89. 55, F4
        mov     edx, dword [eax+14H]                    ; 1600 _ 8B. 50, 14
        mov     dword [ebp-8H], edx                     ; 1603 _ 89. 55, F8
        mov     eax, dword [eax+18H]                    ; 1606 _ 8B. 40, 18
        mov     dword [ebp-4H], eax                     ; 1609 _ 89. 45, FC
        mov     eax, dword [ebp-24H]                    ; 160C _ 8B. 45, DC
        shl     eax, 2                                  ; 160F _ C1. E0, 02
        lea     edx, [eax*8]                            ; 1612 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1619 _ 29. C2
        mov     eax, dword [ebp+8H]                     ; 161B _ 8B. 45, 08
        add     eax, edx                                ; 161E _ 01. D0
        mov     edx, dword [ebp-24H]                    ; 1620 _ 8B. 55, DC
        shl     edx, 2                                  ; 1623 _ C1. E2, 02
        lea     ecx, [edx*8]                            ; 1626 _ 8D. 0C D5, 00000000
        sub     ecx, edx                                ; 162D _ 29. D1
        mov     edx, ecx                                ; 162F _ 89. CA
        lea     ecx, [edx-1CH]                          ; 1631 _ 8D. 4A, E4
        mov     edx, dword [ebp+8H]                     ; 1634 _ 8B. 55, 08
        add     edx, ecx                                ; 1637 _ 01. CA
        mov     ecx, dword [edx]                        ; 1639 _ 8B. 0A
        mov     dword [eax], ecx                        ; 163B _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 163D _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 1640 _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 1643 _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 1646 _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 1649 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 164C _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 164F _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 1652 _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 1655 _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 1658 _ 89. 48, 14
        mov     edx, dword [edx+18H]                    ; 165B _ 8B. 52, 18
        mov     dword [eax+18H], edx                    ; 165E _ 89. 50, 18
        mov     eax, dword [ebp-24H]                    ; 1661 _ 8B. 45, DC
        shl     eax, 2                                  ; 1664 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 1667 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 166E _ 29. C2
        mov     eax, edx                                ; 1670 _ 89. D0
        lea     edx, [eax-1CH]                          ; 1672 _ 8D. 50, E4
        mov     eax, dword [ebp+8H]                     ; 1675 _ 8B. 45, 08
        add     eax, edx                                ; 1678 _ 01. D0
        mov     edx, dword [ebp-1CH]                    ; 167A _ 8B. 55, E4
        mov     dword [eax], edx                        ; 167D _ 89. 10
        mov     edx, dword [ebp-18H]                    ; 167F _ 8B. 55, E8
        mov     dword [eax+4H], edx                     ; 1682 _ 89. 50, 04
        mov     edx, dword [ebp-14H]                    ; 1685 _ 8B. 55, EC
        mov     dword [eax+8H], edx                     ; 1688 _ 89. 50, 08
        mov     edx, dword [ebp-10H]                    ; 168B _ 8B. 55, F0
        mov     dword [eax+0CH], edx                    ; 168E _ 89. 50, 0C
        mov     edx, dword [ebp-0CH]                    ; 1691 _ 8B. 55, F4
        mov     dword [eax+10H], edx                    ; 1694 _ 89. 50, 10
        mov     edx, dword [ebp-8H]                     ; 1697 _ 8B. 55, F8
        mov     dword [eax+14H], edx                    ; 169A _ 89. 50, 14
        mov     edx, dword [ebp-4H]                     ; 169D _ 8B. 55, FC
        mov     dword [eax+18H], edx                    ; 16A0 _ 89. 50, 18
        sub     dword [ebp-24H], 1                      ; 16A3 _ 83. 6D, DC, 01
?_118:  cmp     dword [ebp-24H], 0                      ; 16A7 _ 83. 7D, DC, 00
        jle     ?_123                                   ; 16AB _ 0F 8E, 00000144
        mov     eax, dword [ebp-24H]                    ; 16B1 _ 8B. 45, DC
        shl     eax, 2                                  ; 16B4 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 16B7 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 16BE _ 29. C2
        mov     eax, edx                                ; 16C0 _ 89. D0
        lea     edx, [eax-1CH]                          ; 16C2 _ 8D. 50, E4
        mov     eax, dword [ebp+8H]                     ; 16C5 _ 8B. 45, 08
        add     eax, edx                                ; 16C8 _ 01. D0
        mov     eax, dword [eax+8H]                     ; 16CA _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 16CD _ 3B. 45, 0C
        jl      ?_117                                   ; 16D0 _ 0F 8C, FFFFFEF9
        jmp     ?_123                                   ; 16D6 _ E9, 0000011A

?_119:  mov     eax, dword [ebp+8H]                     ; 16DB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 16DE _ 8B. 40, 10
        mov     dword [ebp-20H], eax                    ; 16E1 _ 89. 45, E0
        jmp     ?_121                                   ; 16E4 _ E9, 000000D4

?_120:  mov     eax, dword [ebp-20H]                    ; 16E9 _ 8B. 45, E0
        shl     eax, 2                                  ; 16EC _ C1. E0, 02
        lea     edx, [eax*8]                            ; 16EF _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 16F6 _ 29. C2
        mov     eax, dword [ebp+8H]                     ; 16F8 _ 8B. 45, 08
        add     eax, edx                                ; 16FB _ 01. D0
        mov     edx, dword [eax]                        ; 16FD _ 8B. 10
        mov     dword [ebp-1CH], edx                    ; 16FF _ 89. 55, E4
        mov     edx, dword [eax+4H]                     ; 1702 _ 8B. 50, 04
        mov     dword [ebp-18H], edx                    ; 1705 _ 89. 55, E8
        mov     edx, dword [eax+8H]                     ; 1708 _ 8B. 50, 08
        mov     dword [ebp-14H], edx                    ; 170B _ 89. 55, EC
        mov     edx, dword [eax+0CH]                    ; 170E _ 8B. 50, 0C
        mov     dword [ebp-10H], edx                    ; 1711 _ 89. 55, F0
        mov     edx, dword [eax+10H]                    ; 1714 _ 8B. 50, 10
        mov     dword [ebp-0CH], edx                    ; 1717 _ 89. 55, F4
        mov     edx, dword [eax+14H]                    ; 171A _ 8B. 50, 14
        mov     dword [ebp-8H], edx                     ; 171D _ 89. 55, F8
        mov     eax, dword [eax+18H]                    ; 1720 _ 8B. 40, 18
        mov     dword [ebp-4H], eax                     ; 1723 _ 89. 45, FC
        mov     eax, dword [ebp-20H]                    ; 1726 _ 8B. 45, E0
        shl     eax, 2                                  ; 1729 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 172C _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1733 _ 29. C2
        mov     eax, dword [ebp+8H]                     ; 1735 _ 8B. 45, 08
        add     eax, edx                                ; 1738 _ 01. D0
        mov     edx, dword [ebp-20H]                    ; 173A _ 8B. 55, E0
        add     edx, 1                                  ; 173D _ 83. C2, 01
        shl     edx, 2                                  ; 1740 _ C1. E2, 02
        lea     ecx, [edx*8]                            ; 1743 _ 8D. 0C D5, 00000000
        sub     ecx, edx                                ; 174A _ 29. D1
        mov     edx, dword [ebp+8H]                     ; 174C _ 8B. 55, 08
        add     edx, ecx                                ; 174F _ 01. CA
        mov     ecx, dword [edx]                        ; 1751 _ 8B. 0A
        mov     dword [eax], ecx                        ; 1753 _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 1755 _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 1758 _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 175B _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 175E _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 1761 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 1764 _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 1767 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 176A _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 176D _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 1770 _ 89. 48, 14
        mov     edx, dword [edx+18H]                    ; 1773 _ 8B. 52, 18
        mov     dword [eax+18H], edx                    ; 1776 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 1779 _ 8B. 45, E0
        add     eax, 1                                  ; 177C _ 83. C0, 01
        shl     eax, 2                                  ; 177F _ C1. E0, 02
        lea     edx, [eax*8]                            ; 1782 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 1789 _ 29. C2
        mov     eax, dword [ebp+8H]                     ; 178B _ 8B. 45, 08
        add     eax, edx                                ; 178E _ 01. D0
        mov     edx, dword [ebp-1CH]                    ; 1790 _ 8B. 55, E4
        mov     dword [eax], edx                        ; 1793 _ 89. 10
        mov     edx, dword [ebp-18H]                    ; 1795 _ 8B. 55, E8
        mov     dword [eax+4H], edx                     ; 1798 _ 89. 50, 04
        mov     edx, dword [ebp-14H]                    ; 179B _ 8B. 55, EC
        mov     dword [eax+8H], edx                     ; 179E _ 89. 50, 08
        mov     edx, dword [ebp-10H]                    ; 17A1 _ 8B. 55, F0
        mov     dword [eax+0CH], edx                    ; 17A4 _ 89. 50, 0C
        mov     edx, dword [ebp-0CH]                    ; 17A7 _ 8B. 55, F4
        mov     dword [eax+10H], edx                    ; 17AA _ 89. 50, 10
        mov     edx, dword [ebp-8H]                     ; 17AD _ 8B. 55, F8
        mov     dword [eax+14H], edx                    ; 17B0 _ 89. 50, 14
        mov     edx, dword [ebp-4H]                     ; 17B3 _ 8B. 55, FC
        mov     dword [eax+18H], edx                    ; 17B6 _ 89. 50, 18
        sub     dword [ebp-20H], 1                      ; 17B9 _ 83. 6D, E0, 01
?_121:  mov     eax, dword [ebp-20H]                    ; 17BD _ 8B. 45, E0
        lea     edx, [eax+1H]                           ; 17C0 _ 8D. 50, 01
        mov     eax, dword [sheetman]                   ; 17C3 _ A1, 00000000(d)
        sub     eax, 1                                  ; 17C8 _ 83. E8, 01
        cmp     edx, eax                                ; 17CB _ 39. C2
        jge     ?_123                                   ; 17CD _ 7D, 26
        mov     eax, dword [ebp-20H]                    ; 17CF _ 8B. 45, E0
        add     eax, 1                                  ; 17D2 _ 83. C0, 01
        shl     eax, 2                                  ; 17D5 _ C1. E0, 02
        lea     edx, [eax*8]                            ; 17D8 _ 8D. 14 C5, 00000000
        sub     edx, eax                                ; 17DF _ 29. C2
        mov     eax, dword [ebp+8H]                     ; 17E1 _ 8B. 45, 08
        add     eax, edx                                ; 17E4 _ 01. D0
        mov     eax, dword [eax+8H]                     ; 17E6 _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 17E9 _ 3B. 45, 0C
        jg      ?_120                                   ; 17EC _ 0F 8F, FFFFFEF7
        jmp     ?_123                                   ; 17F2 _ EB, 01

?_122:  nop                                             ; 17F4 _ 90
?_123:  leave                                           ; 17F5 _ C9
        ret                                             ; 17F6 _ C3
; alterSheetLayer End of function

drawSheetList:; Function begin
        push    ebp                                     ; 17F7 _ 55
        mov     ebp, esp                                ; 17F8 _ 89. E5
        push    ebx                                     ; 17FA _ 53
        sub     esp, 32                                 ; 17FB _ 83. EC, 20
        mov     eax, dword [ebp+8H]                     ; 17FE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1801 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 1803 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 1806 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 1809 _ 0F B7. 40, 04
        cwde                                            ; 180D _ 98
        mov     dword [ebp-0CH], eax                    ; 180E _ 89. 45, F4
        mov     eax, dword [sheetman]                   ; 1811 _ A1, 00000000(d)
        sub     eax, 1                                  ; 1816 _ 83. E8, 01
        mov     dword [ebp-1CH], eax                    ; 1819 _ 89. 45, E4
        jmp     ?_131                                   ; 181C _ E9, 000000D5

?_124:  mov     eax, dword [ebp-1CH]                    ; 1821 _ 8B. 45, E4
        mov     edx, eax                                ; 1824 _ 89. C2
        lea     eax, [edx*4]                            ; 1826 _ 8D. 04 95, 00000000
        mov     edx, eax                                ; 182D _ 89. C2
        lea     eax, [edx*8]                            ; 182F _ 8D. 04 D5, 00000000
        sub     eax, edx                                ; 1836 _ 29. D0
        add     eax, sheetman                           ; 1838 _ 05, 00000000(d)
        add     eax, 4                                  ; 183D _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 1840 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 1843 _ 8B. 45, F8
        mov     eax, dword [eax+14H]                    ; 1846 _ 8B. 40, 14
        cmp     eax, 287454020                          ; 1849 _ 3D, 11223344
        jne     ?_130                                   ; 184E _ 0F 85, 0000009E
        mov     eax, dword [ebp-8H]                     ; 1854 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 1857 _ 8B. 00
        mov     eax, dword [eax+4H]                     ; 1859 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 185C _ 89. 45, E8
        jmp     ?_129                                   ; 185F _ EB, 75

?_125:  mov     eax, dword [ebp-8H]                     ; 1861 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 1864 _ 8B. 00
        mov     eax, dword [eax]                        ; 1866 _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1868 _ 89. 45, EC
        jmp     ?_128                                   ; 186B _ EB, 4F

?_126:  mov     eax, dword [ebp-8H]                     ; 186D _ 8B. 45, F8
        mov     edx, dword [eax+18H]                    ; 1870 _ 8B. 50, 18
        mov     eax, dword [ebp-18H]                    ; 1873 _ 8B. 45, E8
        imul    eax, dword [ebp-0CH]                    ; 1876 _ 0F AF. 45, F4
        mov     ecx, eax                                ; 187A _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 187C _ 8B. 45, EC
        add     eax, ecx                                ; 187F _ 01. C8
        add     eax, edx                                ; 1881 _ 01. D0
        movzx   eax, byte [eax]                         ; 1883 _ 0F B6. 00
        cmp     al, -1                                  ; 1886 _ 3C, FF
        jz      ?_127                                   ; 1888 _ 74, 2E
        mov     eax, dword [ebp-18H]                    ; 188A _ 8B. 45, E8
        imul    eax, dword [ebp-0CH]                    ; 188D _ 0F AF. 45, F4
        mov     edx, eax                                ; 1891 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1893 _ 8B. 45, EC
        add     edx, eax                                ; 1896 _ 01. C2
        mov     eax, dword [ebp-10H]                    ; 1898 _ 8B. 45, F0
        add     edx, eax                                ; 189B _ 01. C2
        mov     eax, dword [ebp-8H]                     ; 189D _ 8B. 45, F8
        mov     ecx, dword [eax+18H]                    ; 18A0 _ 8B. 48, 18
        mov     eax, dword [ebp-18H]                    ; 18A3 _ 8B. 45, E8
        imul    eax, dword [ebp-0CH]                    ; 18A6 _ 0F AF. 45, F4
        mov     ebx, eax                                ; 18AA _ 89. C3
        mov     eax, dword [ebp-14H]                    ; 18AC _ 8B. 45, EC
        add     eax, ebx                                ; 18AF _ 01. D8
        add     eax, ecx                                ; 18B1 _ 01. C8
        movzx   eax, byte [eax]                         ; 18B3 _ 0F B6. 00
        mov     byte [edx], al                          ; 18B6 _ 88. 02
?_127:  add     dword [ebp-14H], 1                      ; 18B8 _ 83. 45, EC, 01
?_128:  mov     eax, dword [ebp-8H]                     ; 18BC _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 18BF _ 8B. 00
        mov     edx, dword [eax]                        ; 18C1 _ 8B. 10
        mov     eax, dword [ebp-8H]                     ; 18C3 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 18C6 _ 8B. 40, 04
        mov     eax, dword [eax]                        ; 18C9 _ 8B. 00
        add     eax, edx                                ; 18CB _ 01. D0
        cmp     eax, dword [ebp-14H]                    ; 18CD _ 3B. 45, EC
        jg      ?_126                                   ; 18D0 _ 7F, 9B
        add     dword [ebp-18H], 1                      ; 18D2 _ 83. 45, E8, 01
?_129:  mov     eax, dword [ebp-8H]                     ; 18D6 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 18D9 _ 8B. 00
        mov     edx, dword [eax+4H]                     ; 18DB _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 18DE _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 18E1 _ 8B. 40, 04
        mov     eax, dword [eax+4H]                     ; 18E4 _ 8B. 40, 04
        add     eax, edx                                ; 18E7 _ 01. D0
        cmp     eax, dword [ebp-18H]                    ; 18E9 _ 3B. 45, E8
        jg      ?_125                                   ; 18EC _ 0F 8F, FFFFFF6F
?_130:  sub     dword [ebp-1CH], 1                      ; 18F2 _ 83. 6D, E4, 01
?_131:  cmp     dword [ebp-1CH], 0                      ; 18F6 _ 83. 7D, E4, 00
        jns     ?_124                                   ; 18FA _ 0F 89, FFFFFF21
        nop                                             ; 1900 _ 90
        add     esp, 32                                 ; 1901 _ 83. C4, 20
        pop     ebx                                     ; 1904 _ 5B
        pop     ebp                                     ; 1905 _ 5D
        ret                                             ; 1906 _ C3
; drawSheetList End of function

SheetPrintln:; Function begin
        push    ebp                                     ; 1907 _ 55
        mov     ebp, esp                                ; 1908 _ 89. E5
        sub     esp, 16                                 ; 190A _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 190D _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 1910 _ 0F B7. 40, 06
        cwde                                            ; 1914 _ 98
        mov     dword [ebp-4H], eax                     ; 1915 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1918 _ 8B. 45, 10
        mov     edx, dword [eax+10H]                    ; 191B _ 8B. 50, 10
        mov     eax, dword [ebp+10H]                    ; 191E _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1921 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 1923 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1926 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1929 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 192C _ 8B. 40, 0C
        add     edx, eax                                ; 192F _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 1931 _ 8B. 45, 10
        mov     dword [eax+4H], edx                     ; 1934 _ 89. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1937 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 193A _ 8B. 40, 04
        cmp     eax, dword [ebp-4H]                     ; 193D _ 3B. 45, FC
        jl      ?_132                                   ; 1940 _ 7C, 0C
        mov     eax, dword [ebp+10H]                    ; 1942 _ 8B. 45, 10
        mov     edx, dword [eax+14H]                    ; 1945 _ 8B. 50, 14
        mov     eax, dword [ebp+10H]                    ; 1948 _ 8B. 45, 10
        mov     dword [eax+4H], edx                     ; 194B _ 89. 50, 04
?_132:  nop                                             ; 194E _ 90
        leave                                           ; 194F _ C9
        ret                                             ; 1950 _ C3
; SheetPrintln End of function

SheetPrintf:; Function begin
        push    ebp                                     ; 1951 _ 55
        mov     ebp, esp                                ; 1952 _ 89. E5
        push    ebx                                     ; 1954 _ 53
        sub     esp, 16                                 ; 1955 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1958 _ 8B. 45, 10
        movzx   eax, word [eax+4H]                      ; 195B _ 0F B7. 40, 04
        cwde                                            ; 195F _ 98
        mov     dword [ebp-10H], eax                    ; 1960 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1963 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1966 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1969 _ 89. 45, F4
        push    dword [ebp+8H]                          ; 196C _ FF. 75, 08
        call    strlen                                  ; 196F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1974 _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 1977 _ 89. 45, F8
        mov     eax, dword [ebp+14H]                    ; 197A _ 8B. 45, 14
        mov     ebx, dword [eax+1CH]                    ; 197D _ 8B. 58, 1C
        mov     eax, dword [ebp+14H]                    ; 1980 _ 8B. 45, 14
        mov     ecx, dword [eax+8H]                     ; 1983 _ 8B. 48, 08
        mov     eax, dword [ebp+14H]                    ; 1986 _ 8B. 45, 14
        mov     edx, dword [eax+4H]                     ; 1989 _ 8B. 50, 04
        mov     eax, dword [ebp+14H]                    ; 198C _ 8B. 45, 14
        mov     eax, dword [eax]                        ; 198F _ 8B. 00
        push    dword [ebp-8H]                          ; 1991 _ FF. 75, F8
        push    dword [ebp+8H]                          ; 1994 _ FF. 75, 08
        push    ebx                                     ; 1997 _ 53
        push    ecx                                     ; 1998 _ 51
        push    edx                                     ; 1999 _ 52
        push    eax                                     ; 199A _ 50
        push    dword [ebp-10H]                         ; 199B _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 199E _ FF. 75, F4
        call    putStr                                  ; 19A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19A6 _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 19A9 _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 19AC _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 19AE _ 8B. 45, 14
        mov     eax, dword [eax+8H]                     ; 19B1 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 19B4 _ 0F AF. 45, F8
        add     edx, eax                                ; 19B8 _ 01. C2
        mov     eax, dword [ebp+14H]                    ; 19BA _ 8B. 45, 14
        mov     dword [eax], edx                        ; 19BD _ 89. 10
        mov     eax, dword [ebp+14H]                    ; 19BF _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 19C2 _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 19C4 _ 8B. 45, 14
        mov     eax, dword [eax+10H]                    ; 19C7 _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 19CA _ 8B. 4D, F0
        sub     ecx, eax                                ; 19CD _ 29. C1
        mov     eax, ecx                                ; 19CF _ 89. C8
        cmp     edx, eax                                ; 19D1 _ 39. C2
        jl      ?_133                                   ; 19D3 _ 7C, 11
        push    dword [ebp+14H]                         ; 19D5 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 19D8 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 19DB _ FF. 75, 0C
        call    SheetPrintln                            ; 19DE _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 19E3 _ 83. C4, 0C
?_133:  nop                                             ; 19E6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 19E7 _ 8B. 5D, FC
        leave                                           ; 19EA _ C9
        ret                                             ; 19EB _ C3
; SheetPrintf End of function

SheetClear:; Function begin
        push    ebp                                     ; 19EC _ 55
        mov     ebp, esp                                ; 19ED _ 89. E5
        sub     esp, 16                                 ; 19EF _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 19F2 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 19F5 _ 0F B7. 40, 04
        cwde                                            ; 19F9 _ 98
        mov     dword [ebp-4H], eax                     ; 19FA _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 19FD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A00 _ 8B. 00
        mov     eax, dword [eax+4H]                     ; 1A02 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 1A05 _ 89. 45, F4
        jmp     ?_137                                   ; 1A08 _ EB, 45

?_134:  mov     eax, dword [ebp+8H]                     ; 1A0A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A0D _ 8B. 00
        mov     eax, dword [eax]                        ; 1A0F _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1A11 _ 89. 45, F8
        jmp     ?_136                                   ; 1A14 _ EB, 1F

?_135:  mov     eax, dword [ebp+8H]                     ; 1A16 _ 8B. 45, 08
        mov     edx, dword [eax+18H]                    ; 1A19 _ 8B. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1A1C _ 8B. 45, F4
        imul    eax, dword [ebp-4H]                     ; 1A1F _ 0F AF. 45, FC
        mov     ecx, eax                                ; 1A23 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 1A25 _ 8B. 45, F8
        add     eax, ecx                                ; 1A28 _ 01. C8
        add     eax, edx                                ; 1A2A _ 01. D0
        mov     edx, dword [ebp+10H]                    ; 1A2C _ 8B. 55, 10
        mov     byte [eax], dl                          ; 1A2F _ 88. 10
        add     dword [ebp-8H], 1                       ; 1A31 _ 83. 45, F8, 01
?_136:  mov     eax, dword [ebp+8H]                     ; 1A35 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A38 _ 8B. 00
        mov     edx, dword [eax]                        ; 1A3A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1A3C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1A3F _ 8B. 40, 04
        mov     eax, dword [eax]                        ; 1A42 _ 8B. 00
        add     eax, edx                                ; 1A44 _ 01. D0
        cmp     eax, dword [ebp-8H]                     ; 1A46 _ 3B. 45, F8
        jg      ?_135                                   ; 1A49 _ 7F, CB
        add     dword [ebp-0CH], 1                      ; 1A4B _ 83. 45, F4, 01
?_137:  mov     eax, dword [ebp+8H]                     ; 1A4F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A52 _ 8B. 00
        mov     edx, dword [eax+4H]                     ; 1A54 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A57 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1A5A _ 8B. 40, 04
        mov     eax, dword [eax+4H]                     ; 1A5D _ 8B. 40, 04
        add     eax, edx                                ; 1A60 _ 01. D0
        cmp     eax, dword [ebp-0CH]                    ; 1A62 _ 3B. 45, F4
        jg      ?_134                                   ; 1A65 _ 7F, A3
        nop                                             ; 1A67 _ 90
        leave                                           ; 1A68 _ C9
        ret                                             ; 1A69 _ C3
; SheetClear End of function

SheetPrintTab:; Function begin
        push    ebp                                     ; 1A6A _ 55
        mov     ebp, esp                                ; 1A6B _ 89. E5
        push    ebx                                     ; 1A6D _ 53
        sub     esp, 16                                 ; 1A6E _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1A71 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 1A74 _ 0F B7. 40, 04
        cwde                                            ; 1A78 _ 98
        mov     dword [ebp-8H], eax                     ; 1A79 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1A7C _ 8B. 45, 10
        mov     ebx, dword [eax+18H]                    ; 1A7F _ 8B. 58, 18
        mov     eax, dword [ebp-8H]                     ; 1A82 _ 8B. 45, F8
        cdq                                             ; 1A85 _ 99
        idiv    ebx                                     ; 1A86 _ F7. FB
        mov     word [ebp-0AH], ax                      ; 1A88 _ 66: 89. 45, F6
        movsx   ecx, word [ebp-0AH]                     ; 1A8C _ 0F BF. 4D, F6
        mov     eax, dword [ebp+10H]                    ; 1A90 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 1A93 _ 8B. 10
        movsx   eax, word [ebp-0AH]                     ; 1A95 _ 0F BF. 45, F6
        imul    eax, dword [ebp+14H]                    ; 1A99 _ 0F AF. 45, 14
        add     eax, edx                                ; 1A9D _ 01. D0
        movsx   ebx, word [ebp-0AH]                     ; 1A9F _ 0F BF. 5D, F6
        cdq                                             ; 1AA3 _ 99
        idiv    ebx                                     ; 1AA4 _ F7. FB
        imul    ecx, eax                                ; 1AA6 _ 0F AF. C8
        mov     edx, ecx                                ; 1AA9 _ 89. CA
        mov     eax, dword [ebp+10H]                    ; 1AAB _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1AAE _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 1AB0 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 1AB3 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 1AB5 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1AB8 _ 8B. 40, 10
        mov     ecx, dword [ebp-8H]                     ; 1ABB _ 8B. 4D, F8
        sub     ecx, eax                                ; 1ABE _ 29. C1
        mov     eax, ecx                                ; 1AC0 _ 89. C8
        cmp     edx, eax                                ; 1AC2 _ 39. C2
        jl      ?_138                                   ; 1AC4 _ 7C, 11
        push    dword [ebp+10H]                         ; 1AC6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1AC9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1ACC _ FF. 75, 08
        call    SheetPrintln                            ; 1ACF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1AD4 _ 83. C4, 0C
?_138:  nop                                             ; 1AD7 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1AD8 _ 8B. 5D, FC
        leave                                           ; 1ADB _ C9
        ret                                             ; 1ADC _ C3
; SheetPrintTab End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1ADD _ 55
        mov     ebp, esp                                ; 1ADE _ 89. E5
        sub     esp, 8                                  ; 1AE0 _ 83. EC, 08
?_139:  sub     esp, 12                                 ; 1AE3 _ 83. EC, 0C
        push    100                                     ; 1AE6 _ 6A, 64
        call    io_in8                                  ; 1AE8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AED _ 83. C4, 10
        movsx   eax, al                                 ; 1AF0 _ 0F BE. C0
        and     eax, 02H                                ; 1AF3 _ 83. E0, 02
        test    eax, eax                                ; 1AF6 _ 85. C0
        jz      ?_140                                   ; 1AF8 _ 74, 02
        jmp     ?_139                                   ; 1AFA _ EB, E7

?_140:  nop                                             ; 1AFC _ 90
        nop                                             ; 1AFD _ 90
        leave                                           ; 1AFE _ C9
        ret                                             ; 1AFF _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1B00 _ 55
        mov     ebp, esp                                ; 1B01 _ 89. E5
        sub     esp, 8                                  ; 1B03 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 1B06 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B0B _ 83. EC, 08
        push    96                                      ; 1B0E _ 6A, 60
        push    100                                     ; 1B10 _ 6A, 64
        call    io_out8                                 ; 1B12 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B17 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1B1A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B1F _ 83. EC, 08
        push    71                                      ; 1B22 _ 6A, 47
        push    96                                      ; 1B24 _ 6A, 60
        call    io_out8                                 ; 1B26 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B2B _ 83. C4, 10
        nop                                             ; 1B2E _ 90
        leave                                           ; 1B2F _ C9
        ret                                             ; 1B30 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1B31 _ 55
        mov     ebp, esp                                ; 1B32 _ 89. E5
        sub     esp, 8                                  ; 1B34 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 1B37 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B3C _ 83. EC, 08
        push    212                                     ; 1B3F _ 68, 000000D4
        push    100                                     ; 1B44 _ 6A, 64
        call    io_out8                                 ; 1B46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B4B _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1B4E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1B53 _ 83. EC, 08
        push    244                                     ; 1B56 _ 68, 000000F4
        push    96                                      ; 1B5B _ 6A, 60
        call    io_out8                                 ; 1B5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B62 _ 83. C4, 10
        nop                                             ; 1B65 _ 90
        leave                                           ; 1B66 _ C9
        ret                                             ; 1B67 _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1B68 _ 55
        mov     ebp, esp                                ; 1B69 _ 89. E5
        sub     esp, 4                                  ; 1B6B _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1B6E _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1B71 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1B74 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B77 _ 0F B6. 40, 03
        test    al, al                                  ; 1B7B _ 84. C0
        jnz     ?_142                                   ; 1B7D _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1B7F _ 80. 7D, FC, FA
        jnz     ?_141                                   ; 1B83 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1B85 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1B88 _ C6. 40, 03, 01
?_141:  mov     eax, 0                                  ; 1B8C _ B8, 00000000
        jmp     ?_149                                   ; 1B91 _ E9, 0000010F

?_142:  mov     eax, dword [ebp+8H]                     ; 1B96 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1B99 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1B9D _ 3C, 01
        jnz     ?_144                                   ; 1B9F _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1BA1 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1BA5 _ 25, 000000C8
        cmp     eax, 8                                  ; 1BAA _ 83. F8, 08
        jnz     ?_143                                   ; 1BAD _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1BAF _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1BB2 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1BB6 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1BB8 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1BBB _ C6. 40, 03, 02
?_143:  mov     eax, 0                                  ; 1BBF _ B8, 00000000
        jmp     ?_149                                   ; 1BC4 _ E9, 000000DC

?_144:  mov     eax, dword [ebp+8H]                     ; 1BC9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1BCC _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1BD0 _ 3C, 02
        jnz     ?_145                                   ; 1BD2 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1BD4 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1BD7 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1BDB _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BDE _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1BE1 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1BE5 _ B8, 00000000
        jmp     ?_149                                   ; 1BEA _ E9, 000000B6

?_145:  mov     eax, dword [ebp+8H]                     ; 1BEF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1BF2 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1BF6 _ 3C, 03
        jne     ?_148                                   ; 1BF8 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1BFE _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1C01 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1C05 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1C08 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1C0B _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1C0F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C12 _ 0F B6. 00
        movzx   eax, al                                 ; 1C15 _ 0F B6. C0
        and     eax, 07H                                ; 1C18 _ 83. E0, 07
        mov     edx, eax                                ; 1C1B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C1D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1C20 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1C23 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1C26 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1C2A _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1C2D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1C30 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C33 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1C36 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1C3A _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1C3D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C40 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1C43 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C46 _ 0F B6. 00
        movzx   eax, al                                 ; 1C49 _ 0F B6. C0
        and     eax, 10H                                ; 1C4C _ 83. E0, 10
        test    eax, eax                                ; 1C4F _ 85. C0
        jz      ?_146                                   ; 1C51 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C53 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1C56 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1C59 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C5E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C60 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1C63 _ 89. 50, 04
?_146:  mov     eax, dword [ebp+8H]                     ; 1C66 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C69 _ 0F B6. 00
        movzx   eax, al                                 ; 1C6C _ 0F B6. C0
        and     eax, 20H                                ; 1C6F _ 83. E0, 20
        test    eax, eax                                ; 1C72 _ 85. C0
        jz      ?_147                                   ; 1C74 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1C76 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C79 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1C7C _ 0D, FFFFFF00
        mov     edx, eax                                ; 1C81 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C83 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C86 _ 89. 50, 08
?_147:  mov     eax, dword [ebp+8H]                     ; 1C89 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C8C _ 8B. 40, 08
        neg     eax                                     ; 1C8F _ F7. D8
        mov     edx, eax                                ; 1C91 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C93 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C96 _ 89. 50, 08
        mov     eax, 1                                  ; 1C99 _ B8, 00000001
        jmp     ?_149                                   ; 1C9E _ EB, 05

?_148:  mov     eax, 4294967295                         ; 1CA0 _ B8, FFFFFFFF
?_149:  leave                                           ; 1CA5 _ C9
        ret                                             ; 1CA6 _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 1CA7 _ 55
        mov     ebp, esp                                ; 1CA8 _ 89. E5
        sub     esp, 4                                  ; 1CAA _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1CAD _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1CB0 _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 1CB3 _ 80. 7D, FC, 0E
        jbe     ?_150                                   ; 1CB7 _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 1CB9 _ 80. 7D, FC, 35
        ja      ?_150                                   ; 1CBD _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 1CBF _ 0F B6. 45, FC
        sub     eax, 15                                 ; 1CC3 _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.1983+eax]       ; 1CC6 _ 0F B6. 80, 00000240(d)
        jmp     ?_152                                   ; 1CCD _ EB, 21

?_150:  cmp     byte [ebp-4H], 1                        ; 1CCF _ 80. 7D, FC, 01
        jbe     ?_151                                   ; 1CD3 _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 1CD5 _ 80. 7D, FC, 0E
        ja      ?_151                                   ; 1CD9 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 1CDB _ 0F B6. 45, FC
        sub     eax, 2                                  ; 1CDF _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.1984+eax]    ; 1CE2 _ 0F B6. 80, 00000268(d)
        jmp     ?_152                                   ; 1CE9 _ EB, 05

?_151:  mov     eax, 0                                  ; 1CEB _ B8, 00000000
?_152:  leave                                           ; 1CF0 _ C9
        ret                                             ; 1CF1 _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 1CF2 _ 55
        mov     ebp, esp                                ; 1CF3 _ 89. E5
        sub     esp, 4                                  ; 1CF5 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1CF8 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1CFB _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 1CFE _ 80. 7D, FC, 8E
        jbe     ?_153                                   ; 1D02 _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 1D04 _ 80. 7D, FC, B5
        ja      ?_153                                   ; 1D08 _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 1D0A _ 0F B6. 45, FC
        sub     eax, 143                                ; 1D0E _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.1988+eax]       ; 1D13 _ 0F B6. 80, 00000280(d)
        jmp     ?_155                                   ; 1D1A _ EB, 23

?_153:  cmp     byte [ebp-4H], -127                     ; 1D1C _ 80. 7D, FC, 81
        jbe     ?_154                                   ; 1D20 _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 1D22 _ 80. 7D, FC, 8E
        ja      ?_154                                   ; 1D26 _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 1D28 _ 0F B6. 45, FC
        sub     eax, 130                                ; 1D2C _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.1989+eax]    ; 1D31 _ 0F B6. 80, 000002A8(d)
        jmp     ?_155                                   ; 1D38 _ EB, 05

?_154:  mov     eax, 0                                  ; 1D3A _ B8, 00000000
?_155:  leave                                           ; 1D3F _ C9
        ret                                             ; 1D40 _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 1D41 _ 55
        mov     ebp, esp                                ; 1D42 _ 89. E5
        push    ebx                                     ; 1D44 _ 53
        mov     eax, dword [ebp+10H]                    ; 1D45 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1D48 _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 1D4B _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 1D4E _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1D51 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 1D53 _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 1D56 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1D59 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1D5C _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1D5F _ 8B. 00
        push    ebx                                     ; 1D61 _ 53
        push    ecx                                     ; 1D62 _ 51
        push    edx                                     ; 1D63 _ 52
        push    eax                                     ; 1D64 _ 50
        push    -1                                      ; 1D65 _ 6A, FF
        push    dword [ebp+0CH]                         ; 1D67 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D6A _ FF. 75, 08
        call    boxfill8                                ; 1D6D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1D72 _ 83. C4, 1C
        nop                                             ; 1D75 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1D76 _ 8B. 5D, FC
        leave                                           ; 1D79 _ C9
        ret                                             ; 1D7A _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 1D7B _ 55
        mov     ebp, esp                                ; 1D7C _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1D7E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1D81 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1D84 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1D87 _ 8B. 00
        push    cursor                                  ; 1D89 _ 68, 00000000(d)
        push    edx                                     ; 1D8E _ 52
        push    eax                                     ; 1D8F _ 50
        push    dword [ebp+0CH]                         ; 1D90 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D93 _ FF. 75, 08
        call    PrintRGB                                ; 1D96 _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 1D9B _ 83. C4, 14
        nop                                             ; 1D9E _ 90
        leave                                           ; 1D9F _ C9
        ret                                             ; 1DA0 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 1DA1 _ 55
        mov     ebp, esp                                ; 1DA2 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 1DA4 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1DA7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1DA9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1DAC _ 8B. 40, 04
        add     edx, eax                                ; 1DAF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1DB1 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 1DB4 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 1DB6 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1DB9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1DBC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1DBF _ 8B. 40, 08
        add     edx, eax                                ; 1DC2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1DC4 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 1DC7 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1DCA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DCD _ 8B. 00
        test    eax, eax                                ; 1DCF _ 85. C0
        jns     ?_156                                   ; 1DD1 _ 79, 09
        mov     eax, dword [ebp+0CH]                    ; 1DD3 _ 8B. 45, 0C
        mov     dword [eax], 0                          ; 1DD6 _ C7. 00, 00000000
?_156:  mov     eax, dword [ebp+0CH]                    ; 1DDC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DDF _ 8B. 40, 04
        test    eax, eax                                ; 1DE2 _ 85. C0
        jns     ?_157                                   ; 1DE4 _ 79, 0A
        mov     eax, dword [ebp+0CH]                    ; 1DE6 _ 8B. 45, 0C
        mov     dword [eax+4H], 0                       ; 1DE9 _ C7. 40, 04, 00000000
?_157:  mov     eax, dword [ebp+0CH]                    ; 1DF0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1DF3 _ 8B. 00
        cmp     eax, dword [ebp+10H]                    ; 1DF5 _ 3B. 45, 10
        jle     ?_158                                   ; 1DF8 _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 1DFA _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1DFD _ 8B. 55, 10
        mov     dword [eax], edx                        ; 1E00 _ 89. 10
?_158:  mov     eax, dword [ebp+0CH]                    ; 1E02 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E05 _ 8B. 40, 04
        cmp     eax, dword [ebp+14H]                    ; 1E08 _ 3B. 45, 14
        jle     ?_159                                   ; 1E0B _ 7E, 09
        mov     eax, dword [ebp+0CH]                    ; 1E0D _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1E10 _ 8B. 55, 14
        mov     dword [eax+4H], edx                     ; 1E13 _ 89. 50, 04
?_159:  nop                                             ; 1E16 _ 90
        pop     ebp                                     ; 1E17 _ 5D
        ret                                             ; 1E18 _ C3
; computeMousePosition End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 1E19 _ 55
        mov     ebp, esp                                ; 1E1A _ 89. E5
        sub     esp, 24                                 ; 1E1C _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1E1F _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1E24 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1E27 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1E2E _ 98
        mov     dword [ebp-10H], eax                    ; 1E2F _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1E32 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1E39 _ 98
        mov     dword [ebp-0CH], eax                    ; 1E3A _ 89. 45, F4
        sub     esp, 8                                  ; 1E3D _ 83. EC, 08
        push    33                                      ; 1E40 _ 6A, 21
        push    32                                      ; 1E42 _ 6A, 20
        call    io_out8                                 ; 1E44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E49 _ 83. C4, 10
        sub     esp, 12                                 ; 1E4C _ 83. EC, 0C
        push    96                                      ; 1E4F _ 6A, 60
        call    io_in8                                  ; 1E51 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E56 _ 83. C4, 10
        sub     esp, 4                                  ; 1E59 _ 83. EC, 04
        push    txtCursor                               ; 1E5C _ 68, 00000000(d)
        push    bootInfo                                ; 1E61 _ 68, 00000000(d)
        push    ?_176                                   ; 1E66 _ 68, 00000045(d)
        call    Printf                                  ; 1E6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E70 _ 83. C4, 10
        nop                                             ; 1E73 _ 90
        leave                                           ; 1E74 _ C9
        ret                                             ; 1E75 _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 1E76 _ 55
        mov     ebp, esp                                ; 1E77 _ 89. E5
        sub     esp, 24                                 ; 1E79 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1E7C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1E81 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1E84 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1E8B _ 98
        mov     dword [ebp-10H], eax                    ; 1E8C _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1E8F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1E96 _ 98
        mov     dword [ebp-0CH], eax                    ; 1E97 _ 89. 45, F4
        sub     esp, 8                                  ; 1E9A _ 83. EC, 08
        push    33                                      ; 1E9D _ 6A, 21
        push    32                                      ; 1E9F _ 6A, 20
        call    io_out8                                 ; 1EA1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EA6 _ 83. C4, 10
        sub     esp, 12                                 ; 1EA9 _ 83. EC, 0C
        push    96                                      ; 1EAC _ 6A, 60
        call    io_in8                                  ; 1EAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EB3 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1EB6 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1EB9 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1EBD _ 83. EC, 08
        push    eax                                     ; 1EC0 _ 50
        push    KEY_FIFO8                               ; 1EC1 _ 68, 00000000(d)
        call    fifo8_w                                 ; 1EC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ECB _ 83. C4, 10
        nop                                             ; 1ECE _ 90
        leave                                           ; 1ECF _ C9
        ret                                             ; 1ED0 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 1ED1 _ 55
        mov     ebp, esp                                ; 1ED2 _ 89. E5
        sub     esp, 24                                 ; 1ED4 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1ED7 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1EDC _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1EDF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1EE6 _ 98
        mov     dword [ebp-10H], eax                    ; 1EE7 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1EEA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1EF1 _ 98
        mov     dword [ebp-0CH], eax                    ; 1EF2 _ 89. 45, F4
        sub     esp, 8                                  ; 1EF5 _ 83. EC, 08
        push    32                                      ; 1EF8 _ 6A, 20
        push    160                                     ; 1EFA _ 68, 000000A0
        call    io_out8                                 ; 1EFF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F04 _ 83. C4, 10
        sub     esp, 8                                  ; 1F07 _ 83. EC, 08
        push    32                                      ; 1F0A _ 6A, 20
        push    32                                      ; 1F0C _ 6A, 20
        call    io_out8                                 ; 1F0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F13 _ 83. C4, 10
        sub     esp, 12                                 ; 1F16 _ 83. EC, 0C
        push    96                                      ; 1F19 _ 6A, 60
        call    io_in8                                  ; 1F1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F20 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1F23 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1F26 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1F2A _ 83. EC, 08
        push    eax                                     ; 1F2D _ 50
        push    MOUSE_FIFO8                             ; 1F2E _ 68, 00000000(d)
        call    fifo8_w                                 ; 1F33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F38 _ 83. C4, 10
        nop                                             ; 1F3B _ 90
        leave                                           ; 1F3C _ C9
        ret                                             ; 1F3D _ C3
; intHandlerFromC_mouse End of function

CMain:  ; Function begin
        push    ebp                                     ; 1F3E _ 55
        mov     ebp, esp                                ; 1F3F _ 89. E5
        sub     esp, 88                                 ; 1F41 _ 83. EC, 58
        call    pict_init                               ; 1F44 _ E8, FFFFFFFC(rel)
        call    getAddrRangeDescArray                   ; 1F49 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 1F4E _ 89. 45, AC
        mov     eax, dword [HEAP_BASE_ADDR]             ; 1F51 _ A1, 00000000(d)
        sub     esp, 8                                  ; 1F56 _ 83. EC, 08
        push    -799080448                              ; 1F59 _ 68, D05F0000
        push    eax                                     ; 1F5E _ 50
        call    memman_free                             ; 1F5F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F64 _ 83. C4, 10
        cmp     eax, -1                                 ; 1F67 _ 83. F8, FF
        jnz     ?_160                                   ; 1F6A _ 75, 1A
        sub     esp, 4                                  ; 1F6C _ 83. EC, 04
        push    txtCursor                               ; 1F6F _ 68, 00000000(d)
        push    bootInfo                                ; 1F74 _ 68, 00000000(d)
        push    ?_177                                   ; 1F79 _ 68, 00000048(d)
        call    Printf                                  ; 1F7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F83 _ 83. C4, 10
?_160:  mov     eax, dword [bootInfo]                   ; 1F86 _ A1, 00000000(d)
        mov     dword [ebp-50H], eax                    ; 1F8B _ 89. 45, B0
        movzx   eax, word [bootInfo+4H]                 ; 1F8E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1F95 _ 98
        mov     dword [ebp-4CH], eax                    ; 1F96 _ 89. 45, B4
        movzx   eax, word [bootInfo+6H]                 ; 1F99 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1FA0 _ 98
        mov     dword [ebp-48H], eax                    ; 1FA1 _ 89. 45, B8
        sub     esp, 12                                 ; 1FA4 _ 83. EC, 0C
        push    8                                       ; 1FA7 _ 6A, 08
        call    malloc_8                                ; 1FA9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FAE _ 83. C4, 10
        mov     dword [ebp-44H], eax                    ; 1FB1 _ 89. 45, BC
        mov     eax, dword [ebp-44H]                    ; 1FB4 _ 8B. 45, BC
        mov     dword [eax], 0                          ; 1FB7 _ C7. 00, 00000000
        mov     eax, dword [ebp-44H]                    ; 1FBD _ 8B. 45, BC
        mov     dword [eax+4H], 0                       ; 1FC0 _ C7. 40, 04, 00000000
        sub     esp, 12                                 ; 1FC7 _ 83. EC, 0C
        push    8                                       ; 1FCA _ 6A, 08
        call    malloc_8                                ; 1FCC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FD1 _ 83. C4, 10
        mov     dword [ebp-40H], eax                    ; 1FD4 _ 89. 45, C0
        movzx   eax, word [bootInfo+4H]                 ; 1FD7 _ 0F B7. 05, 00000004(d)
        movsx   edx, ax                                 ; 1FDE _ 0F BF. D0
        mov     eax, dword [ebp-40H]                    ; 1FE1 _ 8B. 45, C0
        mov     dword [eax], edx                        ; 1FE4 _ 89. 10
        movzx   eax, word [bootInfo+6H]                 ; 1FE6 _ 0F B7. 05, 00000006(d)
        movsx   edx, ax                                 ; 1FED _ 0F BF. D0
        mov     eax, dword [ebp-40H]                    ; 1FF0 _ 8B. 45, C0
        mov     dword [eax+4H], edx                     ; 1FF3 _ 89. 50, 04
        sub     esp, 12                                 ; 1FF6 _ 83. EC, 0C
        push    8                                       ; 1FF9 _ 6A, 08
        call    malloc_8                                ; 1FFB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2000 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 2003 _ 89. 45, C4
        mov     eax, dword [ebp-3CH]                    ; 2006 _ 8B. 45, C4
        mov     dword [eax], 9                          ; 2009 _ C7. 00, 00000009
        mov     eax, dword [ebp-3CH]                    ; 200F _ 8B. 45, C4
        mov     dword [eax+4H], 9                       ; 2012 _ C7. 40, 04, 00000009
        sub     esp, 12                                 ; 2019 _ 83. EC, 0C
        push    8                                       ; 201C _ 6A, 08
        call    malloc_8                                ; 201E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2023 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 2026 _ 89. 45, C8
        mov     eax, dword [ebp-38H]                    ; 2029 _ 8B. 45, C8
        mov     dword [eax], 160                        ; 202C _ C7. 00, 000000A0
        mov     eax, dword [ebp-38H]                    ; 2032 _ 8B. 45, C8
        mov     dword [eax+4H], 80                      ; 2035 _ C7. 40, 04, 00000050
        sub     esp, 12                                 ; 203C _ 83. EC, 0C
        push    8                                       ; 203F _ 6A, 08
        call    malloc_8                                ; 2041 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2046 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 2049 _ 89. 45, CC
        mov     eax, dword [ebp-34H]                    ; 204C _ 8B. 45, CC
        mov     dword [eax], 20                         ; 204F _ C7. 00, 00000014
        mov     eax, dword [ebp-34H]                    ; 2055 _ 8B. 45, CC
        mov     dword [eax+4H], 20                      ; 2058 _ C7. 40, 04, 00000014
        sub     esp, 12                                 ; 205F _ 83. EC, 0C
        push    65535                                   ; 2062 _ 68, 0000FFFF
        call    malloc_8                                ; 2067 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 206C _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 206F _ 89. 45, D0
        sub     esp, 4                                  ; 2072 _ 83. EC, 04
        push    65535                                   ; 2075 _ 68, 0000FFFF
        push    255                                     ; 207A _ 68, 000000FF
        push    dword [ebp-30H]                         ; 207F _ FF. 75, D0
        call    memset_8                                ; 2082 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2087 _ 83. C4, 10
        sub     esp, 12                                 ; 208A _ 83. EC, 0C
        push    dword [ebp-30H]                         ; 208D _ FF. 75, D0
        push    0                                       ; 2090 _ 6A, 00
        push    65535                                   ; 2092 _ 68, 0000FFFF
        push    dword [ebp-3CH]                         ; 2097 _ FF. 75, C4
        push    dword [ebp-34H]                         ; 209A _ FF. 75, CC
        call    insertSheet                             ; 209D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20A2 _ 83. C4, 20
        mov     dword [ebp-2CH], eax                    ; 20A5 _ 89. 45, D4
        sub     esp, 12                                 ; 20A8 _ 83. EC, 0C
        push    65535                                   ; 20AB _ 68, 0000FFFF
        call    malloc_8                                ; 20B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20B5 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 20B8 _ 89. 45, D8
        sub     esp, 4                                  ; 20BB _ 83. EC, 04
        push    65535                                   ; 20BE _ 68, 0000FFFF
        push    255                                     ; 20C3 _ 68, 000000FF
        push    dword [ebp-28H]                         ; 20C8 _ FF. 75, D8
        call    memset_8                                ; 20CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20D0 _ 83. C4, 10
        mov     eax, dword [ebp-28H]                    ; 20D3 _ 8B. 45, D8
        mov     dword [txtInfo_1], eax                  ; 20D6 _ A3, 00000000(d)
        sub     esp, 12                                 ; 20DB _ 83. EC, 0C
        push    dword [ebp-28H]                         ; 20DE _ FF. 75, D8
        push    1                                       ; 20E1 _ 6A, 01
        push    65535                                   ; 20E3 _ 68, 0000FFFF
        push    dword [ebp-40H]                         ; 20E8 _ FF. 75, C0
        push    dword [ebp-44H]                         ; 20EB _ FF. 75, BC
        call    insertSheet                             ; 20EE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20F3 _ 83. C4, 20
        mov     dword [ebp-24H], eax                    ; 20F6 _ 89. 45, DC
        sub     esp, 12                                 ; 20F9 _ 83. EC, 0C
        push    65535                                   ; 20FC _ 68, 0000FFFF
        call    malloc_8                                ; 2101 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2106 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 2109 _ 89. 45, E0
        sub     esp, 4                                  ; 210C _ 83. EC, 04
        push    65535                                   ; 210F _ 68, 0000FFFF
        push    255                                     ; 2114 _ 68, 000000FF
        push    dword [ebp-20H]                         ; 2119 _ FF. 75, E0
        call    memset_8                                ; 211C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2121 _ 83. C4, 10
        sub     esp, 12                                 ; 2124 _ 83. EC, 0C
        push    dword [ebp-20H]                         ; 2127 _ FF. 75, E0
        push    2                                       ; 212A _ 6A, 02
        push    65535                                   ; 212C _ 68, 0000FFFF
        push    dword [ebp-38H]                         ; 2131 _ FF. 75, C8
        push    dword [ebp-44H]                         ; 2134 _ FF. 75, BC
        call    insertSheet                             ; 2137 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 213C _ 83. C4, 20
        mov     dword [ebp-1CH], eax                    ; 213F _ 89. 45, E4
        sub     esp, 12                                 ; 2142 _ 83. EC, 0C
        push    65535                                   ; 2145 _ 68, 0000FFFF
        call    malloc_8                                ; 214A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 214F _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 2152 _ 89. 45, E8
        sub     esp, 4                                  ; 2155 _ 83. EC, 04
        push    65535                                   ; 2158 _ 68, 0000FFFF
        push    15                                      ; 215D _ 6A, 0F
        push    dword [ebp-18H]                         ; 215F _ FF. 75, E8
        call    memset_8                                ; 2162 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2167 _ 83. C4, 10
        sub     esp, 12                                 ; 216A _ 83. EC, 0C
        push    dword [ebp-18H]                         ; 216D _ FF. 75, E8
        push    255                                     ; 2170 _ 68, 000000FF
        push    65535                                   ; 2175 _ 68, 0000FFFF
        push    dword [ebp-40H]                         ; 217A _ FF. 75, C0
        push    dword [ebp-44H]                         ; 217D _ FF. 75, BC
        call    insertSheet                             ; 2180 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2185 _ 83. C4, 20
        call    io_sti                                  ; 2188 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 218D _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 2192 _ 83. EC, 04
        push    128                                     ; 2195 _ 68, 00000080
        push    key_buf                                 ; 219A _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 219F _ 68, 00000000(d)
        call    fifo8_init                              ; 21A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21A9 _ 83. C4, 10
        sub     esp, 4                                  ; 21AC _ 83. EC, 04
        push    256                                     ; 21AF _ 68, 00000100
        push    mouse_buf                               ; 21B4 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 21B9 _ 68, 00000000(d)
        call    fifo8_init                              ; 21BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21C3 _ 83. C4, 10
        call    init_keyboard                           ; 21C6 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 21CB _ 83. EC, 0C
        push    bootInfo                                ; 21CE _ 68, 00000000(d)
        call    drawSheetList                           ; 21D3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21D8 _ 83. C4, 10
        mov     dword [ebp-14H], 0                      ; 21DB _ C7. 45, EC, 00000000
?_161:  call    io_cli                                  ; 21E2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 21E7 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 21EA _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 21EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21F4 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 21F7 _ 89. 45, F0
        sub     esp, 12                                 ; 21FA _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 21FD _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 2202 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2207 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 220A _ 89. 45, F4
        cmp     dword [ebp-10H], 0                      ; 220D _ 83. 7D, F0, 00
        jz      ?_162                                   ; 2211 _ 74, 10
        cmp     dword [ebp-0CH], 0                      ; 2213 _ 83. 7D, F4, 00
        jz      ?_162                                   ; 2217 _ 74, 0A
        call    io_stihlt                               ; 2219 _ E8, FFFFFFFC(rel)
        jmp     ?_167                                   ; 221E _ E9, 000001F9

?_162:  cmp     dword [ebp-10H], 0                      ; 2223 _ 83. 7D, F0, 00
        jne     ?_166                                   ; 2227 _ 0F 85, 000000AF
        call    io_sti                                  ; 222D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 2232 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 2235 _ 68, 00000000(d)
        call    fifo8_r                                 ; 223A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 223F _ 83. C4, 10
        mov     byte [ebp-57H], al                      ; 2242 _ 88. 45, A9
        movzx   eax, byte [ebp-57H]                     ; 2245 _ 0F B6. 45, A9
        sub     esp, 12                                 ; 2249 _ 83. EC, 0C
        push    eax                                     ; 224C _ 50
        call    getKeyMakeChar                          ; 224D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2252 _ 83. C4, 10
        mov     byte [ebp-56H], al                      ; 2255 _ 88. 45, AA
        cmp     byte [ebp-57H], 28                      ; 2258 _ 80. 7D, A9, 1C
        jnz     ?_163                                   ; 225C _ 75, 2A
        sub     esp, 4                                  ; 225E _ 83. EC, 04
        push    255                                     ; 2261 _ 68, 000000FF
        push    bootInfo                                ; 2266 _ 68, 00000000(d)
        push    dword [ebp-24H]                         ; 226B _ FF. 75, DC
        call    SheetClear                              ; 226E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2273 _ 83. C4, 10
        sub     esp, 12                                 ; 2276 _ 83. EC, 0C
        push    txtCursor                               ; 2279 _ 68, 00000000(d)
        call    initCursor                              ; 227E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2283 _ 83. C4, 10
        jmp     ?_165                                   ; 2286 _ EB, 3F

?_163:  cmp     byte [ebp-56H], 9                       ; 2288 _ 80. 7D, AA, 09
        jnz     ?_164                                   ; 228C _ 75, 19
        sub     esp, 4                                  ; 228E _ 83. EC, 04
        push    1                                       ; 2291 _ 6A, 01
        push    txtCursor                               ; 2293 _ 68, 00000000(d)
        push    bootInfo                                ; 2298 _ 68, 00000000(d)
        call    PrintTab                                ; 229D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22A2 _ 83. C4, 10
        jmp     ?_165                                   ; 22A5 _ EB, 20

?_164:  cmp     byte [ebp-56H], 0                       ; 22A7 _ 80. 7D, AA, 00
        jz      ?_165                                   ; 22AB _ 74, 1A
        movsx   eax, byte [ebp-56H]                     ; 22AD _ 0F BE. 45, AA
        sub     esp, 4                                  ; 22B1 _ 83. EC, 04
        push    txtCursor                               ; 22B4 _ 68, 00000000(d)
        push    txtInfo_1                               ; 22B9 _ 68, 00000000(d)
        push    eax                                     ; 22BE _ 50
        call    PrintChar                               ; 22BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22C4 _ 83. C4, 10
?_165:  sub     esp, 12                                 ; 22C7 _ 83. EC, 0C
        push    bootInfo                                ; 22CA _ 68, 00000000(d)
        call    drawSheetList                           ; 22CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22D4 _ 83. C4, 10
        jmp     ?_161                                   ; 22D7 _ E9, FFFFFF06

?_166:  cmp     dword [ebp-0CH], 0                      ; 22DC _ 83. 7D, F4, 00
        jne     ?_161                                   ; 22E0 _ 0F 85, FFFFFEFC
        call    io_sti                                  ; 22E6 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 22EB _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 22EE _ 68, 00000000(d)
        call    fifo8_r                                 ; 22F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22F8 _ 83. C4, 10
        mov     byte [ebp-55H], al                      ; 22FB _ 88. 45, AB
        movzx   eax, byte [ebp-55H]                     ; 22FE _ 0F B6. 45, AB
        sub     esp, 8                                  ; 2302 _ 83. EC, 08
        push    eax                                     ; 2305 _ 50
        push    mdec                                    ; 2306 _ 68, 00000000(d)
        call    mouse_decode                            ; 230B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2310 _ 83. C4, 10
        test    eax, eax                                ; 2313 _ 85. C0
        je      ?_161                                   ; 2315 _ 0F 84, FFFFFEC7
        mov     eax, dword [ebp-2CH]                    ; 231B _ 8B. 45, D4
        mov     eax, dword [eax+18H]                    ; 231E _ 8B. 40, 18
        sub     esp, 4                                  ; 2321 _ 83. EC, 04
        push    dword [ebp-34H]                         ; 2324 _ FF. 75, CC
        push    dword [ebp-4CH]                         ; 2327 _ FF. 75, B4
        push    eax                                     ; 232A _ 50
        call    eraseMouse                              ; 232B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2330 _ 83. C4, 10
        push    dword [ebp-48H]                         ; 2333 _ FF. 75, B8
        push    dword [ebp-4CH]                         ; 2336 _ FF. 75, B4
        push    dword [ebp-34H]                         ; 2339 _ FF. 75, CC
        push    mdec                                    ; 233C _ 68, 00000000(d)
        call    computeMousePosition                    ; 2341 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2346 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 2349 _ 8B. 45, D4
        mov     eax, dword [eax+18H]                    ; 234C _ 8B. 40, 18
        sub     esp, 4                                  ; 234F _ 83. EC, 04
        push    dword [ebp-34H]                         ; 2352 _ FF. 75, CC
        push    dword [ebp-4CH]                         ; 2355 _ FF. 75, B4
        push    eax                                     ; 2358 _ 50
        call    drawMouse                               ; 2359 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 235E _ 83. C4, 10
        sub     esp, 12                                 ; 2361 _ 83. EC, 0C
        push    mouseinfoCursor                         ; 2364 _ 68, 00000000(d)
        call    initCursor                              ; 2369 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 236E _ 83. C4, 10
        sub     esp, 4                                  ; 2371 _ 83. EC, 04
        push    255                                     ; 2374 _ 68, 000000FF
        push    bootInfo                                ; 2379 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 237E _ FF. 75, E4
        call    SheetClear                              ; 2381 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2386 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 2389 _ 8B. 45, D4
        mov     eax, dword [eax]                        ; 238C _ 8B. 00
        mov     eax, dword [eax]                        ; 238E _ 8B. 00
        sub     esp, 12                                 ; 2390 _ 83. EC, 0C
        push    eax                                     ; 2393 _ 50
        call    intToHexStr                             ; 2394 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2399 _ 83. C4, 10
        push    mouseinfoCursor                         ; 239C _ 68, 00000000(d)
        push    bootInfo                                ; 23A1 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 23A6 _ FF. 75, E4
        push    eax                                     ; 23A9 _ 50
        call    SheetPrintf                             ; 23AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23AF _ 83. C4, 10
        sub     esp, 4                                  ; 23B2 _ 83. EC, 04
        push    mouseinfoCursor                         ; 23B5 _ 68, 00000000(d)
        push    bootInfo                                ; 23BA _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 23BF _ FF. 75, E4
        call    SheetPrintln                            ; 23C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23C7 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 23CA _ 8B. 45, D4
        mov     eax, dword [eax]                        ; 23CD _ 8B. 00
        mov     eax, dword [eax+4H]                     ; 23CF _ 8B. 40, 04
        sub     esp, 12                                 ; 23D2 _ 83. EC, 0C
        push    eax                                     ; 23D5 _ 50
        call    intToHexStr                             ; 23D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23DB _ 83. C4, 10
        push    mouseinfoCursor                         ; 23DE _ 68, 00000000(d)
        push    bootInfo                                ; 23E3 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 23E8 _ FF. 75, E4
        push    eax                                     ; 23EB _ 50
        call    SheetPrintf                             ; 23EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23F1 _ 83. C4, 10
        sub     esp, 4                                  ; 23F4 _ 83. EC, 04
        push    mouseinfoCursor                         ; 23F7 _ 68, 00000000(d)
        push    bootInfo                                ; 23FC _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 2401 _ FF. 75, E4
        call    SheetPrintln                            ; 2404 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2409 _ 83. C4, 10
        sub     esp, 12                                 ; 240C _ 83. EC, 0C
        push    bootInfo                                ; 240F _ 68, 00000000(d)
        call    drawSheetList                           ; 2414 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2419 _ 83. C4, 10
?_167:  jmp     ?_161                                   ; 241C _ E9, FFFFFDC1
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

memman:                                                 ; byte
        dd 00000000H, 00000000H                         ; 0174 _ 0 0 
        dd 00000000H, 00000400H                         ; 017C _ 0 1024 
        dd 00100000H                                    ; 0184 _ 1048576 

HEAP_BASE_ADDR:                                         ; dword
        dd 00102000H, 00000000H                         ; 0188 _ 1056768 0 
        dd 00000000H, 00000000H                         ; 0190 _ 0 0 
        dd 00000000H, 00000000H                         ; 0198 _ 0 0 

pict:                                                   ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 01A0 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 01A8 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 01B0 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 01B8 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 01C0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 01C8 _ ........

bootInfo: dq 00C80140000A0000H                          ; 01D0 _ 00C80140000A0000 

txtInfo_1:                                              ; qword
        dq 00C8014000000000H                            ; 01D8 _ 00C8014000000000 

txtCursor:                                              ; yword
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 01E0 _ ........
        db 08H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 01E8 _ ........
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 01F0 _ ........
        db 0AH, 00H, 00H, 00H, 07H, 00H, 00H, 00H       ; 01F8 _ ........

mouseinfoCursor:                                        ; yword
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 0200 _ ........
        db 08H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 0208 _ ........
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 0210 _ ........
        db 0AH, 00H, 00H, 00H, 03H, 00H, 00H, 00H       ; 0218 _ ........

str.1540:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0220 _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0228 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0230 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0238 _ ........

keyintToChar.1983:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0240 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0248 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0250 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0258 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0260 _ vbnm,./.

keyintToNumChar.1984:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0268 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0270 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0278 _ ........

keyintToChar.1988:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0280 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0288 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0290 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0298 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 02A0 _ vbnm,./.

keyintToNumChar.1989:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 02A8 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H                      ; 02B0 _ 90-=.




sheetman:                                               ; byte
        resd    352                                     ; 0000

mouse_buf:                                              ; byte
        resb    256                                     ; 0580

key_buf:                                                ; byte
        resb    128                                     ; 0680

MOUSE_FIFO8:                                            ; byte
        resb    20                                      ; 0700

KEY_FIFO8:                                              ; byte
        resb    20                                      ; 0714

mdec:                                                   ; oword
        resb    16                                      ; 0728

str.1536:                                               ; byte
        resb    1                                       ; 0738

?_168:  resb    3                                       ; 0739

addrArray.1591:                                         ; qword
        resb    4                                       ; 073C

?_169:  resd    1                                       ; 0740




?_170:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0000 _ baseAddr
        db 5FH, 4CH, 6FH, 77H, 3AH, 20H, 00H            ; 0008 _ _Low: .

?_171:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 000F _ baseAddr
        db 5FH, 48H, 69H, 67H, 68H, 74H, 3AH, 20H       ; 0017 _ _Hight: 
        db 00H                                          ; 001F _ .

?_172:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 4CH       ; 0020 _ length_L
        db 6FH, 77H, 3AH, 20H, 00H                      ; 0028 _ ow: .

?_173:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 48H       ; 002D _ length_H
        db 69H, 67H, 68H, 74H, 3AH, 20H, 00H            ; 0035 _ ight: .

?_174:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003C _ type: .

?_175:                                                  ; byte
        db 20H, 00H                                     ; 0043 _  .

?_176:                                                  ; byte
        db 73H, 70H, 00H                                ; 0045 _ sp.

?_177:                                                  ; byte
        db 46H, 72H, 65H, 65H, 20H, 66H, 61H, 69H       ; 0048 _ Free fai
        db 6CH, 65H, 64H, 21H, 00H                      ; 0050 _ led!.


