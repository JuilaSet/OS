; Disassembly of file: main.o
; Wed Nov 13 03:14:46 2019
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
        mov     byte [?_179], al                        ; 0164 _ A2, 00000819(d)
        shr     byte [ebp-4H], 4                        ; 0169 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 016D _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0171 _ 0F BE. C0
        and     eax, 0FH                                ; 0174 _ 83. E0, 0F
        push    eax                                     ; 0177 _ 50
        call    charToHex                               ; 0178 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 017D _ 83. C4, 04
        mov     byte [str.1536], al                     ; 0180 _ A2, 00000818(d)
        mov     eax, str.1536                           ; 0185 _ B8, 00000818(d)
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
        mov     dword [addrArray.1591], eax             ; 02B8 _ A3, 0000081C(d)
        call    GET_MEMDESC_ADDR                        ; 02BD _ E8, FFFFFFFC(rel)
        mov     dword [?_180], eax                      ; 02C2 _ A3, 00000820(d)
        mov     eax, addrArray.1591                     ; 02C7 _ B8, 0000081C(d)
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
        push    ?_181                                   ; 0FE4 _ 68, 00000000(d)
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
        push    ?_182                                   ; 1032 _ 68, 0000000F(d)
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
        push    ?_183                                   ; 1081 _ 68, 00000020(d)
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
        push    ?_184                                   ; 10D0 _ 68, 0000002D(d)
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
        push    ?_185                                   ; 111F _ 68, 0000003C(d)
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
        push    ?_186                                   ; 11A6 _ 68, 00000043(d)
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
        jmp     ?_105                                   ; 11CF _ E9, 00000159

?_100:  mov     eax, dword [ebp-10H]                    ; 11D4 _ 8B. 45, F0
        shl     eax, 5                                  ; 11D7 _ C1. E0, 05
        add     eax, sheetman                           ; 11DA _ 05, 00000000(d)
        add     eax, 12                                 ; 11DF _ 83. C0, 0C
        mov     dword [ebp-8H], eax                     ; 11E2 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 11E5 _ 8B. 45, F8
        mov     eax, dword [eax+14H]                    ; 11E8 _ 8B. 40, 14
        and     eax, 01H                                ; 11EB _ 83. E0, 01
        test    eax, eax                                ; 11EE _ 85. C0
        je      ?_103                                   ; 11F0 _ 0F 84, 00000100
        mov     eax, dword [ebp-8H]                     ; 11F6 _ 8B. 45, F8
        mov     eax, dword [eax+8H]                     ; 11F9 _ 8B. 40, 08
        cmp     eax, dword [ebp+18H]                    ; 11FC _ 3B. 45, 18
        jle     ?_103                                   ; 11FF _ 0F 8E, 000000F1
        mov     eax, dword [sheetman]                   ; 1205 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 120A _ 89. 45, F4
        jmp     ?_102                                   ; 120D _ E9, 000000D6

?_101:  mov     eax, dword [ebp-0CH]                    ; 1212 _ 8B. 45, F4
        sub     eax, 1                                  ; 1215 _ 83. E8, 01
        shl     eax, 5                                  ; 1218 _ C1. E0, 05
        add     eax, sheetman+0CH                       ; 121B _ 05, 0000000C(d)
        mov     eax, dword [eax]                        ; 1220 _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 1222 _ 8B. 55, F4
        shl     edx, 5                                  ; 1225 _ C1. E2, 05
        add     edx, sheetman+0CH                       ; 1228 _ 81. C2, 0000000C(d)
        mov     dword [edx], eax                        ; 122E _ 89. 02
        mov     eax, dword [ebp-0CH]                    ; 1230 _ 8B. 45, F4
        sub     eax, 1                                  ; 1233 _ 83. E8, 01
        shl     eax, 5                                  ; 1236 _ C1. E0, 05
        add     eax, sheetman+10H                       ; 1239 _ 05, 00000010(d)
        mov     eax, dword [eax]                        ; 123E _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 1240 _ 8B. 55, F4
        shl     edx, 5                                  ; 1243 _ C1. E2, 05
        add     edx, sheetman+10H                       ; 1246 _ 81. C2, 00000010(d)
        mov     dword [edx], eax                        ; 124C _ 89. 02
        mov     eax, dword [ebp-0CH]                    ; 124E _ 8B. 45, F4
        sub     eax, 1                                  ; 1251 _ 83. E8, 01
        shl     eax, 5                                  ; 1254 _ C1. E0, 05
        add     eax, sheetman+14H                       ; 1257 _ 05, 00000014(d)
        mov     eax, dword [eax]                        ; 125C _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 125E _ 8B. 55, F4
        shl     edx, 5                                  ; 1261 _ C1. E2, 05
        add     edx, sheetman+14H                       ; 1264 _ 81. C2, 00000014(d)
        mov     dword [edx], eax                        ; 126A _ 89. 02
        mov     eax, dword [ebp-0CH]                    ; 126C _ 8B. 45, F4
        sub     eax, 1                                  ; 126F _ 83. E8, 01
        shl     eax, 5                                  ; 1272 _ C1. E0, 05
        add     eax, sheetman+18H                       ; 1275 _ 05, 00000018(d)
        mov     eax, dword [eax]                        ; 127A _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 127C _ 8B. 55, F4
        shl     edx, 5                                  ; 127F _ C1. E2, 05
        add     edx, sheetman+18H                       ; 1282 _ 81. C2, 00000018(d)
        mov     dword [edx], eax                        ; 1288 _ 89. 02
        mov     eax, dword [ebp-0CH]                    ; 128A _ 8B. 45, F4
        sub     eax, 1                                  ; 128D _ 83. E8, 01
        shl     eax, 5                                  ; 1290 _ C1. E0, 05
        add     eax, sheetman+1CH                       ; 1293 _ 05, 0000001C(d)
        mov     eax, dword [eax]                        ; 1298 _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 129A _ 8B. 55, F4
        shl     edx, 5                                  ; 129D _ C1. E2, 05
        add     edx, sheetman+1CH                       ; 12A0 _ 81. C2, 0000001C(d)
        mov     dword [edx], eax                        ; 12A6 _ 89. 02
        mov     eax, dword [ebp-0CH]                    ; 12A8 _ 8B. 45, F4
        sub     eax, 1                                  ; 12AB _ 83. E8, 01
        shl     eax, 5                                  ; 12AE _ C1. E0, 05
        add     eax, sheetman+20H                       ; 12B1 _ 05, 00000020(d)
        mov     eax, dword [eax]                        ; 12B6 _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 12B8 _ 8B. 55, F4
        shl     edx, 5                                  ; 12BB _ C1. E2, 05
        add     edx, sheetman+20H                       ; 12BE _ 81. C2, 00000020(d)
        mov     dword [edx], eax                        ; 12C4 _ 89. 02
        mov     eax, dword [ebp-0CH]                    ; 12C6 _ 8B. 45, F4
        sub     eax, 1                                  ; 12C9 _ 83. E8, 01
        shl     eax, 5                                  ; 12CC _ C1. E0, 05
        add     eax, sheetman+28H                       ; 12CF _ 05, 00000028(d)
        mov     eax, dword [eax]                        ; 12D4 _ 8B. 00
        mov     edx, dword [ebp-0CH]                    ; 12D6 _ 8B. 55, F4
        shl     edx, 5                                  ; 12D9 _ C1. E2, 05
        add     edx, sheetman+28H                       ; 12DC _ 81. C2, 00000028(d)
        mov     dword [edx], eax                        ; 12E2 _ 89. 02
        sub     dword [ebp-0CH], 1                      ; 12E4 _ 83. 6D, F4, 01
?_102:  mov     eax, dword [ebp-0CH]                    ; 12E8 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 12EB _ 3B. 45, F0
        jg      ?_101                                   ; 12EE _ 0F 8F, FFFFFF1E
        jmp     ?_106                                   ; 12F4 _ EB, 45

?_103:  mov     eax, dword [ebp-8H]                     ; 12F6 _ 8B. 45, F8
        mov     eax, dword [eax+14H]                    ; 12F9 _ 8B. 40, 14
        and     eax, 01H                                ; 12FC _ 83. E0, 01
        test    eax, eax                                ; 12FF _ 85. C0
        jz      ?_104                                   ; 1301 _ 74, 26
        mov     eax, dword [ebp-8H]                     ; 1303 _ 8B. 45, F8
        mov     eax, dword [eax+8H]                     ; 1306 _ 8B. 40, 08
        cmp     eax, dword [ebp+18H]                    ; 1309 _ 3B. 45, 18
        jnz     ?_104                                   ; 130C _ 75, 1B
        mov     eax, dword [ebp-8H]                     ; 130E _ 8B. 45, F8
        mov     eax, dword [eax+0CH]                    ; 1311 _ 8B. 40, 0C
        mov     edx, eax                                ; 1314 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1316 _ 8B. 45, F8
        mov     eax, dword [eax+1CH]                    ; 1319 _ 8B. 40, 1C
        push    edx                                     ; 131C _ 52
        push    eax                                     ; 131D _ 50
        push    dword [ebp+1CH]                         ; 131E _ FF. 75, 1C
        call    memcmb                                  ; 1321 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1326 _ 83. C4, 0C
?_104:  add     dword [ebp-10H], 1                      ; 1329 _ 83. 45, F0, 01
?_105:  mov     eax, dword [sheetman]                   ; 132D _ A1, 00000000(d)
        cmp     eax, dword [ebp-10H]                    ; 1332 _ 3B. 45, F0
        jg      ?_100                                   ; 1335 _ 0F 8F, FFFFFE99
?_106:  mov     eax, dword [ebp-10H]                    ; 133B _ 8B. 45, F0
        shl     eax, 5                                  ; 133E _ C1. E0, 05
        add     eax, sheetman                           ; 1341 _ 05, 00000000(d)
        add     eax, 12                                 ; 1346 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 1349 _ 89. 45, FC
        mov     eax, dword [sheetman]                   ; 134C _ A1, 00000000(d)
        add     eax, 1                                  ; 1351 _ 83. C0, 01
        mov     dword [sheetman], eax                   ; 1354 _ A3, 00000000(d)
        mov     eax, dword [sheetman+8H]                ; 1359 _ A1, 00000008(d)
        cmp     eax, dword [ebp+18H]                    ; 135E _ 3B. 45, 18
        jge     ?_107                                   ; 1361 _ 7D, 08
        mov     eax, dword [ebp+18H]                    ; 1363 _ 8B. 45, 18
        mov     dword [sheetman+8H], eax                ; 1366 _ A3, 00000008(d)
?_107:  mov     eax, dword [sheetman+4H]                ; 136B _ A1, 00000004(d)
        cmp     eax, dword [ebp+8H]                     ; 1370 _ 3B. 45, 08
        jg      ?_108                                   ; 1373 _ 7F, 0B
        mov     eax, dword [ebp+8H]                     ; 1375 _ 8B. 45, 08
        add     eax, 1                                  ; 1378 _ 83. C0, 01
        mov     dword [sheetman+4H], eax                ; 137B _ A3, 00000004(d)
?_108:  mov     eax, dword [ebp-4H]                     ; 1380 _ 8B. 45, FC
        mov     edx, dword [ebp+0CH]                    ; 1383 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1386 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 1388 _ 8B. 45, FC
        mov     edx, dword [ebp+10H]                    ; 138B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 138E _ 89. 50, 04
        mov     eax, dword [ebp-4H]                     ; 1391 _ 8B. 45, FC
        mov     edx, dword [ebp+18H]                    ; 1394 _ 8B. 55, 18
        mov     dword [eax+8H], edx                     ; 1397 _ 89. 50, 08
        mov     eax, dword [ebp-4H]                     ; 139A _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 139D _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 13A0 _ 89. 50, 0C
        mov     eax, dword [ebp-4H]                     ; 13A3 _ 8B. 45, FC
        mov     edx, dword [ebp-10H]                    ; 13A6 _ 8B. 55, F0
        mov     dword [eax+10H], edx                    ; 13A9 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 13AC _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 13AF _ 8B. 55, 1C
        mov     dword [eax+1CH], edx                    ; 13B2 _ 89. 50, 1C
        mov     eax, dword [ebp+20H]                    ; 13B5 _ 8B. 45, 20
        or      eax, 01H                                ; 13B8 _ 83. C8, 01
        mov     edx, eax                                ; 13BB _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 13BD _ 8B. 45, FC
        mov     dword [eax+14H], edx                    ; 13C0 _ 89. 50, 14
        mov     eax, dword [ebp-4H]                     ; 13C3 _ 8B. 45, FC
        mov     edx, dword [ebp+8H]                     ; 13C6 _ 8B. 55, 08
        mov     dword [eax+18H], edx                    ; 13C9 _ 89. 50, 18
        nop                                             ; 13CC _ 90
        leave                                           ; 13CD _ C9
        ret                                             ; 13CE _ C3
; insertSheet End of function

insertToFirst:; Function begin
        push    ebp                                     ; 13CF _ 55
        mov     ebp, esp                                ; 13D0 _ 89. E5
        sub     esp, 16                                 ; 13D2 _ 83. EC, 10
        mov     dword [ebp-0CH], 1                      ; 13D5 _ C7. 45, F4, 00000001
        mov     dword [ebp-8H], 1                       ; 13DC _ C7. 45, F8, 00000001
        mov     eax, dword [sheetman]                   ; 13E3 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 13E8 _ 89. 45, F0
        jmp     ?_110                                   ; 13EB _ EB, 4E

?_109:  mov     eax, dword [ebp-10H]                    ; 13ED _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 13F0 _ 8D. 50, FF
        mov     eax, dword [ebp-10H]                    ; 13F3 _ 8B. 45, F0
        shl     eax, 5                                  ; 13F6 _ C1. E0, 05
        add     eax, sheetman                           ; 13F9 _ 05, 00000000(d)
        shl     edx, 5                                  ; 13FE _ C1. E2, 05
        add     edx, sheetman                           ; 1401 _ 81. C2, 00000000(d)
        mov     ecx, dword [edx+0CH]                    ; 1407 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 140A _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 140D _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 1410 _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 1413 _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 1416 _ 89. 48, 14
        mov     ecx, dword [edx+18H]                    ; 1419 _ 8B. 4A, 18
        mov     dword [eax+18H], ecx                    ; 141C _ 89. 48, 18
        mov     ecx, dword [edx+1CH]                    ; 141F _ 8B. 4A, 1C
        mov     dword [eax+1CH], ecx                    ; 1422 _ 89. 48, 1C
        mov     ecx, dword [edx+20H]                    ; 1425 _ 8B. 4A, 20
        mov     dword [eax+20H], ecx                    ; 1428 _ 89. 48, 20
        mov     ecx, dword [edx+24H]                    ; 142B _ 8B. 4A, 24
        mov     dword [eax+24H], ecx                    ; 142E _ 89. 48, 24
        mov     edx, dword [edx+28H]                    ; 1431 _ 8B. 52, 28
        mov     dword [eax+28H], edx                    ; 1434 _ 89. 50, 28
        sub     dword [ebp-10H], 1                      ; 1437 _ 83. 6D, F0, 01
?_110:  mov     eax, dword [ebp-10H]                    ; 143B _ 8B. 45, F0
        cmp     eax, dword [ebp-8H]                     ; 143E _ 3B. 45, F8
        jg      ?_109                                   ; 1441 _ 7F, AA
        mov     dword [ebp-4H], sheetman+2CH            ; 1443 _ C7. 45, FC, 0000002C(d)
        mov     eax, dword [sheetman]                   ; 144A _ A1, 00000000(d)
        add     eax, 1                                  ; 144F _ 83. C0, 01
        mov     dword [sheetman], eax                   ; 1452 _ A3, 00000000(d)
        mov     eax, dword [sheetman+8H]                ; 1457 _ A1, 00000008(d)
        cmp     eax, dword [ebp-0CH]                    ; 145C _ 3B. 45, F4
        jge     ?_111                                   ; 145F _ 7D, 08
        mov     eax, dword [ebp-0CH]                    ; 1461 _ 8B. 45, F4
        mov     dword [sheetman+8H], eax                ; 1464 _ A3, 00000008(d)
?_111:  mov     eax, dword [sheetman+4H]                ; 1469 _ A1, 00000004(d)
        cmp     eax, dword [ebp+8H]                     ; 146E _ 3B. 45, 08
        jg      ?_112                                   ; 1471 _ 7F, 0B
        mov     eax, dword [ebp+8H]                     ; 1473 _ 8B. 45, 08
        add     eax, 1                                  ; 1476 _ 83. C0, 01
        mov     dword [sheetman+4H], eax                ; 1479 _ A3, 00000004(d)
?_112:  mov     eax, dword [ebp-4H]                     ; 147E _ 8B. 45, FC
        mov     edx, dword [ebp+0CH]                    ; 1481 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1484 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 1486 _ 8B. 45, FC
        mov     edx, dword [ebp+10H]                    ; 1489 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 148C _ 89. 50, 04
        mov     eax, dword [ebp-4H]                     ; 148F _ 8B. 45, FC
        mov     edx, dword [ebp-0CH]                    ; 1492 _ 8B. 55, F4
        mov     dword [eax+8H], edx                     ; 1495 _ 89. 50, 08
        mov     eax, dword [ebp-4H]                     ; 1498 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 149B _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 149E _ 89. 50, 0C
        mov     eax, dword [ebp-4H]                     ; 14A1 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 14A4 _ 8B. 55, F8
        mov     dword [eax+10H], edx                    ; 14A7 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 14AA _ 8B. 45, FC
        mov     edx, dword [ebp+18H]                    ; 14AD _ 8B. 55, 18
        mov     dword [eax+1CH], edx                    ; 14B0 _ 89. 50, 1C
        mov     eax, dword [ebp+1CH]                    ; 14B3 _ 8B. 45, 1C
        or      eax, 01H                                ; 14B6 _ 83. C8, 01
        mov     edx, eax                                ; 14B9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 14BB _ 8B. 45, FC
        mov     dword [eax+14H], edx                    ; 14BE _ 89. 50, 14
        mov     eax, dword [ebp-4H]                     ; 14C1 _ 8B. 45, FC
        mov     edx, dword [ebp+8H]                     ; 14C4 _ 8B. 55, 08
        mov     dword [eax+18H], edx                    ; 14C7 _ 89. 50, 18
        nop                                             ; 14CA _ 90
        leave                                           ; 14CB _ C9
        ret                                             ; 14CC _ C3
; insertToFirst End of function

removeSheet:; Function begin
        push    ebp                                     ; 14CD _ 55
        mov     ebp, esp                                ; 14CE _ 89. E5
        sub     esp, 16                                 ; 14D0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 14D3 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 14DA _ C7. 45, FC, 00000000
        jmp     ?_116                                   ; 14E1 _ E9, 00000087

?_113:  cmp     dword [ebp-8H], 0                       ; 14E6 _ 83. 7D, F8, 00
        jnz     ?_114                                   ; 14EA _ 75, 2D
        mov     eax, dword [ebp-4H]                     ; 14EC _ 8B. 45, FC
        shl     eax, 5                                  ; 14EF _ C1. E0, 05
        add     eax, sheetman+20H                       ; 14F2 _ 05, 00000020(d)
        mov     eax, dword [eax]                        ; 14F7 _ 8B. 00
        and     eax, 01H                                ; 14F9 _ 83. E0, 01
        test    eax, eax                                ; 14FC _ 85. C0
        jz      ?_114                                   ; 14FE _ 74, 19
        mov     eax, dword [ebp-4H]                     ; 1500 _ 8B. 45, FC
        shl     eax, 5                                  ; 1503 _ C1. E0, 05
        add     eax, sheetman+24H                       ; 1506 _ 05, 00000024(d)
        mov     eax, dword [eax]                        ; 150B _ 8B. 00
        cmp     eax, dword [ebp+8H]                     ; 150D _ 3B. 45, 08
        jnz     ?_114                                   ; 1510 _ 75, 07
        mov     dword [ebp-8H], 1                       ; 1512 _ C7. 45, F8, 00000001
?_114:  cmp     dword [ebp-8H], 0                       ; 1519 _ 83. 7D, F8, 00
        jz      ?_115                                   ; 151D _ 74, 4A
        mov     eax, dword [ebp-4H]                     ; 151F _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 1522 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 1525 _ 8B. 45, FC
        shl     eax, 5                                  ; 1528 _ C1. E0, 05
        add     eax, sheetman                           ; 152B _ 05, 00000000(d)
        shl     edx, 5                                  ; 1530 _ C1. E2, 05
        add     edx, sheetman                           ; 1533 _ 81. C2, 00000000(d)
        mov     ecx, dword [edx+0CH]                    ; 1539 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 153C _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 153F _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 1542 _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 1545 _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 1548 _ 89. 48, 14
        mov     ecx, dword [edx+18H]                    ; 154B _ 8B. 4A, 18
        mov     dword [eax+18H], ecx                    ; 154E _ 89. 48, 18
        mov     ecx, dword [edx+1CH]                    ; 1551 _ 8B. 4A, 1C
        mov     dword [eax+1CH], ecx                    ; 1554 _ 89. 48, 1C
        mov     ecx, dword [edx+20H]                    ; 1557 _ 8B. 4A, 20
        mov     dword [eax+20H], ecx                    ; 155A _ 89. 48, 20
        mov     ecx, dword [edx+24H]                    ; 155D _ 8B. 4A, 24
        mov     dword [eax+24H], ecx                    ; 1560 _ 89. 48, 24
        mov     edx, dword [edx+28H]                    ; 1563 _ 8B. 52, 28
        mov     dword [eax+28H], edx                    ; 1566 _ 89. 50, 28
?_115:  add     dword [ebp-4H], 1                       ; 1569 _ 83. 45, FC, 01
?_116:  mov     eax, dword [sheetman]                   ; 156D _ A1, 00000000(d)
        cmp     eax, dword [ebp-4H]                     ; 1572 _ 3B. 45, FC
        jg      ?_113                                   ; 1575 _ 0F 8F, FFFFFF6B
        cmp     dword [ebp-8H], 0                       ; 157B _ 83. 7D, F8, 00
        jz      ?_117                                   ; 157F _ 74, 16
        mov     eax, dword [sheetman]                   ; 1581 _ A1, 00000000(d)
        sub     eax, 1                                  ; 1586 _ 83. E8, 01
        shl     eax, 5                                  ; 1589 _ C1. E0, 05
        add     eax, sheetman+20H                       ; 158C _ 05, 00000020(d)
        mov     dword [eax], 0                          ; 1591 _ C7. 00, 00000000
?_117:  nop                                             ; 1597 _ 90
        leave                                           ; 1598 _ C9
        ret                                             ; 1599 _ C3
; removeSheet End of function

getSheet:; Function begin
        push    ebp                                     ; 159A _ 55
        mov     ebp, esp                                ; 159B _ 89. E5
        sub     esp, 16                                 ; 159D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 15A0 _ C7. 45, FC, 00000000
        jmp     ?_120                                   ; 15A7 _ EB, 3A

?_118:  mov     eax, dword [ebp-4H]                     ; 15A9 _ 8B. 45, FC
        shl     eax, 5                                  ; 15AC _ C1. E0, 05
        add     eax, sheetman+20H                       ; 15AF _ 05, 00000020(d)
        mov     eax, dword [eax]                        ; 15B4 _ 8B. 00
        and     eax, 01H                                ; 15B6 _ 83. E0, 01
        test    eax, eax                                ; 15B9 _ 85. C0
        jz      ?_119                                   ; 15BB _ 74, 22
        mov     eax, dword [ebp-4H]                     ; 15BD _ 8B. 45, FC
        shl     eax, 5                                  ; 15C0 _ C1. E0, 05
        add     eax, sheetman+24H                       ; 15C3 _ 05, 00000024(d)
        mov     eax, dword [eax]                        ; 15C8 _ 8B. 00
        cmp     eax, dword [ebp+8H]                     ; 15CA _ 3B. 45, 08
        jnz     ?_119                                   ; 15CD _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 15CF _ 8B. 45, FC
        shl     eax, 5                                  ; 15D2 _ C1. E0, 05
        add     eax, sheetman                           ; 15D5 _ 05, 00000000(d)
        add     eax, 12                                 ; 15DA _ 83. C0, 0C
        jmp     ?_121                                   ; 15DD _ EB, 13

?_119:  add     dword [ebp-4H], 1                       ; 15DF _ 83. 45, FC, 01
?_120:  mov     eax, dword [sheetman]                   ; 15E3 _ A1, 00000000(d)
        cmp     eax, dword [ebp-4H]                     ; 15E8 _ 3B. 45, FC
        jg      ?_118                                   ; 15EB _ 7F, BC
        mov     eax, 0                                  ; 15ED _ B8, 00000000
?_121:  leave                                           ; 15F2 _ C9
        ret                                             ; 15F3 _ C3
; getSheet End of function

alterSheetLayer:; Function begin
        push    ebp                                     ; 15F4 _ 55
        mov     ebp, esp                                ; 15F5 _ 89. E5
        sub     esp, 48                                 ; 15F7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 15FA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 15FD _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 1600 _ 3B. 45, 0C
        je      ?_127                                   ; 1603 _ 0F 84, 0000020E
        mov     eax, dword [ebp+8H]                     ; 1609 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 160C _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 160F _ 3B. 45, 0C
        jle     ?_124                                   ; 1612 _ 0F 8E, 000000FD
        mov     eax, dword [ebp+8H]                     ; 1618 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 161B _ 8B. 40, 10
        mov     dword [ebp-28H], eax                    ; 161E _ 89. 45, D8
        jmp     ?_123                                   ; 1621 _ E9, 000000C7

?_122:  mov     eax, dword [ebp-28H]                    ; 1626 _ 8B. 45, D8
        shl     eax, 5                                  ; 1629 _ C1. E0, 05
        add     eax, sheetman                           ; 162C _ 05, 00000000(d)
        mov     edx, dword [eax+0CH]                    ; 1631 _ 8B. 50, 0C
        mov     dword [ebp-20H], edx                    ; 1634 _ 89. 55, E0
        mov     edx, dword [eax+10H]                    ; 1637 _ 8B. 50, 10
        mov     dword [ebp-1CH], edx                    ; 163A _ 89. 55, E4
        mov     edx, dword [eax+14H]                    ; 163D _ 8B. 50, 14
        mov     dword [ebp-18H], edx                    ; 1640 _ 89. 55, E8
        mov     edx, dword [eax+18H]                    ; 1643 _ 8B. 50, 18
        mov     dword [ebp-14H], edx                    ; 1646 _ 89. 55, EC
        mov     edx, dword [eax+1CH]                    ; 1649 _ 8B. 50, 1C
        mov     dword [ebp-10H], edx                    ; 164C _ 89. 55, F0
        mov     edx, dword [eax+20H]                    ; 164F _ 8B. 50, 20
        mov     dword [ebp-0CH], edx                    ; 1652 _ 89. 55, F4
        mov     edx, dword [eax+24H]                    ; 1655 _ 8B. 50, 24
        mov     dword [ebp-8H], edx                     ; 1658 _ 89. 55, F8
        mov     eax, dword [eax+28H]                    ; 165B _ 8B. 40, 28
        mov     dword [ebp-4H], eax                     ; 165E _ 89. 45, FC
        mov     eax, dword [ebp-28H]                    ; 1661 _ 8B. 45, D8
        lea     edx, [eax-1H]                           ; 1664 _ 8D. 50, FF
        mov     eax, dword [ebp-28H]                    ; 1667 _ 8B. 45, D8
        shl     eax, 5                                  ; 166A _ C1. E0, 05
        add     eax, sheetman                           ; 166D _ 05, 00000000(d)
        shl     edx, 5                                  ; 1672 _ C1. E2, 05
        add     edx, sheetman                           ; 1675 _ 81. C2, 00000000(d)
        mov     ecx, dword [edx+0CH]                    ; 167B _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 167E _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 1681 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 1684 _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 1687 _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 168A _ 89. 48, 14
        mov     ecx, dword [edx+18H]                    ; 168D _ 8B. 4A, 18
        mov     dword [eax+18H], ecx                    ; 1690 _ 89. 48, 18
        mov     ecx, dword [edx+1CH]                    ; 1693 _ 8B. 4A, 1C
        mov     dword [eax+1CH], ecx                    ; 1696 _ 89. 48, 1C
        mov     ecx, dword [edx+20H]                    ; 1699 _ 8B. 4A, 20
        mov     dword [eax+20H], ecx                    ; 169C _ 89. 48, 20
        mov     ecx, dword [edx+24H]                    ; 169F _ 8B. 4A, 24
        mov     dword [eax+24H], ecx                    ; 16A2 _ 89. 48, 24
        mov     edx, dword [edx+28H]                    ; 16A5 _ 8B. 52, 28
        mov     dword [eax+28H], edx                    ; 16A8 _ 89. 50, 28
        mov     eax, dword [ebp-28H]                    ; 16AB _ 8B. 45, D8
        sub     eax, 1                                  ; 16AE _ 83. E8, 01
        shl     eax, 5                                  ; 16B1 _ C1. E0, 05
        add     eax, sheetman                           ; 16B4 _ 05, 00000000(d)
        mov     edx, dword [ebp-20H]                    ; 16B9 _ 8B. 55, E0
        mov     dword [eax+0CH], edx                    ; 16BC _ 89. 50, 0C
        mov     edx, dword [ebp-1CH]                    ; 16BF _ 8B. 55, E4
        mov     dword [eax+10H], edx                    ; 16C2 _ 89. 50, 10
        mov     edx, dword [ebp-18H]                    ; 16C5 _ 8B. 55, E8
        mov     dword [eax+14H], edx                    ; 16C8 _ 89. 50, 14
        mov     edx, dword [ebp-14H]                    ; 16CB _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 16CE _ 89. 50, 18
        mov     edx, dword [ebp-10H]                    ; 16D1 _ 8B. 55, F0
        mov     dword [eax+1CH], edx                    ; 16D4 _ 89. 50, 1C
        mov     edx, dword [ebp-0CH]                    ; 16D7 _ 8B. 55, F4
        mov     dword [eax+20H], edx                    ; 16DA _ 89. 50, 20
        mov     edx, dword [ebp-8H]                     ; 16DD _ 8B. 55, F8
        mov     dword [eax+24H], edx                    ; 16E0 _ 89. 50, 24
        mov     edx, dword [ebp-4H]                     ; 16E3 _ 8B. 55, FC
        mov     dword [eax+28H], edx                    ; 16E6 _ 89. 50, 28
        sub     dword [ebp-28H], 1                      ; 16E9 _ 83. 6D, D8, 01
?_123:  cmp     dword [ebp-28H], 0                      ; 16ED _ 83. 7D, D8, 00
        jle     ?_128                                   ; 16F1 _ 0F 8E, 00000121
        mov     eax, dword [ebp-28H]                    ; 16F7 _ 8B. 45, D8
        sub     eax, 1                                  ; 16FA _ 83. E8, 01
        shl     eax, 5                                  ; 16FD _ C1. E0, 05
        add     eax, sheetman+14H                       ; 1700 _ 05, 00000014(d)
        mov     eax, dword [eax]                        ; 1705 _ 8B. 00
        cmp     eax, dword [ebp+0CH]                    ; 1707 _ 3B. 45, 0C
        jl      ?_122                                   ; 170A _ 0F 8C, FFFFFF16
        jmp     ?_128                                   ; 1710 _ E9, 00000103

?_124:  mov     eax, dword [ebp+8H]                     ; 1715 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1718 _ 8B. 40, 10
        mov     dword [ebp-24H], eax                    ; 171B _ 89. 45, DC
        jmp     ?_126                                   ; 171E _ E9, 000000C7

?_125:  mov     eax, dword [ebp-24H]                    ; 1723 _ 8B. 45, DC
        shl     eax, 5                                  ; 1726 _ C1. E0, 05
        add     eax, sheetman                           ; 1729 _ 05, 00000000(d)
        mov     edx, dword [eax+0CH]                    ; 172E _ 8B. 50, 0C
        mov     dword [ebp-20H], edx                    ; 1731 _ 89. 55, E0
        mov     edx, dword [eax+10H]                    ; 1734 _ 8B. 50, 10
        mov     dword [ebp-1CH], edx                    ; 1737 _ 89. 55, E4
        mov     edx, dword [eax+14H]                    ; 173A _ 8B. 50, 14
        mov     dword [ebp-18H], edx                    ; 173D _ 89. 55, E8
        mov     edx, dword [eax+18H]                    ; 1740 _ 8B. 50, 18
        mov     dword [ebp-14H], edx                    ; 1743 _ 89. 55, EC
        mov     edx, dword [eax+1CH]                    ; 1746 _ 8B. 50, 1C
        mov     dword [ebp-10H], edx                    ; 1749 _ 89. 55, F0
        mov     edx, dword [eax+20H]                    ; 174C _ 8B. 50, 20
        mov     dword [ebp-0CH], edx                    ; 174F _ 89. 55, F4
        mov     edx, dword [eax+24H]                    ; 1752 _ 8B. 50, 24
        mov     dword [ebp-8H], edx                     ; 1755 _ 89. 55, F8
        mov     eax, dword [eax+28H]                    ; 1758 _ 8B. 40, 28
        mov     dword [ebp-4H], eax                     ; 175B _ 89. 45, FC
        mov     eax, dword [ebp-24H]                    ; 175E _ 8B. 45, DC
        lea     edx, [eax+1H]                           ; 1761 _ 8D. 50, 01
        mov     eax, dword [ebp-24H]                    ; 1764 _ 8B. 45, DC
        shl     eax, 5                                  ; 1767 _ C1. E0, 05
        add     eax, sheetman                           ; 176A _ 05, 00000000(d)
        shl     edx, 5                                  ; 176F _ C1. E2, 05
        add     edx, sheetman                           ; 1772 _ 81. C2, 00000000(d)
        mov     ecx, dword [edx+0CH]                    ; 1778 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 177B _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 177E _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 1781 _ 89. 48, 10
        mov     ecx, dword [edx+14H]                    ; 1784 _ 8B. 4A, 14
        mov     dword [eax+14H], ecx                    ; 1787 _ 89. 48, 14
        mov     ecx, dword [edx+18H]                    ; 178A _ 8B. 4A, 18
        mov     dword [eax+18H], ecx                    ; 178D _ 89. 48, 18
        mov     ecx, dword [edx+1CH]                    ; 1790 _ 8B. 4A, 1C
        mov     dword [eax+1CH], ecx                    ; 1793 _ 89. 48, 1C
        mov     ecx, dword [edx+20H]                    ; 1796 _ 8B. 4A, 20
        mov     dword [eax+20H], ecx                    ; 1799 _ 89. 48, 20
        mov     ecx, dword [edx+24H]                    ; 179C _ 8B. 4A, 24
        mov     dword [eax+24H], ecx                    ; 179F _ 89. 48, 24
        mov     edx, dword [edx+28H]                    ; 17A2 _ 8B. 52, 28
        mov     dword [eax+28H], edx                    ; 17A5 _ 89. 50, 28
        mov     eax, dword [ebp-24H]                    ; 17A8 _ 8B. 45, DC
        add     eax, 1                                  ; 17AB _ 83. C0, 01
        shl     eax, 5                                  ; 17AE _ C1. E0, 05
        add     eax, sheetman                           ; 17B1 _ 05, 00000000(d)
        mov     edx, dword [ebp-20H]                    ; 17B6 _ 8B. 55, E0
        mov     dword [eax+0CH], edx                    ; 17B9 _ 89. 50, 0C
        mov     edx, dword [ebp-1CH]                    ; 17BC _ 8B. 55, E4
        mov     dword [eax+10H], edx                    ; 17BF _ 89. 50, 10
        mov     edx, dword [ebp-18H]                    ; 17C2 _ 8B. 55, E8
        mov     dword [eax+14H], edx                    ; 17C5 _ 89. 50, 14
        mov     edx, dword [ebp-14H]                    ; 17C8 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 17CB _ 89. 50, 18
        mov     edx, dword [ebp-10H]                    ; 17CE _ 8B. 55, F0
        mov     dword [eax+1CH], edx                    ; 17D1 _ 89. 50, 1C
        mov     edx, dword [ebp-0CH]                    ; 17D4 _ 8B. 55, F4
        mov     dword [eax+20H], edx                    ; 17D7 _ 89. 50, 20
        mov     edx, dword [ebp-8H]                     ; 17DA _ 8B. 55, F8
        mov     dword [eax+24H], edx                    ; 17DD _ 89. 50, 24
        mov     edx, dword [ebp-4H]                     ; 17E0 _ 8B. 55, FC
        mov     dword [eax+28H], edx                    ; 17E3 _ 89. 50, 28
        sub     dword [ebp-24H], 1                      ; 17E6 _ 83. 6D, DC, 01
?_126:  mov     eax, dword [ebp-24H]                    ; 17EA _ 8B. 45, DC
        lea     edx, [eax+1H]                           ; 17ED _ 8D. 50, 01
        mov     eax, dword [sheetman]                   ; 17F0 _ A1, 00000000(d)
        sub     eax, 1                                  ; 17F5 _ 83. E8, 01
        cmp     edx, eax                                ; 17F8 _ 39. C2
        jge     ?_128                                   ; 17FA _ 7D, 1C
        mov     eax, dword [ebp-24H]                    ; 17FC _ 8B. 45, DC
        add     eax, 1                                  ; 17FF _ 83. C0, 01
        shl     eax, 5                                  ; 1802 _ C1. E0, 05
        add     eax, sheetman+14H                       ; 1805 _ 05, 00000014(d)
        mov     eax, dword [eax]                        ; 180A _ 8B. 00
        cmp     eax, dword [ebp+0CH]                    ; 180C _ 3B. 45, 0C
        jg      ?_125                                   ; 180F _ 0F 8F, FFFFFF0E
        jmp     ?_128                                   ; 1815 _ EB, 01

?_127:  nop                                             ; 1817 _ 90
?_128:  leave                                           ; 1818 _ C9
        ret                                             ; 1819 _ C3
; alterSheetLayer End of function

drawSheetList:; Function begin
        push    ebp                                     ; 181A _ 55
        mov     ebp, esp                                ; 181B _ 89. E5
        push    ebx                                     ; 181D _ 53
        sub     esp, 48                                 ; 181E _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1821 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1824 _ 8B. 00
        mov     dword [ebp-20H], eax                    ; 1826 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1829 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 182C _ 0F B7. 40, 04
        cwde                                            ; 1830 _ 98
        mov     dword [ebp-1CH], eax                    ; 1831 _ 89. 45, E4
        mov     eax, dword [sheetman]                   ; 1834 _ A1, 00000000(d)
        sub     eax, 1                                  ; 1839 _ 83. E8, 01
        mov     dword [ebp-2CH], eax                    ; 183C _ 89. 45, D4
        jmp     ?_136                                   ; 183F _ E9, 0000010F

?_129:  mov     eax, dword [ebp-2CH]                    ; 1844 _ 8B. 45, D4
        shl     eax, 5                                  ; 1847 _ C1. E0, 05
        add     eax, sheetman                           ; 184A _ 05, 00000000(d)
        add     eax, 12                                 ; 184F _ 83. C0, 0C
        mov     dword [ebp-18H], eax                    ; 1852 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 1855 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 1858 _ 8B. 00
        mov     edx, dword [eax+4H]                     ; 185A _ 8B. 50, 04
        mov     eax, dword [ebp-18H]                    ; 185D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 1860 _ 8B. 40, 04
        mov     eax, dword [eax+4H]                     ; 1863 _ 8B. 40, 04
        add     eax, edx                                ; 1866 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1868 _ 89. 45, EC
        mov     eax, dword [ebp-18H]                    ; 186B _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 186E _ 8B. 00
        mov     edx, dword [eax]                        ; 1870 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1872 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 1875 _ 8B. 40, 04
        mov     eax, dword [eax]                        ; 1878 _ 8B. 00
        add     eax, edx                                ; 187A _ 01. D0
        mov     dword [ebp-10H], eax                    ; 187C _ 89. 45, F0
        mov     eax, dword [ebp-18H]                    ; 187F _ 8B. 45, E8
        mov     eax, dword [eax+14H]                    ; 1882 _ 8B. 40, 14
        and     eax, 01H                                ; 1885 _ 83. E0, 01
        test    eax, eax                                ; 1888 _ 85. C0
        je      ?_135                                   ; 188A _ 0F 84, 000000BF
        mov     eax, dword [ebp-18H]                    ; 1890 _ 8B. 45, E8
        mov     eax, dword [eax+14H]                    ; 1893 _ 8B. 40, 14
        and     eax, 02H                                ; 1896 _ 83. E0, 02
        test    eax, eax                                ; 1899 _ 85. C0
        jne     ?_135                                   ; 189B _ 0F 85, 000000AE
        mov     eax, dword [ebp-18H]                    ; 18A1 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 18A4 _ 8B. 00
        mov     eax, dword [eax+4H]                     ; 18A6 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 18A9 _ 89. 45, D8
        jmp     ?_134                                   ; 18AC _ E9, 00000092

?_130:  mov     eax, dword [ebp-18H]                    ; 18B1 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 18B4 _ 8B. 00
        mov     eax, dword [eax+4H]                     ; 18B6 _ 8B. 40, 04
        mov     edx, dword [ebp-28H]                    ; 18B9 _ 8B. 55, D8
        sub     edx, eax                                ; 18BC _ 29. C2
        mov     eax, edx                                ; 18BE _ 89. D0
        mov     dword [ebp-0CH], eax                    ; 18C0 _ 89. 45, F4
        mov     eax, dword [ebp-18H]                    ; 18C3 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 18C6 _ 8B. 00
        mov     eax, dword [eax]                        ; 18C8 _ 8B. 00
        mov     dword [ebp-24H], eax                    ; 18CA _ 89. 45, DC
        jmp     ?_133                                   ; 18CD _ EB, 68

?_131:  mov     eax, dword [ebp-18H]                    ; 18CF _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 18D2 _ 8B. 00
        mov     eax, dword [eax]                        ; 18D4 _ 8B. 00
        mov     edx, dword [ebp-24H]                    ; 18D6 _ 8B. 55, DC
        sub     edx, eax                                ; 18D9 _ 29. C2
        mov     eax, edx                                ; 18DB _ 89. D0
        mov     dword [ebp-8H], eax                     ; 18DD _ 89. 45, F8
        mov     eax, dword [ebp-18H]                    ; 18E0 _ 8B. 45, E8
        mov     edx, dword [eax+1CH]                    ; 18E3 _ 8B. 50, 1C
        mov     eax, dword [ebp-28H]                    ; 18E6 _ 8B. 45, D8
        imul    eax, dword [ebp-1CH]                    ; 18E9 _ 0F AF. 45, E4
        mov     ecx, eax                                ; 18ED _ 89. C1
        mov     eax, dword [ebp-24H]                    ; 18EF _ 8B. 45, DC
        add     eax, ecx                                ; 18F2 _ 01. C8
        add     eax, edx                                ; 18F4 _ 01. D0
        movzx   eax, byte [eax]                         ; 18F6 _ 0F B6. 00
        cmp     al, -1                                  ; 18F9 _ 3C, FF
        jz      ?_132                                   ; 18FB _ 74, 36
        mov     eax, dword [ebp-24H]                    ; 18FD _ 8B. 45, DC
        cmp     eax, dword [ebp-1CH]                    ; 1900 _ 3B. 45, E4
        jge     ?_132                                   ; 1903 _ 7D, 2E
        mov     eax, dword [ebp-28H]                    ; 1905 _ 8B. 45, D8
        imul    eax, dword [ebp-1CH]                    ; 1908 _ 0F AF. 45, E4
        mov     edx, eax                                ; 190C _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 190E _ 8B. 45, DC
        add     edx, eax                                ; 1911 _ 01. C2
        mov     eax, dword [ebp-20H]                    ; 1913 _ 8B. 45, E0
        add     edx, eax                                ; 1916 _ 01. C2
        mov     eax, dword [ebp-18H]                    ; 1918 _ 8B. 45, E8
        mov     ecx, dword [eax+1CH]                    ; 191B _ 8B. 48, 1C
        mov     eax, dword [ebp-0CH]                    ; 191E _ 8B. 45, F4
        imul    eax, dword [ebp-1CH]                    ; 1921 _ 0F AF. 45, E4
        mov     ebx, eax                                ; 1925 _ 89. C3
        mov     eax, dword [ebp-8H]                     ; 1927 _ 8B. 45, F8
        add     eax, ebx                                ; 192A _ 01. D8
        add     eax, ecx                                ; 192C _ 01. C8
        movzx   eax, byte [eax]                         ; 192E _ 0F B6. 00
        mov     byte [edx], al                          ; 1931 _ 88. 02
?_132:  add     dword [ebp-24H], 1                      ; 1933 _ 83. 45, DC, 01
?_133:  mov     eax, dword [ebp-24H]                    ; 1937 _ 8B. 45, DC
        cmp     eax, dword [ebp-10H]                    ; 193A _ 3B. 45, F0
        jl      ?_131                                   ; 193D _ 7C, 90
        add     dword [ebp-28H], 1                      ; 193F _ 83. 45, D8, 01
?_134:  mov     eax, dword [ebp-28H]                    ; 1943 _ 8B. 45, D8
        cmp     eax, dword [ebp-14H]                    ; 1946 _ 3B. 45, EC
        jl      ?_130                                   ; 1949 _ 0F 8C, FFFFFF62
?_135:  sub     dword [ebp-2CH], 1                      ; 194F _ 83. 6D, D4, 01
?_136:  cmp     dword [ebp-2CH], 0                      ; 1953 _ 83. 7D, D4, 00
        jns     ?_129                                   ; 1957 _ 0F 89, FFFFFEE7
        nop                                             ; 195D _ 90
        add     esp, 48                                 ; 195E _ 83. C4, 30
        pop     ebx                                     ; 1961 _ 5B
        pop     ebp                                     ; 1962 _ 5D
        ret                                             ; 1963 _ C3
; drawSheetList End of function

SheetPrintln:; Function begin
        push    ebp                                     ; 1964 _ 55
        mov     ebp, esp                                ; 1965 _ 89. E5
        sub     esp, 16                                 ; 1967 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 196A _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 196D _ 0F B7. 40, 06
        cwde                                            ; 1971 _ 98
        mov     dword [ebp-4H], eax                     ; 1972 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1975 _ 8B. 45, 10
        mov     edx, dword [eax+10H]                    ; 1978 _ 8B. 50, 10
        mov     eax, dword [ebp+10H]                    ; 197B _ 8B. 45, 10
        mov     dword [eax], edx                        ; 197E _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 1980 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1983 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1986 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1989 _ 8B. 40, 0C
        add     edx, eax                                ; 198C _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 198E _ 8B. 45, 10
        mov     dword [eax+4H], edx                     ; 1991 _ 89. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1994 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1997 _ 8B. 40, 04
        cmp     eax, dword [ebp-4H]                     ; 199A _ 3B. 45, FC
        jl      ?_137                                   ; 199D _ 7C, 0C
        mov     eax, dword [ebp+10H]                    ; 199F _ 8B. 45, 10
        mov     edx, dword [eax+14H]                    ; 19A2 _ 8B. 50, 14
        mov     eax, dword [ebp+10H]                    ; 19A5 _ 8B. 45, 10
        mov     dword [eax+4H], edx                     ; 19A8 _ 89. 50, 04
?_137:  nop                                             ; 19AB _ 90
        leave                                           ; 19AC _ C9
        ret                                             ; 19AD _ C3
; SheetPrintln End of function

SheetPrintf:; Function begin
        push    ebp                                     ; 19AE _ 55
        mov     ebp, esp                                ; 19AF _ 89. E5
        push    ebx                                     ; 19B1 _ 53
        sub     esp, 16                                 ; 19B2 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 19B5 _ 8B. 45, 10
        movzx   eax, word [eax+4H]                      ; 19B8 _ 0F B7. 40, 04
        cwde                                            ; 19BC _ 98
        mov     dword [ebp-10H], eax                    ; 19BD _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 19C0 _ 8B. 45, 0C
        mov     eax, dword [eax+1CH]                    ; 19C3 _ 8B. 40, 1C
        mov     dword [ebp-0CH], eax                    ; 19C6 _ 89. 45, F4
        push    dword [ebp+8H]                          ; 19C9 _ FF. 75, 08
        call    strlen                                  ; 19CC _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 19D1 _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 19D4 _ 89. 45, F8
        mov     eax, dword [ebp+14H]                    ; 19D7 _ 8B. 45, 14
        mov     ebx, dword [eax+1CH]                    ; 19DA _ 8B. 58, 1C
        mov     eax, dword [ebp+14H]                    ; 19DD _ 8B. 45, 14
        mov     ecx, dword [eax+8H]                     ; 19E0 _ 8B. 48, 08
        mov     eax, dword [ebp+14H]                    ; 19E3 _ 8B. 45, 14
        mov     edx, dword [eax+4H]                     ; 19E6 _ 8B. 50, 04
        mov     eax, dword [ebp+14H]                    ; 19E9 _ 8B. 45, 14
        mov     eax, dword [eax]                        ; 19EC _ 8B. 00
        push    dword [ebp-8H]                          ; 19EE _ FF. 75, F8
        push    dword [ebp+8H]                          ; 19F1 _ FF. 75, 08
        push    ebx                                     ; 19F4 _ 53
        push    ecx                                     ; 19F5 _ 51
        push    edx                                     ; 19F6 _ 52
        push    eax                                     ; 19F7 _ 50
        push    dword [ebp-10H]                         ; 19F8 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 19FB _ FF. 75, F4
        call    putStr                                  ; 19FE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1A03 _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 1A06 _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 1A09 _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 1A0B _ 8B. 45, 14
        mov     eax, dword [eax+8H]                     ; 1A0E _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 1A11 _ 0F AF. 45, F8
        add     edx, eax                                ; 1A15 _ 01. C2
        mov     eax, dword [ebp+14H]                    ; 1A17 _ 8B. 45, 14
        mov     dword [eax], edx                        ; 1A1A _ 89. 10
        mov     eax, dword [ebp+14H]                    ; 1A1C _ 8B. 45, 14
        mov     edx, dword [eax]                        ; 1A1F _ 8B. 10
        mov     eax, dword [ebp+14H]                    ; 1A21 _ 8B. 45, 14
        mov     eax, dword [eax+10H]                    ; 1A24 _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 1A27 _ 8B. 4D, F0
        sub     ecx, eax                                ; 1A2A _ 29. C1
        mov     eax, ecx                                ; 1A2C _ 89. C8
        cmp     edx, eax                                ; 1A2E _ 39. C2
        jl      ?_138                                   ; 1A30 _ 7C, 11
        push    dword [ebp+14H]                         ; 1A32 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1A35 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1A38 _ FF. 75, 0C
        call    SheetPrintln                            ; 1A3B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1A40 _ 83. C4, 0C
?_138:  nop                                             ; 1A43 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1A44 _ 8B. 5D, FC
        leave                                           ; 1A47 _ C9
        ret                                             ; 1A48 _ C3
; SheetPrintf End of function

SheetClear:; Function begin
        push    ebp                                     ; 1A49 _ 55
        mov     ebp, esp                                ; 1A4A _ 89. E5
        sub     esp, 16                                 ; 1A4C _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1A4F _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 1A52 _ 0F B7. 40, 04
        cwde                                            ; 1A56 _ 98
        mov     dword [ebp-4H], eax                     ; 1A57 _ 89. 45, FC
        mov     dword [ebp-0CH], 0                      ; 1A5A _ C7. 45, F4, 00000000
        jmp     ?_142                                   ; 1A61 _ EB, 39

?_139:  mov     dword [ebp-8H], 0                       ; 1A63 _ C7. 45, F8, 00000000
        jmp     ?_141                                   ; 1A6A _ EB, 1F

?_140:  mov     eax, dword [ebp+8H]                     ; 1A6C _ 8B. 45, 08
        mov     edx, dword [eax+1CH]                    ; 1A6F _ 8B. 50, 1C
        mov     eax, dword [ebp-0CH]                    ; 1A72 _ 8B. 45, F4
        imul    eax, dword [ebp-4H]                     ; 1A75 _ 0F AF. 45, FC
        mov     ecx, eax                                ; 1A79 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 1A7B _ 8B. 45, F8
        add     eax, ecx                                ; 1A7E _ 01. C8
        add     eax, edx                                ; 1A80 _ 01. D0
        mov     edx, dword [ebp+10H]                    ; 1A82 _ 8B. 55, 10
        mov     byte [eax], dl                          ; 1A85 _ 88. 10
        add     dword [ebp-8H], 1                       ; 1A87 _ 83. 45, F8, 01
?_141:  mov     eax, dword [ebp+8H]                     ; 1A8B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1A8E _ 8B. 40, 04
        mov     eax, dword [eax]                        ; 1A91 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 1A93 _ 3B. 45, F8
        jg      ?_140                                   ; 1A96 _ 7F, D4
        add     dword [ebp-0CH], 1                      ; 1A98 _ 83. 45, F4, 01
?_142:  mov     eax, dword [ebp+8H]                     ; 1A9C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1A9F _ 8B. 40, 04
        mov     eax, dword [eax+4H]                     ; 1AA2 _ 8B. 40, 04
        cmp     eax, dword [ebp-0CH]                    ; 1AA5 _ 3B. 45, F4
        jg      ?_139                                   ; 1AA8 _ 7F, B9
        nop                                             ; 1AAA _ 90
        leave                                           ; 1AAB _ C9
        ret                                             ; 1AAC _ C3
; SheetClear End of function

SheetPrintTab:; Function begin
        push    ebp                                     ; 1AAD _ 55
        mov     ebp, esp                                ; 1AAE _ 89. E5
        push    ebx                                     ; 1AB0 _ 53
        sub     esp, 16                                 ; 1AB1 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1AB4 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 1AB7 _ 0F B7. 40, 04
        cwde                                            ; 1ABB _ 98
        mov     dword [ebp-8H], eax                     ; 1ABC _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1ABF _ 8B. 45, 10
        mov     ebx, dword [eax+18H]                    ; 1AC2 _ 8B. 58, 18
        mov     eax, dword [ebp-8H]                     ; 1AC5 _ 8B. 45, F8
        cdq                                             ; 1AC8 _ 99
        idiv    ebx                                     ; 1AC9 _ F7. FB
        mov     word [ebp-0AH], ax                      ; 1ACB _ 66: 89. 45, F6
        movsx   ecx, word [ebp-0AH]                     ; 1ACF _ 0F BF. 4D, F6
        mov     eax, dword [ebp+10H]                    ; 1AD3 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 1AD6 _ 8B. 10
        movsx   eax, word [ebp-0AH]                     ; 1AD8 _ 0F BF. 45, F6
        imul    eax, dword [ebp+14H]                    ; 1ADC _ 0F AF. 45, 14
        add     eax, edx                                ; 1AE0 _ 01. D0
        movsx   ebx, word [ebp-0AH]                     ; 1AE2 _ 0F BF. 5D, F6
        cdq                                             ; 1AE6 _ 99
        idiv    ebx                                     ; 1AE7 _ F7. FB
        imul    ecx, eax                                ; 1AE9 _ 0F AF. C8
        mov     edx, ecx                                ; 1AEC _ 89. CA
        mov     eax, dword [ebp+10H]                    ; 1AEE _ 8B. 45, 10
        mov     dword [eax], edx                        ; 1AF1 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 1AF3 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 1AF6 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 1AF8 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1AFB _ 8B. 40, 10
        mov     ecx, dword [ebp-8H]                     ; 1AFE _ 8B. 4D, F8
        sub     ecx, eax                                ; 1B01 _ 29. C1
        mov     eax, ecx                                ; 1B03 _ 89. C8
        cmp     edx, eax                                ; 1B05 _ 39. C2
        jl      ?_143                                   ; 1B07 _ 7C, 11
        push    dword [ebp+10H]                         ; 1B09 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1B0C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B0F _ FF. 75, 08
        call    SheetPrintln                            ; 1B12 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1B17 _ 83. C4, 0C
?_143:  nop                                             ; 1B1A _ 90
        mov     ebx, dword [ebp-4H]                     ; 1B1B _ 8B. 5D, FC
        leave                                           ; 1B1E _ C9
        ret                                             ; 1B1F _ C3
; SheetPrintTab End of function

createWindow:; Function begin
        push    ebp                                     ; 1B20 _ 55
        mov     ebp, esp                                ; 1B21 _ 89. E5
        sub     esp, 32                                 ; 1B23 _ 83. EC, 20
        mov     eax, dword [ebp+8H]                     ; 1B26 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 1B29 _ 0F B7. 40, 04
        cwde                                            ; 1B2D _ 98
        mov     dword [ebp-14H], eax                    ; 1B2E _ 89. 45, EC
        push    65535                                   ; 1B31 _ 68, 0000FFFF
        call    malloc_8                                ; 1B36 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1B3B _ 83. C4, 04
        mov     dword [ebp-10H], eax                    ; 1B3E _ 89. 45, F0
        push    65535                                   ; 1B41 _ 68, 0000FFFF
        push    8                                       ; 1B46 _ 6A, 08
        push    dword [ebp-10H]                         ; 1B48 _ FF. 75, F0
        call    memset_8                                ; 1B4B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1B50 _ 83. C4, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B53 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B56 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1B58 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1B5B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B5E _ 8B. 40, 04
        mov     dword [ebp-8H], eax                     ; 1B61 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1B64 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1B67 _ 8B. 40, 04
        lea     edx, [eax-2H]                           ; 1B6A _ 8D. 50, FE
        mov     eax, dword [ebp+10H]                    ; 1B6D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1B70 _ 8B. 00
        sub     eax, 2                                  ; 1B72 _ 83. E8, 02
        push    edx                                     ; 1B75 _ 52
        push    eax                                     ; 1B76 _ 50
        push    2                                       ; 1B77 _ 6A, 02
        push    2                                       ; 1B79 _ 6A, 02
        push    7                                       ; 1B7B _ 6A, 07
        push    dword [ebp-14H]                         ; 1B7D _ FF. 75, EC
        push    dword [ebp-10H]                         ; 1B80 _ FF. 75, F0
        call    boxfill8                                ; 1B83 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B88 _ 83. C4, 1C
        push    36                                      ; 1B8B _ 6A, 24
        call    malloc_8                                ; 1B8D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1B92 _ 83. C4, 04
        mov     dword [ebp-4H], eax                     ; 1B95 _ 89. 45, FC
        mov     eax, dword [sheetman+4H]                ; 1B98 _ A1, 00000004(d)
        push    dword [ebp+14H]                         ; 1B9D _ FF. 75, 14
        push    dword [ebp-10H]                         ; 1BA0 _ FF. 75, F0
        push    65535                                   ; 1BA3 _ 68, 0000FFFF
        push    dword [ebp+10H]                         ; 1BA8 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1BAB _ FF. 75, 0C
        push    eax                                     ; 1BAE _ 50
        call    insertToFirst                           ; 1BAF _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 1BB4 _ 83. C4, 18
        mov     eax, dword [ebp-4H]                     ; 1BB7 _ 8B. 45, FC
        mov     dword [eax+4H], 20                      ; 1BBA _ C7. 40, 04, 00000014
        mov     eax, dword [ebp-4H]                     ; 1BC1 _ 8B. 45, FC
        mov     dword [eax+8H], 20                      ; 1BC4 _ C7. 40, 08, 00000014
        mov     eax, dword [ebp-4H]                     ; 1BCB _ 8B. 45, FC
        mov     dword [eax+0CH], 8                      ; 1BCE _ C7. 40, 0C, 00000008
        mov     eax, dword [ebp-4H]                     ; 1BD5 _ 8B. 45, FC
        mov     dword [eax+10H], 16                     ; 1BD8 _ C7. 40, 10, 00000010
        mov     eax, dword [ebp-4H]                     ; 1BDF _ 8B. 45, FC
        mov     dword [eax+14H], 20                     ; 1BE2 _ C7. 40, 14, 00000014
        mov     eax, dword [ebp-4H]                     ; 1BE9 _ 8B. 45, FC
        mov     dword [eax+18H], 20                     ; 1BEC _ C7. 40, 18, 00000014
        mov     eax, dword [ebp-4H]                     ; 1BF3 _ 8B. 45, FC
        mov     dword [eax+1CH], 10                     ; 1BF6 _ C7. 40, 1C, 0000000A
        mov     eax, dword [ebp-4H]                     ; 1BFD _ 8B. 45, FC
        mov     dword [eax+20H], 7                      ; 1C00 _ C7. 40, 20, 00000007
        mov     eax, dword [ebp-4H]                     ; 1C07 _ 8B. 45, FC
        leave                                           ; 1C0A _ C9
        ret                                             ; 1C0B _ C3
; createWindow End of function

showMsg:; Function begin
        push    ebp                                     ; 1C0C _ 55
        mov     ebp, esp                                ; 1C0D _ 89. E5
        push    ebx                                     ; 1C0F _ 53
        sub     esp, 16                                 ; 1C10 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 1C13 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C16 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1C18 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1C1B _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 1C1E _ 0F B7. 40, 04
        cwde                                            ; 1C22 _ 98
        mov     dword [ebp-8H], eax                     ; 1C23 _ 89. 45, F8
        mov     dword [ebp-10H], 0                      ; 1C26 _ C7. 45, F0, 00000000
        jmp     ?_148                                   ; 1C2D _ E9, 000000B9

?_144:  mov     edx, dword [ebp-10H]                    ; 1C32 _ 8B. 55, F0
        mov     eax, dword [ebp+10H]                    ; 1C35 _ 8B. 45, 10
        add     eax, edx                                ; 1C38 _ 01. D0
        movzx   eax, byte [eax]                         ; 1C3A _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1C3D _ 88. 45, EF
        cmp     byte [ebp-11H], 10                      ; 1C40 _ 80. 7D, EF, 0A
        jnz     ?_145                                   ; 1C44 _ 75, 1A
        mov     eax, dword [ebp+8H]                     ; 1C46 _ 8B. 45, 08
        add     eax, 4                                  ; 1C49 _ 83. C0, 04
        push    eax                                     ; 1C4C _ 50
        push    dword [ebp+0CH]                         ; 1C4D _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1C50 _ FF. 75, F4
        call    SheetPrintln                            ; 1C53 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1C58 _ 83. C4, 0C
        jmp     ?_147                                   ; 1C5B _ E9, 00000087

?_145:  cmp     byte [ebp-11H], 9                       ; 1C60 _ 80. 7D, EF, 09
        jnz     ?_146                                   ; 1C64 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 1C66 _ 8B. 45, 08
        add     eax, 4                                  ; 1C69 _ 83. C0, 04
        push    1                                       ; 1C6C _ 6A, 01
        push    eax                                     ; 1C6E _ 50
        push    dword [ebp+0CH]                         ; 1C6F _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1C72 _ FF. 75, F4
        call    SheetPrintTab                           ; 1C75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C7A _ 83. C4, 10
        jmp     ?_147                                   ; 1C7D _ EB, 68

?_146:  movzx   eax, byte [ebp-11H]                     ; 1C7F _ 0F B6. 45, EF
        movzx   ebx, al                                 ; 1C83 _ 0F B6. D8
        mov     eax, dword [ebp+8H]                     ; 1C86 _ 8B. 45, 08
        mov     ecx, dword [eax+8H]                     ; 1C89 _ 8B. 48, 08
        mov     eax, dword [ebp+8H]                     ; 1C8C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C8F _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1C92 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 1C95 _ 8B. 40, 1C
        push    ebx                                     ; 1C98 _ 53
        push    dword [ebp+14H]                         ; 1C99 _ FF. 75, 14
        push    ecx                                     ; 1C9C _ 51
        push    edx                                     ; 1C9D _ 52
        push    dword [ebp-8H]                          ; 1C9E _ FF. 75, F8
        push    eax                                     ; 1CA1 _ 50
        call    putChar                                 ; 1CA2 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 1CA7 _ 83. C4, 18
        mov     eax, dword [ebp+8H]                     ; 1CAA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CAD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CB0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1CB3 _ 8B. 40, 0C
        add     edx, eax                                ; 1CB6 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 1CB8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1CBB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CBE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CC1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CC4 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 1CC7 _ 8B. 40, 14
        mov     ecx, dword [ebp-8H]                     ; 1CCA _ 8B. 4D, F8
        sub     ecx, eax                                ; 1CCD _ 29. C1
        mov     eax, ecx                                ; 1CCF _ 89. C8
        cmp     edx, eax                                ; 1CD1 _ 39. C2
        jl      ?_147                                   ; 1CD3 _ 7C, 12
        mov     eax, dword [ebp+8H]                     ; 1CD5 _ 8B. 45, 08
        add     eax, 4                                  ; 1CD8 _ 83. C0, 04
        push    eax                                     ; 1CDB _ 50
        push    dword [ebp+0CH]                         ; 1CDC _ FF. 75, 0C
        call    Println                                 ; 1CDF _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1CE4 _ 83. C4, 08
?_147:  add     dword [ebp-10H], 1                      ; 1CE7 _ 83. 45, F0, 01
?_148:  mov     edx, dword [ebp-10H]                    ; 1CEB _ 8B. 55, F0
        mov     eax, dword [ebp+10H]                    ; 1CEE _ 8B. 45, 10
        add     eax, edx                                ; 1CF1 _ 01. D0
        movzx   eax, byte [eax]                         ; 1CF3 _ 0F B6. 00
        test    al, al                                  ; 1CF6 _ 84. C0
        jne     ?_144                                   ; 1CF8 _ 0F 85, FFFFFF34
        mov     eax, dword [ebp+8H]                     ; 1CFE _ 8B. 45, 08
        mov     ebx, dword [ebp-4H]                     ; 1D01 _ 8B. 5D, FC
        leave                                           ; 1D04 _ C9
        ret                                             ; 1D05 _ C3
; showMsg End of function

clearMsg:; Function begin
        push    ebp                                     ; 1D06 _ 55
        mov     ebp, esp                                ; 1D07 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1D09 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D0C _ 8B. 00
        push    255                                     ; 1D0E _ 68, 000000FF
        push    dword [ebp+0CH]                         ; 1D13 _ FF. 75, 0C
        push    eax                                     ; 1D16 _ 50
        call    SheetClear                              ; 1D17 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1D1C _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1D1F _ 8B. 45, 08
        add     eax, 4                                  ; 1D22 _ 83. C0, 04
        push    eax                                     ; 1D25 _ 50
        call    initCursor                              ; 1D26 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1D2B _ 83. C4, 04
        nop                                             ; 1D2E _ 90
        leave                                           ; 1D2F _ C9
        ret                                             ; 1D30 _ C3
; clearMsg End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1D31 _ 55
        mov     ebp, esp                                ; 1D32 _ 89. E5
        sub     esp, 8                                  ; 1D34 _ 83. EC, 08
?_149:  sub     esp, 12                                 ; 1D37 _ 83. EC, 0C
        push    100                                     ; 1D3A _ 6A, 64
        call    io_in8                                  ; 1D3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D41 _ 83. C4, 10
        movsx   eax, al                                 ; 1D44 _ 0F BE. C0
        and     eax, 02H                                ; 1D47 _ 83. E0, 02
        test    eax, eax                                ; 1D4A _ 85. C0
        jz      ?_150                                   ; 1D4C _ 74, 02
        jmp     ?_149                                   ; 1D4E _ EB, E7

?_150:  nop                                             ; 1D50 _ 90
        nop                                             ; 1D51 _ 90
        leave                                           ; 1D52 _ C9
        ret                                             ; 1D53 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1D54 _ 55
        mov     ebp, esp                                ; 1D55 _ 89. E5
        sub     esp, 8                                  ; 1D57 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 1D5A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D5F _ 83. EC, 08
        push    96                                      ; 1D62 _ 6A, 60
        push    100                                     ; 1D64 _ 6A, 64
        call    io_out8                                 ; 1D66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D6B _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1D6E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D73 _ 83. EC, 08
        push    71                                      ; 1D76 _ 6A, 47
        push    96                                      ; 1D78 _ 6A, 60
        call    io_out8                                 ; 1D7A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D7F _ 83. C4, 10
        nop                                             ; 1D82 _ 90
        leave                                           ; 1D83 _ C9
        ret                                             ; 1D84 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1D85 _ 55
        mov     ebp, esp                                ; 1D86 _ 89. E5
        sub     esp, 8                                  ; 1D88 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 1D8B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D90 _ 83. EC, 08
        push    212                                     ; 1D93 _ 68, 000000D4
        push    100                                     ; 1D98 _ 6A, 64
        call    io_out8                                 ; 1D9A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D9F _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1DA2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1DA7 _ 83. EC, 08
        push    244                                     ; 1DAA _ 68, 000000F4
        push    96                                      ; 1DAF _ 6A, 60
        call    io_out8                                 ; 1DB1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB6 _ 83. C4, 10
        nop                                             ; 1DB9 _ 90
        leave                                           ; 1DBA _ C9
        ret                                             ; 1DBB _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1DBC _ 55
        mov     ebp, esp                                ; 1DBD _ 89. E5
        sub     esp, 4                                  ; 1DBF _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1DC2 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1DC5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1DC8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DCB _ 0F B6. 40, 03
        test    al, al                                  ; 1DCF _ 84. C0
        jnz     ?_152                                   ; 1DD1 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1DD3 _ 80. 7D, FC, FA
        jnz     ?_151                                   ; 1DD7 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1DD9 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1DDC _ C6. 40, 03, 01
?_151:  mov     eax, 0                                  ; 1DE0 _ B8, 00000000
        jmp     ?_159                                   ; 1DE5 _ E9, 0000010F

?_152:  mov     eax, dword [ebp+8H]                     ; 1DEA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DED _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1DF1 _ 3C, 01
        jnz     ?_154                                   ; 1DF3 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1DF5 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1DF9 _ 25, 000000C8
        cmp     eax, 8                                  ; 1DFE _ 83. F8, 08
        jnz     ?_153                                   ; 1E01 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1E03 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E06 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1E0A _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1E0C _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1E0F _ C6. 40, 03, 02
?_153:  mov     eax, 0                                  ; 1E13 _ B8, 00000000
        jmp     ?_159                                   ; 1E18 _ E9, 000000DC

?_154:  mov     eax, dword [ebp+8H]                     ; 1E1D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E20 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1E24 _ 3C, 02
        jnz     ?_155                                   ; 1E26 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1E28 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E2B _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1E2F _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E32 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1E35 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1E39 _ B8, 00000000
        jmp     ?_159                                   ; 1E3E _ E9, 000000B6

?_155:  mov     eax, dword [ebp+8H]                     ; 1E43 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E46 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1E4A _ 3C, 03
        jne     ?_158                                   ; 1E4C _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1E52 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E55 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1E59 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1E5C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E5F _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1E63 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E66 _ 0F B6. 00
        movzx   eax, al                                 ; 1E69 _ 0F B6. C0
        and     eax, 07H                                ; 1E6C _ 83. E0, 07
        mov     edx, eax                                ; 1E6F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E71 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1E74 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1E77 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1E7A _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1E7E _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1E81 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1E84 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E87 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1E8A _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1E8E _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1E91 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1E94 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1E97 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E9A _ 0F B6. 00
        movzx   eax, al                                 ; 1E9D _ 0F B6. C0
        and     eax, 10H                                ; 1EA0 _ 83. E0, 10
        test    eax, eax                                ; 1EA3 _ 85. C0
        jz      ?_156                                   ; 1EA5 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1EA7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1EAA _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1EAD _ 0D, FFFFFF00
        mov     edx, eax                                ; 1EB2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EB4 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1EB7 _ 89. 50, 04
?_156:  mov     eax, dword [ebp+8H]                     ; 1EBA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1EBD _ 0F B6. 00
        movzx   eax, al                                 ; 1EC0 _ 0F B6. C0
        and     eax, 20H                                ; 1EC3 _ 83. E0, 20
        test    eax, eax                                ; 1EC6 _ 85. C0
        jz      ?_157                                   ; 1EC8 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1ECA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1ECD _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1ED0 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1ED5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1ED7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EDA _ 89. 50, 08
?_157:  mov     eax, dword [ebp+8H]                     ; 1EDD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EE0 _ 8B. 40, 08
        neg     eax                                     ; 1EE3 _ F7. D8
        mov     edx, eax                                ; 1EE5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EE7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EEA _ 89. 50, 08
        mov     eax, 1                                  ; 1EED _ B8, 00000001
        jmp     ?_159                                   ; 1EF2 _ EB, 05

?_158:  mov     eax, 4294967295                         ; 1EF4 _ B8, FFFFFFFF
?_159:  leave                                           ; 1EF9 _ C9
        ret                                             ; 1EFA _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 1EFB _ 55
        mov     ebp, esp                                ; 1EFC _ 89. E5
        sub     esp, 4                                  ; 1EFE _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1F01 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1F04 _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 1F07 _ 80. 7D, FC, 0E
        jbe     ?_160                                   ; 1F0B _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 1F0D _ 80. 7D, FC, 35
        ja      ?_160                                   ; 1F11 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 1F13 _ 0F B6. 45, FC
        sub     eax, 15                                 ; 1F17 _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.2039+eax]       ; 1F1A _ 0F B6. 80, 00000240(d)
        jmp     ?_162                                   ; 1F21 _ EB, 21

?_160:  cmp     byte [ebp-4H], 1                        ; 1F23 _ 80. 7D, FC, 01
        jbe     ?_161                                   ; 1F27 _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 1F29 _ 80. 7D, FC, 0E
        ja      ?_161                                   ; 1F2D _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 1F2F _ 0F B6. 45, FC
        sub     eax, 2                                  ; 1F33 _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.2040+eax]    ; 1F36 _ 0F B6. 80, 00000268(d)
        jmp     ?_162                                   ; 1F3D _ EB, 05

?_161:  mov     eax, 0                                  ; 1F3F _ B8, 00000000
?_162:  leave                                           ; 1F44 _ C9
        ret                                             ; 1F45 _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 1F46 _ 55
        mov     ebp, esp                                ; 1F47 _ 89. E5
        sub     esp, 4                                  ; 1F49 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1F4C _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1F4F _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 1F52 _ 80. 7D, FC, 8E
        jbe     ?_163                                   ; 1F56 _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 1F58 _ 80. 7D, FC, B5
        ja      ?_163                                   ; 1F5C _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 1F5E _ 0F B6. 45, FC
        sub     eax, 143                                ; 1F62 _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.2044+eax]       ; 1F67 _ 0F B6. 80, 00000280(d)
        jmp     ?_165                                   ; 1F6E _ EB, 23

?_163:  cmp     byte [ebp-4H], -127                     ; 1F70 _ 80. 7D, FC, 81
        jbe     ?_164                                   ; 1F74 _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 1F76 _ 80. 7D, FC, 8E
        ja      ?_164                                   ; 1F7A _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 1F7C _ 0F B6. 45, FC
        sub     eax, 130                                ; 1F80 _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.2045+eax]    ; 1F85 _ 0F B6. 80, 000002A8(d)
        jmp     ?_165                                   ; 1F8C _ EB, 05

?_164:  mov     eax, 0                                  ; 1F8E _ B8, 00000000
?_165:  leave                                           ; 1F93 _ C9
        ret                                             ; 1F94 _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 1F95 _ 55
        mov     ebp, esp                                ; 1F96 _ 89. E5
        push    ebx                                     ; 1F98 _ 53
        mov     eax, dword [ebp+10H]                    ; 1F99 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1F9C _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 1F9F _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 1FA2 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1FA5 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 1FA7 _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 1FAA _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1FAD _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1FB0 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1FB3 _ 8B. 00
        push    ebx                                     ; 1FB5 _ 53
        push    ecx                                     ; 1FB6 _ 51
        push    edx                                     ; 1FB7 _ 52
        push    eax                                     ; 1FB8 _ 50
        push    -1                                      ; 1FB9 _ 6A, FF
        push    dword [ebp+0CH]                         ; 1FBB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FBE _ FF. 75, 08
        call    boxfill8                                ; 1FC1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1FC6 _ 83. C4, 1C
        nop                                             ; 1FC9 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1FCA _ 8B. 5D, FC
        leave                                           ; 1FCD _ C9
        ret                                             ; 1FCE _ C3
; eraseMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 1FCF _ 55
        mov     ebp, esp                                ; 1FD0 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 1FD2 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1FD5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1FD7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1FDA _ 8B. 40, 04
        add     edx, eax                                ; 1FDD _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FDF _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 1FE2 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 1FE4 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1FE7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FEA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1FED _ 8B. 40, 08
        add     edx, eax                                ; 1FF0 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FF2 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 1FF5 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1FF8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1FFB _ 8B. 00
        test    eax, eax                                ; 1FFD _ 85. C0
        jns     ?_166                                   ; 1FFF _ 79, 09
        mov     eax, dword [ebp+0CH]                    ; 2001 _ 8B. 45, 0C
        mov     dword [eax], 0                          ; 2004 _ C7. 00, 00000000
?_166:  mov     eax, dword [ebp+0CH]                    ; 200A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 200D _ 8B. 40, 04
        test    eax, eax                                ; 2010 _ 85. C0
        jns     ?_167                                   ; 2012 _ 79, 0A
        mov     eax, dword [ebp+0CH]                    ; 2014 _ 8B. 45, 0C
        mov     dword [eax+4H], 0                       ; 2017 _ C7. 40, 04, 00000000
?_167:  mov     eax, dword [ebp+0CH]                    ; 201E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2021 _ 8B. 00
        cmp     eax, dword [ebp+10H]                    ; 2023 _ 3B. 45, 10
        jle     ?_168                                   ; 2026 _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 2028 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 202B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 202E _ 89. 10
?_168:  mov     eax, dword [ebp+0CH]                    ; 2030 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2033 _ 8B. 40, 04
        cmp     eax, dword [ebp+14H]                    ; 2036 _ 3B. 45, 14
        jle     ?_169                                   ; 2039 _ 7E, 09
        mov     eax, dword [ebp+0CH]                    ; 203B _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 203E _ 8B. 55, 14
        mov     dword [eax+4H], edx                     ; 2041 _ 89. 50, 04
?_169:  nop                                             ; 2044 _ 90
        pop     ebp                                     ; 2045 _ 5D
        ret                                             ; 2046 _ C3
; computeMousePosition End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 2047 _ 55
        mov     ebp, esp                                ; 2048 _ 89. E5
        sub     esp, 24                                 ; 204A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 204D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 2052 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 2055 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 205C _ 98
        mov     dword [ebp-10H], eax                    ; 205D _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 2060 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 2067 _ 98
        mov     dword [ebp-0CH], eax                    ; 2068 _ 89. 45, F4
        sub     esp, 8                                  ; 206B _ 83. EC, 08
        push    33                                      ; 206E _ 6A, 21
        push    32                                      ; 2070 _ 6A, 20
        call    io_out8                                 ; 2072 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2077 _ 83. C4, 10
        sub     esp, 12                                 ; 207A _ 83. EC, 0C
        push    96                                      ; 207D _ 6A, 60
        call    io_in8                                  ; 207F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2084 _ 83. C4, 10
        sub     esp, 4                                  ; 2087 _ 83. EC, 04
        push    txtCursor                               ; 208A _ 68, 00000000(d)
        push    bootInfo                                ; 208F _ 68, 00000000(d)
        push    ?_187                                   ; 2094 _ 68, 00000045(d)
        call    Printf                                  ; 2099 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 209E _ 83. C4, 10
        nop                                             ; 20A1 _ 90
        leave                                           ; 20A2 _ C9
        ret                                             ; 20A3 _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 20A4 _ 55
        mov     ebp, esp                                ; 20A5 _ 89. E5
        sub     esp, 24                                 ; 20A7 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 20AA _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 20AF _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 20B2 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 20B9 _ 98
        mov     dword [ebp-10H], eax                    ; 20BA _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 20BD _ 0F B7. 05, 00000006(d)
        cwde                                            ; 20C4 _ 98
        mov     dword [ebp-0CH], eax                    ; 20C5 _ 89. 45, F4
        sub     esp, 8                                  ; 20C8 _ 83. EC, 08
        push    33                                      ; 20CB _ 6A, 21
        push    32                                      ; 20CD _ 6A, 20
        call    io_out8                                 ; 20CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20D4 _ 83. C4, 10
        sub     esp, 12                                 ; 20D7 _ 83. EC, 0C
        push    96                                      ; 20DA _ 6A, 60
        call    io_in8                                  ; 20DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20E1 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 20E4 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 20E7 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 20EB _ 83. EC, 08
        push    eax                                     ; 20EE _ 50
        push    KEY_FIFO8                               ; 20EF _ 68, 00000000(d)
        call    fifo8_w                                 ; 20F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20F9 _ 83. C4, 10
        nop                                             ; 20FC _ 90
        leave                                           ; 20FD _ C9
        ret                                             ; 20FE _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 20FF _ 55
        mov     ebp, esp                                ; 2100 _ 89. E5
        sub     esp, 24                                 ; 2102 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 2105 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 210A _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 210D _ 0F B7. 05, 00000004(d)
        cwde                                            ; 2114 _ 98
        mov     dword [ebp-10H], eax                    ; 2115 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 2118 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 211F _ 98
        mov     dword [ebp-0CH], eax                    ; 2120 _ 89. 45, F4
        sub     esp, 8                                  ; 2123 _ 83. EC, 08
        push    32                                      ; 2126 _ 6A, 20
        push    160                                     ; 2128 _ 68, 000000A0
        call    io_out8                                 ; 212D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2132 _ 83. C4, 10
        sub     esp, 8                                  ; 2135 _ 83. EC, 08
        push    32                                      ; 2138 _ 6A, 20
        push    32                                      ; 213A _ 6A, 20
        call    io_out8                                 ; 213C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2141 _ 83. C4, 10
        sub     esp, 12                                 ; 2144 _ 83. EC, 0C
        push    96                                      ; 2147 _ 6A, 60
        call    io_in8                                  ; 2149 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 214E _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 2151 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2154 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 2158 _ 83. EC, 08
        push    eax                                     ; 215B _ 50
        push    MOUSE_FIFO8                             ; 215C _ 68, 00000000(d)
        call    fifo8_w                                 ; 2161 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2166 _ 83. C4, 10
        nop                                             ; 2169 _ 90
        leave                                           ; 216A _ C9
        ret                                             ; 216B _ C3
; intHandlerFromC_mouse End of function

CMain:  ; Function begin
        push    ebp                                     ; 216C _ 55
        mov     ebp, esp                                ; 216D _ 89. E5
        sub     esp, 120                                ; 216F _ 83. EC, 78
        call    pict_init                               ; 2172 _ E8, FFFFFFFC(rel)
        call    getAddrRangeDescArray                   ; 2177 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-68H], eax                    ; 217C _ 89. 45, 98
        mov     eax, dword [HEAP_BASE_ADDR]             ; 217F _ A1, 00000000(d)
        sub     esp, 8                                  ; 2184 _ 83. EC, 08
        push    -799080448                              ; 2187 _ 68, D05F0000
        push    eax                                     ; 218C _ 50
        call    memman_free                             ; 218D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2192 _ 83. C4, 10
        cmp     eax, -1                                 ; 2195 _ 83. F8, FF
        jnz     ?_170                                   ; 2198 _ 75, 1A
        sub     esp, 4                                  ; 219A _ 83. EC, 04
        push    txtCursor                               ; 219D _ 68, 00000000(d)
        push    bootInfo                                ; 21A2 _ 68, 00000000(d)
        push    ?_188                                   ; 21A7 _ 68, 00000048(d)
        call    Printf                                  ; 21AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21B1 _ 83. C4, 10
?_170:  mov     eax, dword [bootInfo]                   ; 21B4 _ A1, 00000000(d)
        mov     dword [ebp-64H], eax                    ; 21B9 _ 89. 45, 9C
        movzx   eax, word [bootInfo+4H]                 ; 21BC _ 0F B7. 05, 00000004(d)
        cwde                                            ; 21C3 _ 98
        mov     dword [ebp-60H], eax                    ; 21C4 _ 89. 45, A0
        movzx   eax, word [bootInfo+6H]                 ; 21C7 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 21CE _ 98
        mov     dword [ebp-5CH], eax                    ; 21CF _ 89. 45, A4
        sub     esp, 12                                 ; 21D2 _ 83. EC, 0C
        push    8                                       ; 21D5 _ 6A, 08
        call    malloc_8                                ; 21D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21DC _ 83. C4, 10
        mov     dword [ebp-58H], eax                    ; 21DF _ 89. 45, A8
        mov     eax, dword [ebp-58H]                    ; 21E2 _ 8B. 45, A8
        mov     dword [eax], 0                          ; 21E5 _ C7. 00, 00000000
        mov     eax, dword [ebp-58H]                    ; 21EB _ 8B. 45, A8
        mov     dword [eax+4H], 0                       ; 21EE _ C7. 40, 04, 00000000
        sub     esp, 12                                 ; 21F5 _ 83. EC, 0C
        push    8                                       ; 21F8 _ 6A, 08
        call    malloc_8                                ; 21FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21FF _ 83. C4, 10
        mov     dword [ebp-54H], eax                    ; 2202 _ 89. 45, AC
        movzx   eax, word [bootInfo+4H]                 ; 2205 _ 0F B7. 05, 00000004(d)
        movsx   edx, ax                                 ; 220C _ 0F BF. D0
        mov     eax, dword [ebp-54H]                    ; 220F _ 8B. 45, AC
        mov     dword [eax], edx                        ; 2212 _ 89. 10
        movzx   eax, word [bootInfo+6H]                 ; 2214 _ 0F B7. 05, 00000006(d)
        movsx   edx, ax                                 ; 221B _ 0F BF. D0
        mov     eax, dword [ebp-54H]                    ; 221E _ 8B. 45, AC
        mov     dword [eax+4H], edx                     ; 2221 _ 89. 50, 04
        sub     esp, 12                                 ; 2224 _ 83. EC, 0C
        push    8                                       ; 2227 _ 6A, 08
        call    malloc_8                                ; 2229 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 222E _ 83. C4, 10
        mov     dword [ebp-50H], eax                    ; 2231 _ 89. 45, B0
        mov     eax, dword [ebp-50H]                    ; 2234 _ 8B. 45, B0
        mov     dword [eax], 9                          ; 2237 _ C7. 00, 00000009
        mov     eax, dword [ebp-50H]                    ; 223D _ 8B. 45, B0
        mov     dword [eax+4H], 9                       ; 2240 _ C7. 40, 04, 00000009
        sub     esp, 12                                 ; 2247 _ 83. EC, 0C
        push    8                                       ; 224A _ 6A, 08
        call    malloc_8                                ; 224C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2251 _ 83. C4, 10
        mov     dword [ebp-4CH], eax                    ; 2254 _ 89. 45, B4
        mov     eax, dword [ebp-4CH]                    ; 2257 _ 8B. 45, B4
        mov     dword [eax], 160                        ; 225A _ C7. 00, 000000A0
        mov     eax, dword [ebp-4CH]                    ; 2260 _ 8B. 45, B4
        mov     dword [eax+4H], 80                      ; 2263 _ C7. 40, 04, 00000050
        sub     esp, 12                                 ; 226A _ 83. EC, 0C
        push    8                                       ; 226D _ 6A, 08
        call    malloc_8                                ; 226F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2274 _ 83. C4, 10
        mov     dword [ebp-48H], eax                    ; 2277 _ 89. 45, B8
        mov     eax, dword [ebp-48H]                    ; 227A _ 8B. 45, B8
        mov     dword [eax], 80                         ; 227D _ C7. 00, 00000050
        mov     eax, dword [ebp-48H]                    ; 2283 _ 8B. 45, B8
        mov     dword [eax+4H], 80                      ; 2286 _ C7. 40, 04, 00000050
        sub     esp, 12                                 ; 228D _ 83. EC, 0C
        push    8                                       ; 2290 _ 6A, 08
        call    malloc_8                                ; 2292 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2297 _ 83. C4, 10
        mov     dword [ebp-44H], eax                    ; 229A _ 89. 45, BC
        mov     eax, dword [ebp-44H]                    ; 229D _ 8B. 45, BC
        mov     dword [eax], 20                         ; 22A0 _ C7. 00, 00000014
        mov     eax, dword [ebp-44H]                    ; 22A6 _ 8B. 45, BC
        mov     dword [eax+4H], 20                      ; 22A9 _ C7. 40, 04, 00000014
        mov     dword [ebp-40H], 1                      ; 22B0 _ C7. 45, C0, 00000001
        mov     dword [ebp-3CH], 2                      ; 22B7 _ C7. 45, C4, 00000002
        mov     dword [ebp-38H], 3                      ; 22BE _ C7. 45, C8, 00000003
        mov     dword [ebp-34H], 4                      ; 22C5 _ C7. 45, CC, 00000004
        sub     esp, 12                                 ; 22CC _ 83. EC, 0C
        push    65535                                   ; 22CF _ 68, 0000FFFF
        call    malloc_8                                ; 22D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22D9 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 22DC _ 89. 45, D0
        sub     esp, 4                                  ; 22DF _ 83. EC, 04
        push    65535                                   ; 22E2 _ 68, 0000FFFF
        push    11                                      ; 22E7 _ 6A, 0B
        push    dword [ebp-30H]                         ; 22E9 _ FF. 75, D0
        call    memset_8                                ; 22EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22F1 _ 83. C4, 10
        sub     esp, 12                                 ; 22F4 _ 83. EC, 0C
        push    cursor                                  ; 22F7 _ 68, 00000000(d)
        push    0                                       ; 22FC _ 6A, 00
        push    0                                       ; 22FE _ 6A, 00
        push    dword [ebp-60H]                         ; 2300 _ FF. 75, A0
        push    dword [ebp-30H]                         ; 2303 _ FF. 75, D0
        call    PrintRGB                                ; 2306 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 230B _ 83. C4, 20
        sub     esp, 4                                  ; 230E _ 83. EC, 04
        push    1                                       ; 2311 _ 6A, 01
        push    dword [ebp-30H]                         ; 2313 _ FF. 75, D0
        push    0                                       ; 2316 _ 6A, 00
        push    65535                                   ; 2318 _ 68, 0000FFFF
        push    dword [ebp-50H]                         ; 231D _ FF. 75, B0
        push    dword [ebp-44H]                         ; 2320 _ FF. 75, BC
        push    dword [ebp-40H]                         ; 2323 _ FF. 75, C0
        call    insertSheet                             ; 2326 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 232B _ 83. C4, 20
        sub     esp, 12                                 ; 232E _ 83. EC, 0C
        push    65535                                   ; 2331 _ 68, 0000FFFF
        call    malloc_8                                ; 2336 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 233B _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 233E _ 89. 45, D4
        sub     esp, 4                                  ; 2341 _ 83. EC, 04
        push    65535                                   ; 2344 _ 68, 0000FFFF
        push    255                                     ; 2349 _ 68, 000000FF
        push    dword [ebp-2CH]                         ; 234E _ FF. 75, D4
        call    memset_8                                ; 2351 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2356 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 2359 _ 8B. 45, D4
        mov     dword [txtInfo_1], eax                  ; 235C _ A3, 00000000(d)
        sub     esp, 4                                  ; 2361 _ 83. EC, 04
        push    1                                       ; 2364 _ 6A, 01
        push    dword [ebp-2CH]                         ; 2366 _ FF. 75, D4
        push    1                                       ; 2369 _ 6A, 01
        push    65535                                   ; 236B _ 68, 0000FFFF
        push    dword [ebp-54H]                         ; 2370 _ FF. 75, AC
        push    dword [ebp-58H]                         ; 2373 _ FF. 75, A8
        push    dword [ebp-3CH]                         ; 2376 _ FF. 75, C4
        call    insertSheet                             ; 2379 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 237E _ 83. C4, 20
        sub     esp, 12                                 ; 2381 _ 83. EC, 0C
        push    65535                                   ; 2384 _ 68, 0000FFFF
        call    malloc_8                                ; 2389 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 238E _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 2391 _ 89. 45, D8
        sub     esp, 4                                  ; 2394 _ 83. EC, 04
        push    65535                                   ; 2397 _ 68, 0000FFFF
        push    255                                     ; 239C _ 68, 000000FF
        push    dword [ebp-28H]                         ; 23A1 _ FF. 75, D8
        call    memset_8                                ; 23A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23A9 _ 83. C4, 10
        sub     esp, 4                                  ; 23AC _ 83. EC, 04
        push    1                                       ; 23AF _ 6A, 01
        push    dword [ebp-28H]                         ; 23B1 _ FF. 75, D8
        push    2                                       ; 23B4 _ 6A, 02
        push    65535                                   ; 23B6 _ 68, 0000FFFF
        push    dword [ebp-4CH]                         ; 23BB _ FF. 75, B4
        push    dword [ebp-58H]                         ; 23BE _ FF. 75, A8
        push    dword [ebp-38H]                         ; 23C1 _ FF. 75, C8
        call    insertSheet                             ; 23C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 23C9 _ 83. C4, 20
        sub     esp, 12                                 ; 23CC _ 83. EC, 0C
        push    65535                                   ; 23CF _ 68, 0000FFFF
        call    malloc_8                                ; 23D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23D9 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 23DC _ 89. 45, DC
        sub     esp, 4                                  ; 23DF _ 83. EC, 04
        push    65535                                   ; 23E2 _ 68, 0000FFFF
        push    15                                      ; 23E7 _ 6A, 0F
        push    dword [ebp-24H]                         ; 23E9 _ FF. 75, DC
        call    memset_8                                ; 23EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23F1 _ 83. C4, 10
        sub     esp, 4                                  ; 23F4 _ 83. EC, 04
        push    1                                       ; 23F7 _ 6A, 01
        push    dword [ebp-24H]                         ; 23F9 _ FF. 75, DC
        push    255                                     ; 23FC _ 68, 000000FF
        push    65535                                   ; 2401 _ 68, 0000FFFF
        push    dword [ebp-54H]                         ; 2406 _ FF. 75, AC
        push    dword [ebp-58H]                         ; 2409 _ FF. 75, A8
        push    dword [ebp-34H]                         ; 240C _ FF. 75, CC
        call    insertSheet                             ; 240F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2414 _ 83. C4, 20
        call    io_sti                                  ; 2417 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 241C _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 2421 _ 83. EC, 04
        push    128                                     ; 2424 _ 68, 00000080
        push    key_buf                                 ; 2429 _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 242E _ 68, 00000000(d)
        call    fifo8_init                              ; 2433 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2438 _ 83. C4, 10
        sub     esp, 4                                  ; 243B _ 83. EC, 04
        push    256                                     ; 243E _ 68, 00000100
        push    mouse_buf                               ; 2443 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 2448 _ 68, 00000000(d)
        call    fifo8_init                              ; 244D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2452 _ 83. C4, 10
        call    init_keyboard                           ; 2455 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 245A _ 83. EC, 0C
        push    bootInfo                                ; 245D _ 68, 00000000(d)
        call    drawSheetList                           ; 2462 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2467 _ 83. C4, 10
        mov     dword [ebp-20H], 0                      ; 246A _ C7. 45, E0, 00000000
        mov     dword [ebp-6CH], 0                      ; 2471 _ C7. 45, 94, 00000000
?_171:  call    io_cli                                  ; 2478 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 247D _ 83. EC, 0C
        push    KEY_FIFO8                               ; 2480 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 2485 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 248A _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 248D _ 89. 45, E4
        sub     esp, 12                                 ; 2490 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 2493 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 2498 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 249D _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 24A0 _ 89. 45, E8
        cmp     dword [ebp-1CH], 0                      ; 24A3 _ 83. 7D, E4, 00
        jz      ?_172                                   ; 24A7 _ 74, 10
        cmp     dword [ebp-18H], 0                      ; 24A9 _ 83. 7D, E8, 00
        jz      ?_172                                   ; 24AD _ 74, 0A
        call    io_stihlt                               ; 24AF _ E8, FFFFFFFC(rel)
        jmp     ?_178                                   ; 24B4 _ E9, 00000240

?_172:  cmp     dword [ebp-1CH], 0                      ; 24B9 _ 83. 7D, E4, 00
        jne     ?_177                                   ; 24BD _ 0F 85, 00000104
        call    io_sti                                  ; 24C3 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 24C8 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 24CB _ 68, 00000000(d)
        call    fifo8_r                                 ; 24D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24D5 _ 83. C4, 10
        mov     byte [ebp-6FH], al                      ; 24D8 _ 88. 45, 91
        movzx   eax, byte [ebp-6FH]                     ; 24DB _ 0F B6. 45, 91
        sub     esp, 12                                 ; 24DF _ 83. EC, 0C
        push    eax                                     ; 24E2 _ 50
        call    getKeyMakeChar                          ; 24E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24E8 _ 83. C4, 10
        mov     byte [ebp-6EH], al                      ; 24EB _ 88. 45, 92
        cmp     byte [ebp-6FH], 28                      ; 24EE _ 80. 7D, 91, 1C
        jnz     ?_173                                   ; 24F2 _ 75, 3E
        cmp     dword [ebp-6CH], 0                      ; 24F4 _ 83. 7D, 94, 00
        jne     ?_176                                   ; 24F8 _ 0F 85, 000000B4
        push    1                                       ; 24FE _ 6A, 01
        push    dword [ebp-4CH]                         ; 2500 _ FF. 75, B4
        push    dword [ebp-44H]                         ; 2503 _ FF. 75, BC
        push    bootInfo                                ; 2506 _ 68, 00000000(d)
        call    createWindow                            ; 250B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2510 _ 83. C4, 10
        mov     dword [ebp-6CH], eax                    ; 2513 _ 89. 45, 94
        push    11                                      ; 2516 _ 6A, 0B
        push    ?_189                                   ; 2518 _ 68, 00000055(d)
        push    bootInfo                                ; 251D _ 68, 00000000(d)
        push    dword [ebp-6CH]                         ; 2522 _ FF. 75, 94
        call    showMsg                                 ; 2525 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 252A _ 83. C4, 10
        jmp     ?_176                                   ; 252D _ E9, 00000080

?_173:  cmp     byte [ebp-6EH], 9                       ; 2532 _ 80. 7D, 92, 09
        jnz     ?_174                                   ; 2536 _ 75, 19
        sub     esp, 4                                  ; 2538 _ 83. EC, 04
        push    1                                       ; 253B _ 6A, 01
        push    txtCursor                               ; 253D _ 68, 00000000(d)
        push    bootInfo                                ; 2542 _ 68, 00000000(d)
        call    PrintTab                                ; 2547 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 254C _ 83. C4, 10
        jmp     ?_176                                   ; 254F _ EB, 61

?_174:  cmp     byte [ebp-6EH], 0                       ; 2551 _ 80. 7D, 92, 00
        jz      ?_175                                   ; 2555 _ 74, 1C
        movsx   eax, byte [ebp-6EH]                     ; 2557 _ 0F BE. 45, 92
        sub     esp, 4                                  ; 255B _ 83. EC, 04
        push    txtCursor                               ; 255E _ 68, 00000000(d)
        push    txtInfo_1                               ; 2563 _ 68, 00000000(d)
        push    eax                                     ; 2568 _ 50
        call    PrintChar                               ; 2569 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 256E _ 83. C4, 10
        jmp     ?_176                                   ; 2571 _ EB, 3F

?_175:  cmp     byte [ebp-6FH], 1                       ; 2573 _ 80. 7D, 91, 01
        jnz     ?_176                                   ; 2577 _ 75, 39
        sub     esp, 12                                 ; 2579 _ 83. EC, 0C
        push    dword [ebp-3CH]                         ; 257C _ FF. 75, C4
        call    getSheet                                ; 257F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2584 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 2587 _ 89. 45, EC
        sub     esp, 4                                  ; 258A _ 83. EC, 04
        push    255                                     ; 258D _ 68, 000000FF
        push    bootInfo                                ; 2592 _ 68, 00000000(d)
        push    dword [ebp-14H]                         ; 2597 _ FF. 75, EC
        call    SheetClear                              ; 259A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 259F _ 83. C4, 10
        sub     esp, 12                                 ; 25A2 _ 83. EC, 0C
        push    txtCursor                               ; 25A5 _ 68, 00000000(d)
        call    initCursor                              ; 25AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25AF _ 83. C4, 10
?_176:  sub     esp, 12                                 ; 25B2 _ 83. EC, 0C
        push    bootInfo                                ; 25B5 _ 68, 00000000(d)
        call    drawSheetList                           ; 25BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25BF _ 83. C4, 10
        jmp     ?_171                                   ; 25C2 _ E9, FFFFFEB1

?_177:  cmp     dword [ebp-18H], 0                      ; 25C7 _ 83. 7D, E8, 00
        jne     ?_171                                   ; 25CB _ 0F 85, FFFFFEA7
        call    io_sti                                  ; 25D1 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 25D6 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 25D9 _ 68, 00000000(d)
        call    fifo8_r                                 ; 25DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25E3 _ 83. C4, 10
        mov     byte [ebp-6DH], al                      ; 25E6 _ 88. 45, 93
        movzx   eax, byte [ebp-6DH]                     ; 25E9 _ 0F B6. 45, 93
        sub     esp, 8                                  ; 25ED _ 83. EC, 08
        push    eax                                     ; 25F0 _ 50
        push    mdec                                    ; 25F1 _ 68, 00000000(d)
        call    mouse_decode                            ; 25F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25FB _ 83. C4, 10
        test    eax, eax                                ; 25FE _ 85. C0
        je      ?_171                                   ; 2600 _ 0F 84, FFFFFE72
        push    dword [ebp-5CH]                         ; 2606 _ FF. 75, A4
        push    dword [ebp-60H]                         ; 2609 _ FF. 75, A0
        push    dword [ebp-44H]                         ; 260C _ FF. 75, BC
        push    mdec                                    ; 260F _ 68, 00000000(d)
        call    computeMousePosition                    ; 2614 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2619 _ 83. C4, 10
        sub     esp, 12                                 ; 261C _ 83. EC, 0C
        push    dword [ebp-38H]                         ; 261F _ FF. 75, C8
        call    getSheet                                ; 2622 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2627 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 262A _ 89. 45, F0
        sub     esp, 12                                 ; 262D _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 2630 _ FF. 75, C0
        call    getSheet                                ; 2633 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2638 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 263B _ 89. 45, F4
        sub     esp, 12                                 ; 263E _ 83. EC, 0C
        push    mouseinfoCursor                         ; 2641 _ 68, 00000000(d)
        call    initCursor                              ; 2646 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 264B _ 83. C4, 10
        sub     esp, 4                                  ; 264E _ 83. EC, 04
        push    255                                     ; 2651 _ 68, 000000FF
        push    bootInfo                                ; 2656 _ 68, 00000000(d)
        push    dword [ebp-10H]                         ; 265B _ FF. 75, F0
        call    SheetClear                              ; 265E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2663 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2666 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 2669 _ 8B. 00
        mov     eax, dword [eax]                        ; 266B _ 8B. 00
        sub     esp, 12                                 ; 266D _ 83. EC, 0C
        push    eax                                     ; 2670 _ 50
        call    intToHexStr                             ; 2671 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2676 _ 83. C4, 10
        push    mouseinfoCursor                         ; 2679 _ 68, 00000000(d)
        push    bootInfo                                ; 267E _ 68, 00000000(d)
        push    dword [ebp-10H]                         ; 2683 _ FF. 75, F0
        push    eax                                     ; 2686 _ 50
        call    SheetPrintf                             ; 2687 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 268C _ 83. C4, 10
        sub     esp, 4                                  ; 268F _ 83. EC, 04
        push    mouseinfoCursor                         ; 2692 _ 68, 00000000(d)
        push    bootInfo                                ; 2697 _ 68, 00000000(d)
        push    dword [ebp-10H]                         ; 269C _ FF. 75, F0
        call    SheetPrintln                            ; 269F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26A4 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 26A7 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 26AA _ 8B. 00
        mov     eax, dword [eax+4H]                     ; 26AC _ 8B. 40, 04
        sub     esp, 12                                 ; 26AF _ 83. EC, 0C
        push    eax                                     ; 26B2 _ 50
        call    intToHexStr                             ; 26B3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26B8 _ 83. C4, 10
        push    mouseinfoCursor                         ; 26BB _ 68, 00000000(d)
        push    bootInfo                                ; 26C0 _ 68, 00000000(d)
        push    dword [ebp-10H]                         ; 26C5 _ FF. 75, F0
        push    eax                                     ; 26C8 _ 50
        call    SheetPrintf                             ; 26C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26CE _ 83. C4, 10
        sub     esp, 4                                  ; 26D1 _ 83. EC, 04
        push    mouseinfoCursor                         ; 26D4 _ 68, 00000000(d)
        push    bootInfo                                ; 26D9 _ 68, 00000000(d)
        push    dword [ebp-10H]                         ; 26DE _ FF. 75, F0
        call    SheetPrintln                            ; 26E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26E6 _ 83. C4, 10
        sub     esp, 12                                 ; 26E9 _ 83. EC, 0C
        push    bootInfo                                ; 26EC _ 68, 00000000(d)
        call    drawSheetList                           ; 26F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26F6 _ 83. C4, 10
?_178:  jmp     ?_171                                   ; 26F9 _ E9, FFFFFD7A
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

keyintToChar.2039:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0240 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0248 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0250 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0258 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0260 _ vbnm,./.

keyintToNumChar.2040:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0268 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0270 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0278 _ ........

keyintToChar.2044:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0280 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0288 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0290 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0298 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 02A0 _ vbnm,./.

keyintToNumChar.2045:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 02A8 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H                      ; 02B0 _ 90-=.




sheetman:                                               ; byte
        resd    408                                     ; 0000

mouse_buf:                                              ; byte
        resb    256                                     ; 0660

key_buf:                                                ; byte
        resb    128                                     ; 0760

MOUSE_FIFO8:                                            ; byte
        resb    20                                      ; 07E0

KEY_FIFO8:                                              ; byte
        resb    20                                      ; 07F4

mdec:                                                   ; oword
        resb    16                                      ; 0808

str.1536:                                               ; byte
        resb    1                                       ; 0818

?_179:  resb    3                                       ; 0819

addrArray.1591:                                         ; qword
        resb    4                                       ; 081C

?_180:  resd    1                                       ; 0820




?_181:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0000 _ baseAddr
        db 5FH, 4CH, 6FH, 77H, 3AH, 20H, 00H            ; 0008 _ _Low: .

?_182:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 000F _ baseAddr
        db 5FH, 48H, 69H, 67H, 68H, 74H, 3AH, 20H       ; 0017 _ _Hight: 
        db 00H                                          ; 001F _ .

?_183:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 4CH       ; 0020 _ length_L
        db 6FH, 77H, 3AH, 20H, 00H                      ; 0028 _ ow: .

?_184:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 48H       ; 002D _ length_H
        db 69H, 67H, 68H, 74H, 3AH, 20H, 00H            ; 0035 _ ight: .

?_185:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003C _ type: .

?_186:                                                  ; byte
        db 20H, 00H                                     ; 0043 _  .

?_187:                                                  ; byte
        db 73H, 70H, 00H                                ; 0045 _ sp.

?_188:                                                  ; byte
        db 46H, 72H, 65H, 65H, 20H, 66H, 61H, 69H       ; 0048 _ Free fai
        db 6CH, 65H, 64H, 21H, 00H                      ; 0050 _ led!.

?_189:                                                  ; byte
        db 48H, 65H, 6CH, 6CH, 6FH, 00H                 ; 0055 _ Hello.


