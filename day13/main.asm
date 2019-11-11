; Disassembly of file: main.o
; Mon Nov 11 05:31:49 2019
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
        mov     byte [?_153], al                        ; 0164 _ A2, 000001B9(d)
        shr     byte [ebp-4H], 4                        ; 0169 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 016D _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0171 _ 0F BE. C0
        and     eax, 0FH                                ; 0174 _ 83. E0, 0F
        push    eax                                     ; 0177 _ 50
        call    charToHex                               ; 0178 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 017D _ 83. C4, 04
        mov     byte [str.1536], al                     ; 0180 _ A2, 000001B8(d)
        mov     eax, str.1536                           ; 0185 _ B8, 000001B8(d)
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
        add     eax, str.1540                           ; 019E _ 05, 000001E0(d)
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
        add     eax, str.1540                           ; 01DC _ 05, 000001E0(d)
        mov     byte [eax], dl                          ; 01E1 _ 88. 10
        jmp     ?_008                                   ; 01E3 _ EB, 12

?_007:  mov     eax, dword [ebp-4H]                     ; 01E5 _ 8B. 45, FC
        add     eax, 48                                 ; 01E8 _ 83. C0, 30
        mov     edx, eax                                ; 01EB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 01ED _ 8B. 45, F8
        add     eax, str.1540                           ; 01F0 _ 05, 000001E0(d)
        mov     byte [eax], dl                          ; 01F5 _ 88. 10
?_008:  sub     dword [ebp-8H], 1                       ; 01F7 _ 83. 6D, F8, 01
?_009:  cmp     dword [ebp-8H], 1                       ; 01FB _ 83. 7D, F8, 01
        jle     ?_010                                   ; 01FF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0201 _ 83. 7D, 08, 00
        jnz     ?_006                                   ; 0205 _ 75, B2
?_010:  mov     eax, str.1540                           ; 0207 _ B8, 000001E0(d)
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

?_017:  mov     eax, dword [ebp+0CH]                    ; 027E _ 8B. 45, 0C
        movzx   eax, byte [eax]                         ; 0281 _ 0F B6. 00
        test    al, al                                  ; 0284 _ 84. C0
        jnz     ?_018                                   ; 0286 _ 75, 0B
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
        mov     dword [addrArray.1591], eax             ; 02B8 _ A3, 000001BC(d)
        call    GET_MEMDESC_ADDR                        ; 02BD _ E8, FFFFFFFC(rel)
        mov     dword [?_154], eax                      ; 02C2 _ A3, 000001C0(d)
        mov     eax, addrArray.1591                     ; 02C7 _ B8, 000001BC(d)
        leave                                           ; 02CC _ C9
        ret                                             ; 02CD _ C3
; getAddrRangeDescArray End of function

memman_init:; Function begin
        push    ebp                                     ; 02CE _ 55
        mov     ebp, esp                                ; 02CF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 02D1 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 02D4 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 02DA _ 8B. 45, 08
        mov     dword [eax+0CH], 400                    ; 02DD _ C7. 40, 0C, 00000190
        mov     eax, dword [ebp+8H]                     ; 02E4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 02E7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 02EE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 02F1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 02F8 _ 8B. 45, 08
        mov     dword [eax+10H], MEMINFOS.1604          ; 02FB _ C7. 40, 10, 000001E0(d)
        nop                                             ; 0302 _ 90
        pop     ebp                                     ; 0303 _ 5D
        ret                                             ; 0304 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 0305 _ 55
        mov     ebp, esp                                ; 0306 _ 89. E5
        sub     esp, 16                                 ; 0308 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 030B _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 0312 _ C7. 45, F8, 00000000
        jmp     ?_023                                   ; 0319 _ EB, 18

?_022:  mov     eax, dword [ebp+8H]                     ; 031B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 031E _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 0321 _ 8B. 55, F8
        shl     edx, 3                                  ; 0324 _ C1. E2, 03
        add     eax, edx                                ; 0327 _ 01. D0
        mov     eax, dword [eax+4H]                     ; 0329 _ 8B. 40, 04
        add     dword [ebp-4H], eax                     ; 032C _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 032F _ 83. 45, F8, 01
?_023:  mov     eax, dword [ebp+8H]                     ; 0333 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0336 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 0338 _ 3B. 45, F8
        ja      ?_022                                   ; 033B _ 77, DE
        mov     eax, dword [ebp-4H]                     ; 033D _ 8B. 45, FC
        leave                                           ; 0340 _ C9
        ret                                             ; 0341 _ C3
; memman_total End of function

memman_alloc:; Function begin
        push    ebp                                     ; 0342 _ 55
        mov     ebp, esp                                ; 0343 _ 89. E5
        sub     esp, 16                                 ; 0345 _ 83. EC, 10
        mov     dword [ebp-0CH], 9                      ; 0348 _ C7. 45, F4, 00000009
        jmp     ?_029                                   ; 034F _ E9, 000000F4

?_024:  mov     eax, dword [ebp+8H]                     ; 0354 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0357 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 035A _ 8B. 55, F4
        shl     edx, 3                                  ; 035D _ C1. E2, 03
        add     eax, edx                                ; 0360 _ 01. D0
        mov     eax, dword [eax+4H]                     ; 0362 _ 8B. 40, 04
        cmp     eax, dword [ebp+0CH]                    ; 0365 _ 3B. 45, 0C
        jc      ?_028                                   ; 0368 _ 0F 82, 000000D6
        mov     eax, dword [ebp+8H]                     ; 036E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0371 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0374 _ 8B. 55, F4
        shl     edx, 3                                  ; 0377 _ C1. E2, 03
        add     eax, edx                                ; 037A _ 01. D0
        mov     eax, dword [eax]                        ; 037C _ 8B. 00
        mov     dword [ebp-4H], eax                     ; 037E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0381 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0384 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0387 _ 8B. 55, F4
        shl     edx, 3                                  ; 038A _ C1. E2, 03
        add     edx, eax                                ; 038D _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 038F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0392 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 0395 _ 8B. 4D, F4
        shl     ecx, 3                                  ; 0398 _ C1. E1, 03
        add     eax, ecx                                ; 039B _ 01. C8
        mov     eax, dword [eax+4H]                     ; 039D _ 8B. 40, 04
        sub     eax, dword [ebp+0CH]                    ; 03A0 _ 2B. 45, 0C
        mov     dword [edx+4H], eax                     ; 03A3 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 03A6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 03A9 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 03AC _ 8B. 55, F4
        shl     edx, 3                                  ; 03AF _ C1. E2, 03
        add     eax, edx                                ; 03B2 _ 01. D0
        mov     eax, dword [eax+4H]                     ; 03B4 _ 8B. 40, 04
        test    eax, eax                                ; 03B7 _ 85. C0
        jne     ?_027                                   ; 03B9 _ 0F 85, 00000080
        mov     eax, dword [ebp-0CH]                    ; 03BF _ 8B. 45, F4
        mov     dword [ebp-8H], eax                     ; 03C2 _ 89. 45, F8
        jmp     ?_026                                   ; 03C5 _ EB, 2E

?_025:  mov     eax, dword [ebp+8H]                     ; 03C7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 03CA _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 03CD _ 8B. 55, F8
        shl     edx, 3                                  ; 03D0 _ C1. E2, 03
        lea     ecx, [eax+edx]                          ; 03D3 _ 8D. 0C 10
        mov     eax, dword [ebp+8H]                     ; 03D6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 03D9 _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 03DC _ 8B. 55, F8
        add     edx, 1                                  ; 03DF _ 83. C2, 01
        shl     edx, 3                                  ; 03E2 _ C1. E2, 03
        add     eax, edx                                ; 03E5 _ 01. D0
        mov     edx, dword [eax+4H]                     ; 03E7 _ 8B. 50, 04
        mov     eax, dword [eax]                        ; 03EA _ 8B. 00
        mov     dword [ecx], eax                        ; 03EC _ 89. 01
        mov     dword [ecx+4H], edx                     ; 03EE _ 89. 51, 04
        add     dword [ebp-8H], 1                       ; 03F1 _ 83. 45, F8, 01
?_026:  mov     eax, dword [ebp+8H]                     ; 03F5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 03F8 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 03FA _ 3B. 45, F8
        ja      ?_025                                   ; 03FD _ 77, C8
        mov     eax, dword [ebp+8H]                     ; 03FF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0402 _ 8B. 40, 10
        mov     ecx, dword [ebp-8H]                     ; 0405 _ 8B. 4D, F8
        mov     edx, dword [ebp-0CH]                    ; 0408 _ 8B. 55, F4
        add     edx, ecx                                ; 040B _ 01. CA
        shl     edx, 3                                  ; 040D _ C1. E2, 03
        add     eax, edx                                ; 0410 _ 01. D0
        mov     dword [eax], 0                          ; 0412 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 0418 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 041B _ 8B. 40, 10
        mov     ecx, dword [ebp-8H]                     ; 041E _ 8B. 4D, F8
        mov     edx, dword [ebp-0CH]                    ; 0421 _ 8B. 55, F4
        add     edx, ecx                                ; 0424 _ 01. CA
        shl     edx, 3                                  ; 0426 _ C1. E2, 03
        add     eax, edx                                ; 0429 _ 01. D0
        mov     dword [eax+4H], 0                       ; 042B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0432 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0435 _ 8B. 00
        lea     edx, [eax-1H]                           ; 0437 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 043A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 043D _ 89. 10
?_027:  mov     eax, dword [ebp-4H]                     ; 043F _ 8B. 45, FC
        jmp     ?_030                                   ; 0442 _ EB, 13

?_028:  add     dword [ebp-0CH], 1                      ; 0444 _ 83. 45, F4, 01
?_029:  mov     eax, dword [ebp+8H]                     ; 0448 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 044B _ 8B. 40, 0C
        cmp     eax, dword [ebp-0CH]                    ; 044E _ 3B. 45, F4
        ja      ?_024                                   ; 0451 _ 0F 87, FFFFFEFD
?_030:  leave                                           ; 0457 _ C9
        ret                                             ; 0458 _ C3
; memman_alloc End of function

memman_free:; Function begin
        push    ebp                                     ; 0459 _ 55
        mov     ebp, esp                                ; 045A _ 89. E5
        push    ebx                                     ; 045C _ 53
        sub     esp, 16                                 ; 045D _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0460 _ C7. 45, F4, 00000000
        jmp     ?_032                                   ; 0467 _ EB, 19

?_031:  mov     eax, dword [ebp+8H]                     ; 0469 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 046C _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 046F _ 8B. 55, F4
        shl     edx, 3                                  ; 0472 _ C1. E2, 03
        add     eax, edx                                ; 0475 _ 01. D0
        mov     eax, dword [eax]                        ; 0477 _ 8B. 00
        cmp     eax, dword [ebp+0CH]                    ; 0479 _ 3B. 45, 0C
        ja      ?_033                                   ; 047C _ 77, 10
        add     dword [ebp-0CH], 1                      ; 047E _ 83. 45, F4, 01
?_032:  mov     eax, dword [ebp+8H]                     ; 0482 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0485 _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 0487 _ 3B. 45, F4
        jg      ?_031                                   ; 048A _ 7F, DD
        jmp     ?_034                                   ; 048C _ EB, 01

?_033:  nop                                             ; 048E _ 90
?_034:  cmp     dword [ebp-0CH], 0                      ; 048F _ 83. 7D, F4, 00
        jle     ?_036                                   ; 0493 _ 0F 8E, 000000F4
        mov     eax, dword [ebp+8H]                     ; 0499 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 049C _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 049F _ 8B. 55, F4
        add     edx, 536870911                          ; 04A2 _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 04A8 _ C1. E2, 03
        add     eax, edx                                ; 04AB _ 01. D0
        mov     edx, dword [eax]                        ; 04AD _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 04AF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 04B2 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 04B5 _ 8B. 4D, F4
        add     ecx, 536870911                          ; 04B8 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 04BE _ C1. E1, 03
        add     eax, ecx                                ; 04C1 _ 01. C8
        mov     eax, dword [eax+4H]                     ; 04C3 _ 8B. 40, 04
        shl     eax, 2                                  ; 04C6 _ C1. E0, 02
        add     eax, edx                                ; 04C9 _ 01. D0
        cmp     eax, dword [ebp+0CH]                    ; 04CB _ 3B. 45, 0C
        jne     ?_036                                   ; 04CE _ 0F 85, 000000B9
        mov     eax, dword [ebp+8H]                     ; 04D4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 04D7 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 04DA _ 8B. 55, F4
        add     edx, 536870911                          ; 04DD _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 04E3 _ C1. E2, 03
        add     edx, eax                                ; 04E6 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 04E8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 04EB _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 04EE _ 8B. 4D, F4
        add     ecx, 536870911                          ; 04F1 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 04F7 _ C1. E1, 03
        add     eax, ecx                                ; 04FA _ 01. C8
        mov     ecx, dword [eax+4H]                     ; 04FC _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 04FF _ 8B. 45, 10
        add     eax, ecx                                ; 0502 _ 01. C8
        mov     dword [edx+4H], eax                     ; 0504 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 0507 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 050A _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 050C _ 3B. 45, F4
        jle     ?_035                                   ; 050F _ 7E, 72
        mov     eax, dword [ebp+10H]                    ; 0511 _ 8B. 45, 10
        lea     edx, [eax*4]                            ; 0514 _ 8D. 14 85, 00000000
        mov     eax, dword [ebp+0CH]                    ; 051B _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 051E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 0521 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0524 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0527 _ 8B. 55, F4
        shl     edx, 3                                  ; 052A _ C1. E2, 03
        add     eax, edx                                ; 052D _ 01. D0
        mov     eax, dword [eax]                        ; 052F _ 8B. 00
        cmp     ecx, eax                                ; 0531 _ 39. C1
        jnz     ?_035                                   ; 0533 _ 75, 4E
        mov     eax, dword [ebp+8H]                     ; 0535 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0538 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 053B _ 8B. 55, F4
        add     edx, 536870911                          ; 053E _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 0544 _ C1. E2, 03
        add     edx, eax                                ; 0547 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 0549 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 054C _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 054F _ 8B. 4D, F4
        add     ecx, 536870911                          ; 0552 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 0558 _ C1. E1, 03
        add     eax, ecx                                ; 055B _ 01. C8
        mov     ecx, dword [eax+4H]                     ; 055D _ 8B. 48, 04
        mov     eax, dword [ebp+8H]                     ; 0560 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0563 _ 8B. 40, 10
        mov     ebx, dword [ebp-0CH]                    ; 0566 _ 8B. 5D, F4
        shl     ebx, 3                                  ; 0569 _ C1. E3, 03
        add     eax, ebx                                ; 056C _ 01. D8
        mov     eax, dword [eax+4H]                     ; 056E _ 8B. 40, 04
        add     eax, ecx                                ; 0571 _ 01. C8
        mov     dword [edx+4H], eax                     ; 0573 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 0576 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0579 _ 8B. 00
        lea     edx, [eax-1H]                           ; 057B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 057E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0581 _ 89. 10
?_035:  mov     eax, 0                                  ; 0583 _ B8, 00000000
        jmp     ?_042                                   ; 0588 _ E9, 00000143

?_036:  mov     eax, dword [ebp+8H]                     ; 058D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0590 _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 0592 _ 3B. 45, F4
        jle     ?_037                                   ; 0595 _ 7E, 68
        mov     eax, dword [ebp+10H]                    ; 0597 _ 8B. 45, 10
        lea     edx, [eax*4]                            ; 059A _ 8D. 14 85, 00000000
        mov     eax, dword [ebp+0CH]                    ; 05A1 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 05A4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 05A7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 05AA _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 05AD _ 8B. 55, F4
        shl     edx, 3                                  ; 05B0 _ C1. E2, 03
        add     eax, edx                                ; 05B3 _ 01. D0
        mov     eax, dword [eax]                        ; 05B5 _ 8B. 00
        cmp     ecx, eax                                ; 05B7 _ 39. C1
        jnz     ?_037                                   ; 05B9 _ 75, 44
        mov     eax, dword [ebp+8H]                     ; 05BB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 05BE _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 05C1 _ 8B. 55, F4
        shl     edx, 3                                  ; 05C4 _ C1. E2, 03
        add     edx, eax                                ; 05C7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 05C9 _ 8B. 45, 0C
        mov     dword [edx], eax                        ; 05CC _ 89. 02
        mov     eax, dword [ebp+8H]                     ; 05CE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 05D1 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 05D4 _ 8B. 55, F4
        shl     edx, 3                                  ; 05D7 _ C1. E2, 03
        add     edx, eax                                ; 05DA _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 05DC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 05DF _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 05E2 _ 8B. 4D, F4
        shl     ecx, 3                                  ; 05E5 _ C1. E1, 03
        add     eax, ecx                                ; 05E8 _ 01. C8
        mov     ecx, dword [eax+4H]                     ; 05EA _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 05ED _ 8B. 45, 10
        add     eax, ecx                                ; 05F0 _ 01. C8
        mov     dword [edx+4H], eax                     ; 05F2 _ 89. 42, 04
        mov     eax, 0                                  ; 05F5 _ B8, 00000000
        jmp     ?_042                                   ; 05FA _ E9, 000000D1

?_037:  mov     eax, dword [ebp+8H]                     ; 05FF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0602 _ 8B. 00
        cmp     eax, 399                                ; 0604 _ 3D, 0000018F
        jg      ?_041                                   ; 0609 _ 0F 8F, 00000098
        mov     eax, dword [ebp+8H]                     ; 060F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0612 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 0614 _ 89. 45, F8
        jmp     ?_039                                   ; 0617 _ EB, 31

?_038:  mov     eax, dword [ebp+8H]                     ; 0619 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 061C _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 061F _ 8B. 55, F8
        shl     edx, 3                                  ; 0622 _ C1. E2, 03
        lea     ecx, [eax+edx]                          ; 0625 _ 8D. 0C 10
        mov     eax, dword [ebp+8H]                     ; 0628 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 062B _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 062E _ 8B. 55, F8
        add     edx, 536870911                          ; 0631 _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 0637 _ C1. E2, 03
        add     eax, edx                                ; 063A _ 01. D0
        mov     edx, dword [eax+4H]                     ; 063C _ 8B. 50, 04
        mov     eax, dword [eax]                        ; 063F _ 8B. 00
        mov     dword [ecx], eax                        ; 0641 _ 89. 01
        mov     dword [ecx+4H], edx                     ; 0643 _ 89. 51, 04
        sub     dword [ebp-8H], 1                       ; 0646 _ 83. 6D, F8, 01
?_039:  mov     eax, dword [ebp-8H]                     ; 064A _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 064D _ 3B. 45, F4
        jg      ?_038                                   ; 0650 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 0652 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0655 _ 8B. 00
        lea     edx, [eax+1H]                           ; 0657 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 065A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 065D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 065F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0662 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0665 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0668 _ 8B. 00
        cmp     edx, eax                                ; 066A _ 39. C2
        jge     ?_040                                   ; 066C _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 066E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0671 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0673 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0676 _ 89. 50, 0C
?_040:  mov     eax, dword [ebp+8H]                     ; 0679 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 067C _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 067F _ 8B. 55, F4
        shl     edx, 3                                  ; 0682 _ C1. E2, 03
        add     edx, eax                                ; 0685 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0687 _ 8B. 45, 0C
        mov     dword [edx], eax                        ; 068A _ 89. 02
        mov     eax, dword [ebp+8H]                     ; 068C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 068F _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0692 _ 8B. 55, F4
        shl     edx, 3                                  ; 0695 _ C1. E2, 03
        add     edx, eax                                ; 0698 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 069A _ 8B. 45, 10
        mov     dword [edx+4H], eax                     ; 069D _ 89. 42, 04
        mov     eax, 0                                  ; 06A0 _ B8, 00000000
        jmp     ?_042                                   ; 06A5 _ EB, 29

?_041:  mov     eax, dword [ebp+8H]                     ; 06A7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 06AA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 06AD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 06B0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 06B3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 06B6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 06B9 _ 8B. 40, 04
        mov     edx, eax                                ; 06BC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06BE _ 8B. 45, 10
        add     eax, edx                                ; 06C1 _ 01. D0
        mov     edx, eax                                ; 06C3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06C5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 06C8 _ 89. 50, 04
        mov     eax, 4294967295                         ; 06CB _ B8, FFFFFFFF
?_042:  add     esp, 16                                 ; 06D0 _ 83. C4, 10
        pop     ebx                                     ; 06D3 _ 5B
        pop     ebp                                     ; 06D4 _ 5D
        ret                                             ; 06D5 _ C3
; memman_free End of function

memman_alloc_4k:; Function begin
        push    ebp                                     ; 06D6 _ 55
        mov     ebp, esp                                ; 06D7 _ 89. E5
        sub     esp, 16                                 ; 06D9 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 06DC _ 8B. 45, 0C
        add     eax, 4095                               ; 06DF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 06E4 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 06E9 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 06EC _ 8B. 45, 0C
        push    eax                                     ; 06EF _ 50
        push    dword [ebp+8H]                          ; 06F0 _ FF. 75, 08
        call    memman_alloc                            ; 06F3 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 06F8 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 06FB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 06FE _ 8B. 45, FC
        leave                                           ; 0701 _ C9
        ret                                             ; 0702 _ C3
; memman_alloc_4k End of function

malloc: ; Function begin
        push    ebp                                     ; 0703 _ 55
        mov     ebp, esp                                ; 0704 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0706 _ 8B. 45, 0C
        push    eax                                     ; 0709 _ 50
        push    dword [ebp+8H]                          ; 070A _ FF. 75, 08
        call    memman_alloc                            ; 070D _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0712 _ 83. C4, 08
        leave                                           ; 0715 _ C9
        ret                                             ; 0716 _ C3
; malloc End of function

free:   ; Function begin
        push    ebp                                     ; 0717 _ 55
        mov     ebp, esp                                ; 0718 _ 89. E5
        push    dword [ebp+10H]                         ; 071A _ FF. 75, 10
        push    0                                       ; 071D _ 6A, 00
        push    dword [ebp+0CH]                         ; 071F _ FF. 75, 0C
        call    memset_8                                ; 0722 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0727 _ 83. C4, 0C
        mov     eax, dword [ebp+10H]                    ; 072A _ 8B. 45, 10
        push    eax                                     ; 072D _ 50
        push    dword [ebp+0CH]                         ; 072E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0731 _ FF. 75, 08
        call    memman_free                             ; 0734 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 0739 _ 83. C4, 0C
        leave                                           ; 073C _ C9
        ret                                             ; 073D _ C3
; free End of function

set_pict:; Function begin
        push    ebp                                     ; 073E _ 55
        mov     ebp, esp                                ; 073F _ 89. E5
        sub     esp, 24                                 ; 0741 _ 83. EC, 18
        call    io_load_eflags                          ; 0744 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0749 _ 89. 45, F4
        call    io_cli                                  ; 074C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0751 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 0754 _ FF. 75, 14
        push    968                                     ; 0757 _ 68, 000003C8
        call    io_out8                                 ; 075C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0761 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0764 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0767 _ 89. 45, F0
        jmp     ?_044                                   ; 076A _ EB, 65

?_043:  mov     eax, dword [ebp+10H]                    ; 076C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 076F _ 0F B6. 00
        shr     al, 2                                   ; 0772 _ C0. E8, 02
        movzx   eax, al                                 ; 0775 _ 0F B6. C0
        sub     esp, 8                                  ; 0778 _ 83. EC, 08
        push    eax                                     ; 077B _ 50
        push    969                                     ; 077C _ 68, 000003C9
        call    io_out8                                 ; 0781 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0786 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0789 _ 8B. 45, 10
        add     eax, 1                                  ; 078C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 078F _ 0F B6. 00
        shr     al, 2                                   ; 0792 _ C0. E8, 02
        movzx   eax, al                                 ; 0795 _ 0F B6. C0
        sub     esp, 8                                  ; 0798 _ 83. EC, 08
        push    eax                                     ; 079B _ 50
        push    969                                     ; 079C _ 68, 000003C9
        call    io_out8                                 ; 07A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07A6 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 07A9 _ 8B. 45, 10
        add     eax, 2                                  ; 07AC _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 07AF _ 0F B6. 00
        shr     al, 2                                   ; 07B2 _ C0. E8, 02
        movzx   eax, al                                 ; 07B5 _ 0F B6. C0
        sub     esp, 8                                  ; 07B8 _ 83. EC, 08
        push    eax                                     ; 07BB _ 50
        push    969                                     ; 07BC _ 68, 000003C9
        call    io_out8                                 ; 07C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C6 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 07C9 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07CD _ 83. 45, F0, 01
?_044:  mov     eax, dword [ebp-10H]                    ; 07D1 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07D4 _ 3B. 45, 0C
        jl      ?_043                                   ; 07D7 _ 7C, 93
        sub     esp, 12                                 ; 07D9 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07DC _ FF. 75, F4
        call    io_store_eflags                         ; 07DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07E4 _ 83. C4, 10
        nop                                             ; 07E7 _ 90
        leave                                           ; 07E8 _ C9
        ret                                             ; 07E9 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 07EA _ 55
        mov     ebp, esp                                ; 07EB _ 89. E5
        sub     esp, 8                                  ; 07ED _ 83. EC, 08
        push    0                                       ; 07F0 _ 6A, 00
        push    pict                                    ; 07F2 _ 68, 00000000(d)
        push    16                                      ; 07F7 _ 6A, 10
        push    0                                       ; 07F9 _ 6A, 00
        call    set_pict                                ; 07FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0800 _ 83. C4, 10
        nop                                             ; 0803 _ 90
        leave                                           ; 0804 _ C9
        ret                                             ; 0805 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 0806 _ 55
        mov     ebp, esp                                ; 0807 _ 89. E5
        sub     esp, 20                                 ; 0809 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 080C _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 080F _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0812 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0815 _ 89. 45, FC
        jmp     ?_048                                   ; 0818 _ EB, 33

?_045:  mov     eax, dword [ebp+14H]                    ; 081A _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 081D _ 89. 45, F8
        jmp     ?_047                                   ; 0820 _ EB, 1F

?_046:  mov     eax, dword [ebp-4H]                     ; 0822 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0825 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0829 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 082B _ 8B. 45, F8
        add     eax, edx                                ; 082E _ 01. D0
        mov     edx, eax                                ; 0830 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0832 _ 8B. 45, 08
        add     edx, eax                                ; 0835 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0837 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 083B _ 88. 02
        add     dword [ebp-8H], 1                       ; 083D _ 83. 45, F8, 01
?_047:  mov     eax, dword [ebp-8H]                     ; 0841 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0844 _ 3B. 45, 1C
        jle     ?_046                                   ; 0847 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0849 _ 83. 45, FC, 01
?_048:  mov     eax, dword [ebp-4H]                     ; 084D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0850 _ 3B. 45, 20
        jle     ?_045                                   ; 0853 _ 7E, C5
        nop                                             ; 0855 _ 90
        leave                                           ; 0856 _ C9
        ret                                             ; 0857 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 0858 _ 55
        mov     ebp, esp                                ; 0859 _ 89. E5
        sub     esp, 20                                 ; 085B _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 085E _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0861 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0864 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 0868 _ 83. E8, 61
        shl     eax, 4                                  ; 086B _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 086E _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0873 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0876 _ 8B. 45, FC
        leave                                           ; 0879 _ C9
        ret                                             ; 087A _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 087B _ 55
        mov     ebp, esp                                ; 087C _ 89. E5
        sub     esp, 20                                 ; 087E _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0881 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0884 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0887 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 088B _ 83. E8, 30
        shl     eax, 4                                  ; 088E _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 0891 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0896 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0899 _ 8B. 45, FC
        leave                                           ; 089C _ C9
        ret                                             ; 089D _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 089E _ 55
        mov     ebp, esp                                ; 089F _ 89. E5
        sub     esp, 20                                 ; 08A1 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 08A4 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 08A7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 08AA _ C7. 45, FC, 00000000
        jmp     ?_058                                   ; 08B1 _ E9, 0000016C

?_049:  mov     edx, dword [ebp-4H]                     ; 08B6 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 08B9 _ 8B. 45, 1C
        add     eax, edx                                ; 08BC _ 01. D0
        movzx   eax, byte [eax]                         ; 08BE _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 08C1 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 08C4 _ 80. 7D, FB, 00
        jns     ?_050                                   ; 08C8 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 08CA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08CD _ 8B. 45, FC
        add     eax, edx                                ; 08D0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08D2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D8 _ 8B. 45, 10
        add     eax, edx                                ; 08DB _ 01. D0
        mov     edx, eax                                ; 08DD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08DF _ 8B. 45, 08
        add     edx, eax                                ; 08E2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08E4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E8 _ 88. 02
?_050:  movsx   eax, byte [ebp-5H]                      ; 08EA _ 0F BE. 45, FB
        and     eax, 40H                                ; 08EE _ 83. E0, 40
        test    eax, eax                                ; 08F1 _ 85. C0
        jz      ?_051                                   ; 08F3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08F5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F8 _ 8B. 45, FC
        add     eax, edx                                ; 08FB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08FD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0901 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0903 _ 8B. 45, 10
        add     eax, edx                                ; 0906 _ 01. D0
        lea     edx, [eax+1H]                           ; 0908 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 090B _ 8B. 45, 08
        add     edx, eax                                ; 090E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0910 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0914 _ 88. 02
?_051:  movsx   eax, byte [ebp-5H]                      ; 0916 _ 0F BE. 45, FB
        and     eax, 20H                                ; 091A _ 83. E0, 20
        test    eax, eax                                ; 091D _ 85. C0
        jz      ?_052                                   ; 091F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0921 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0924 _ 8B. 45, FC
        add     eax, edx                                ; 0927 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0929 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 092D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 092F _ 8B. 45, 10
        add     eax, edx                                ; 0932 _ 01. D0
        lea     edx, [eax+2H]                           ; 0934 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0937 _ 8B. 45, 08
        add     edx, eax                                ; 093A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 093C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0940 _ 88. 02
?_052:  movsx   eax, byte [ebp-5H]                      ; 0942 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0946 _ 83. E0, 10
        test    eax, eax                                ; 0949 _ 85. C0
        jz      ?_053                                   ; 094B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 094D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0950 _ 8B. 45, FC
        add     eax, edx                                ; 0953 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0955 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0959 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 095B _ 8B. 45, 10
        add     eax, edx                                ; 095E _ 01. D0
        lea     edx, [eax+3H]                           ; 0960 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0963 _ 8B. 45, 08
        add     edx, eax                                ; 0966 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0968 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 096C _ 88. 02
?_053:  movsx   eax, byte [ebp-5H]                      ; 096E _ 0F BE. 45, FB
        and     eax, 08H                                ; 0972 _ 83. E0, 08
        test    eax, eax                                ; 0975 _ 85. C0
        jz      ?_054                                   ; 0977 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0979 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 097C _ 8B. 45, FC
        add     eax, edx                                ; 097F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0981 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0985 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0987 _ 8B. 45, 10
        add     eax, edx                                ; 098A _ 01. D0
        lea     edx, [eax+4H]                           ; 098C _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 098F _ 8B. 45, 08
        add     edx, eax                                ; 0992 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0994 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0998 _ 88. 02
?_054:  movsx   eax, byte [ebp-5H]                      ; 099A _ 0F BE. 45, FB
        and     eax, 04H                                ; 099E _ 83. E0, 04
        test    eax, eax                                ; 09A1 _ 85. C0
        jz      ?_055                                   ; 09A3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09A5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09A8 _ 8B. 45, FC
        add     eax, edx                                ; 09AB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09AD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09B1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09B3 _ 8B. 45, 10
        add     eax, edx                                ; 09B6 _ 01. D0
        lea     edx, [eax+5H]                           ; 09B8 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 09BB _ 8B. 45, 08
        add     edx, eax                                ; 09BE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09C0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09C4 _ 88. 02
?_055:  movsx   eax, byte [ebp-5H]                      ; 09C6 _ 0F BE. 45, FB
        and     eax, 02H                                ; 09CA _ 83. E0, 02
        test    eax, eax                                ; 09CD _ 85. C0
        jz      ?_056                                   ; 09CF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09D1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09D4 _ 8B. 45, FC
        add     eax, edx                                ; 09D7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09D9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09DD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09DF _ 8B. 45, 10
        add     eax, edx                                ; 09E2 _ 01. D0
        lea     edx, [eax+6H]                           ; 09E4 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 09E7 _ 8B. 45, 08
        add     edx, eax                                ; 09EA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09EC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09F0 _ 88. 02
?_056:  movsx   eax, byte [ebp-5H]                      ; 09F2 _ 0F BE. 45, FB
        and     eax, 01H                                ; 09F6 _ 83. E0, 01
        test    eax, eax                                ; 09F9 _ 85. C0
        jz      ?_057                                   ; 09FB _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09FD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A00 _ 8B. 45, FC
        add     eax, edx                                ; 0A03 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A05 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A09 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A0B _ 8B. 45, 10
        add     eax, edx                                ; 0A0E _ 01. D0
        lea     edx, [eax+7H]                           ; 0A10 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0A13 _ 8B. 45, 08
        add     edx, eax                                ; 0A16 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A18 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A1C _ 88. 02
?_057:  add     dword [ebp-4H], 1                       ; 0A1E _ 83. 45, FC, 01
?_058:  cmp     dword [ebp-4H], 15                      ; 0A22 _ 83. 7D, FC, 0F
        jle     ?_049                                   ; 0A26 _ 0F 8E, FFFFFE8A
        nop                                             ; 0A2C _ 90
        leave                                           ; 0A2D _ C9
        ret                                             ; 0A2E _ C3
; showFont8 End of function

putChar:; Function begin
        push    ebp                                     ; 0A2F _ 55
        mov     ebp, esp                                ; 0A30 _ 89. E5
        sub     esp, 4                                  ; 0A32 _ 83. EC, 04
        mov     eax, dword [ebp+1CH]                    ; 0A35 _ 8B. 45, 1C
        mov     byte [ebp-4H], al                       ; 0A38 _ 88. 45, FC
        cmp     byte [ebp-4H], 57                       ; 0A3B _ 80. 7D, FC, 39
        ja      ?_059                                   ; 0A3F _ 77, 39
        cmp     byte [ebp-4H], 47                       ; 0A41 _ 80. 7D, FC, 2F
        jbe     ?_059                                   ; 0A45 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0A47 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0A4B _ 0F BE. C0
        push    eax                                     ; 0A4E _ 50
        call    getAddrOffsetNumber                     ; 0A4F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0A54 _ 83. C4, 04
        mov     edx, eax                                ; 0A57 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0A59 _ 8B. 45, 18
        movsx   eax, al                                 ; 0A5C _ 0F BE. C0
        push    edx                                     ; 0A5F _ 52
        push    eax                                     ; 0A60 _ 50
        push    dword [ebp+14H]                         ; 0A61 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A64 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A67 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A6A _ FF. 75, 08
        call    showFont8                               ; 0A6D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A72 _ 83. C4, 18
        jmp     ?_065                                   ; 0A75 _ E9, 00000121

?_059:  cmp     byte [ebp-4H], 122                      ; 0A7A _ 80. 7D, FC, 7A
        ja      ?_060                                   ; 0A7E _ 77, 39
        cmp     byte [ebp-4H], 96                       ; 0A80 _ 80. 7D, FC, 60
        jbe     ?_060                                   ; 0A84 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 0A86 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 0A8A _ 0F BE. C0
        push    eax                                     ; 0A8D _ 50
        call    getAddrOffsetAlpha                      ; 0A8E _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0A93 _ 83. C4, 04
        mov     edx, eax                                ; 0A96 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0A98 _ 8B. 45, 18
        movsx   eax, al                                 ; 0A9B _ 0F BE. C0
        push    edx                                     ; 0A9E _ 52
        push    eax                                     ; 0A9F _ 50
        push    dword [ebp+14H]                         ; 0AA0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0AA3 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0AA6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AA9 _ FF. 75, 08
        call    showFont8                               ; 0AAC _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0AB1 _ 83. C4, 18
        jmp     ?_065                                   ; 0AB4 _ E9, 000000E2

?_060:  cmp     byte [ebp-4H], 90                       ; 0AB9 _ 80. 7D, FC, 5A
        ja      ?_061                                   ; 0ABD _ 77, 3C
        cmp     byte [ebp-4H], 64                       ; 0ABF _ 80. 7D, FC, 40
        jbe     ?_061                                   ; 0AC3 _ 76, 36
        movzx   eax, byte [ebp-4H]                      ; 0AC5 _ 0F B6. 45, FC
        add     eax, 32                                 ; 0AC9 _ 83. C0, 20
        movsx   eax, al                                 ; 0ACC _ 0F BE. C0
        push    eax                                     ; 0ACF _ 50
        call    getAddrOffsetAlpha                      ; 0AD0 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0AD5 _ 83. C4, 04
        mov     edx, eax                                ; 0AD8 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0ADA _ 8B. 45, 18
        movsx   eax, al                                 ; 0ADD _ 0F BE. C0
        push    edx                                     ; 0AE0 _ 52
        push    eax                                     ; 0AE1 _ 50
        push    dword [ebp+14H]                         ; 0AE2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0AE5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0AE8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AEB _ FF. 75, 08
        call    showFont8                               ; 0AEE _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0AF3 _ 83. C4, 18
        jmp     ?_065                                   ; 0AF6 _ E9, 000000A0

?_061:  cmp     byte [ebp-4H], 32                       ; 0AFB _ 80. 7D, FC, 20
        jnz     ?_062                                   ; 0AFF _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0B01 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B04 _ 0F BE. C0
        push    vsFont_EMPTY                            ; 0B07 _ 68, 00000000(d)
        push    eax                                     ; 0B0C _ 50
        push    dword [ebp+14H]                         ; 0B0D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B10 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0B13 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B16 _ FF. 75, 08
        call    showFont8                               ; 0B19 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B1E _ 83. C4, 18
        jmp     ?_065                                   ; 0B21 _ EB, 78

?_062:  cmp     byte [ebp-4H], 63                       ; 0B23 _ 80. 7D, FC, 3F
        jnz     ?_063                                   ; 0B27 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0B29 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B2C _ 0F BE. C0
        push    vsFont_ASK                              ; 0B2F _ 68, 00000000(d)
        push    eax                                     ; 0B34 _ 50
        push    dword [ebp+14H]                         ; 0B35 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B38 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0B3B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B3E _ FF. 75, 08
        call    showFont8                               ; 0B41 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B46 _ 83. C4, 18
        jmp     ?_065                                   ; 0B49 _ EB, 50

?_063:  cmp     byte [ebp-4H], 95                       ; 0B4B _ 80. 7D, FC, 5F
        jnz     ?_064                                   ; 0B4F _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0B51 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B54 _ 0F BE. C0
        push    vsFont__                                ; 0B57 _ 68, 00000000(d)
        push    eax                                     ; 0B5C _ 50
        push    dword [ebp+14H]                         ; 0B5D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B60 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0B63 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B66 _ FF. 75, 08
        call    showFont8                               ; 0B69 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B6E _ 83. C4, 18
        jmp     ?_065                                   ; 0B71 _ EB, 28

?_064:  cmp     byte [ebp-4H], 58                       ; 0B73 _ 80. 7D, FC, 3A
        jnz     ?_065                                   ; 0B77 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0B79 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B7C _ 0F BE. C0
        push    vsFont_colon                            ; 0B7F _ 68, 00000000(d)
        push    eax                                     ; 0B84 _ 50
        push    dword [ebp+14H]                         ; 0B85 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0B88 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0B8B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B8E _ FF. 75, 08
        call    showFont8                               ; 0B91 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B96 _ 83. C4, 18
        jmp     ?_065                                   ; 0B99 _ EB, 00

?_065:  nop                                             ; 0B9B _ 90
        leave                                           ; 0B9C _ C9
        ret                                             ; 0B9D _ C3
; putChar End of function

putStr: ; Function begin
        push    ebp                                     ; 0B9E _ 55
        mov     ebp, esp                                ; 0B9F _ 89. E5
        sub     esp, 16                                 ; 0BA1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0BA4 _ C7. 45, FC, 00000000
        jmp     ?_067                                   ; 0BAB _ EB, 36

?_066:  mov     edx, dword [ebp-4H]                     ; 0BAD _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 0BB0 _ 8B. 45, 20
        add     eax, edx                                ; 0BB3 _ 01. D0
        movzx   eax, byte [eax]                         ; 0BB5 _ 0F B6. 00
        movzx   eax, al                                 ; 0BB8 _ 0F B6. C0
        mov     edx, dword [ebp+18H]                    ; 0BBB _ 8B. 55, 18
        mov     ecx, edx                                ; 0BBE _ 89. D1
        imul    ecx, dword [ebp-4H]                     ; 0BC0 _ 0F AF. 4D, FC
        mov     edx, dword [ebp+10H]                    ; 0BC4 _ 8B. 55, 10
        add     edx, ecx                                ; 0BC7 _ 01. CA
        push    eax                                     ; 0BC9 _ 50
        push    dword [ebp+1CH]                         ; 0BCA _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 0BCD _ FF. 75, 14
        push    edx                                     ; 0BD0 _ 52
        push    dword [ebp+0CH]                         ; 0BD1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0BD4 _ FF. 75, 08
        call    putChar                                 ; 0BD7 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0BDC _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 0BDF _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp-4H]                     ; 0BE3 _ 8B. 45, FC
        cmp     eax, dword [ebp+24H]                    ; 0BE6 _ 3B. 45, 24
        jl      ?_066                                   ; 0BE9 _ 7C, C2
        nop                                             ; 0BEB _ 90
        leave                                           ; 0BEC _ C9
        ret                                             ; 0BED _ C3
; putStr End of function

charToPictColor:; Function begin
        push    ebp                                     ; 0BEE _ 55
        mov     ebp, esp                                ; 0BEF _ 89. E5
        sub     esp, 4                                  ; 0BF1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BF4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BF7 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0BFA _ 80. 7D, FC, 2A
        jnz     ?_068                                   ; 0BFE _ 75, 0A
        mov     eax, 0                                  ; 0C00 _ B8, 00000000
        jmp     ?_083                                   ; 0C05 _ E9, 000000D2

?_068:  cmp     byte [ebp-4H], 114                      ; 0C0A _ 80. 7D, FC, 72
        jnz     ?_069                                   ; 0C0E _ 75, 0A
        mov     eax, 1                                  ; 0C10 _ B8, 00000001
        jmp     ?_083                                   ; 0C15 _ E9, 000000C2

?_069:  cmp     byte [ebp-4H], 103                      ; 0C1A _ 80. 7D, FC, 67
        jnz     ?_070                                   ; 0C1E _ 75, 0A
        mov     eax, 2                                  ; 0C20 _ B8, 00000002
        jmp     ?_083                                   ; 0C25 _ E9, 000000B2

?_070:  cmp     byte [ebp-4H], 121                      ; 0C2A _ 80. 7D, FC, 79
        jnz     ?_071                                   ; 0C2E _ 75, 0A
        mov     eax, 3                                  ; 0C30 _ B8, 00000003
        jmp     ?_083                                   ; 0C35 _ E9, 000000A2

?_071:  cmp     byte [ebp-4H], 98                       ; 0C3A _ 80. 7D, FC, 62
        jnz     ?_072                                   ; 0C3E _ 75, 0A
        mov     eax, 4                                  ; 0C40 _ B8, 00000004
        jmp     ?_083                                   ; 0C45 _ E9, 00000092

?_072:  cmp     byte [ebp-4H], 112                      ; 0C4A _ 80. 7D, FC, 70
        jnz     ?_073                                   ; 0C4E _ 75, 0A
        mov     eax, 5                                  ; 0C50 _ B8, 00000005
        jmp     ?_083                                   ; 0C55 _ E9, 00000082

?_073:  cmp     byte [ebp-4H], 108                      ; 0C5A _ 80. 7D, FC, 6C
        jnz     ?_074                                   ; 0C5E _ 75, 07
        mov     eax, 6                                  ; 0C60 _ B8, 00000006
        jmp     ?_083                                   ; 0C65 _ EB, 75

?_074:  cmp     byte [ebp-4H], 119                      ; 0C67 _ 80. 7D, FC, 77
        jnz     ?_075                                   ; 0C6B _ 75, 07
        mov     eax, 7                                  ; 0C6D _ B8, 00000007
        jmp     ?_083                                   ; 0C72 _ EB, 68

?_075:  cmp     byte [ebp-4H], 45                       ; 0C74 _ 80. 7D, FC, 2D
        jnz     ?_076                                   ; 0C78 _ 75, 07
        mov     eax, 8                                  ; 0C7A _ B8, 00000008
        jmp     ?_083                                   ; 0C7F _ EB, 5B

?_076:  cmp     byte [ebp-4H], 82                       ; 0C81 _ 80. 7D, FC, 52
        jnz     ?_077                                   ; 0C85 _ 75, 07
        mov     eax, 9                                  ; 0C87 _ B8, 00000009
        jmp     ?_083                                   ; 0C8C _ EB, 4E

?_077:  cmp     byte [ebp-4H], 71                       ; 0C8E _ 80. 7D, FC, 47
        jnz     ?_078                                   ; 0C92 _ 75, 07
        mov     eax, 10                                 ; 0C94 _ B8, 0000000A
        jmp     ?_083                                   ; 0C99 _ EB, 41

?_078:  cmp     byte [ebp-4H], 89                       ; 0C9B _ 80. 7D, FC, 59
        jnz     ?_079                                   ; 0C9F _ 75, 07
        mov     eax, 11                                 ; 0CA1 _ B8, 0000000B
        jmp     ?_083                                   ; 0CA6 _ EB, 34

?_079:  cmp     byte [ebp-4H], 66                       ; 0CA8 _ 80. 7D, FC, 42
        jnz     ?_080                                   ; 0CAC _ 75, 07
        mov     eax, 12                                 ; 0CAE _ B8, 0000000C
        jmp     ?_083                                   ; 0CB3 _ EB, 27

?_080:  cmp     byte [ebp-4H], 80                       ; 0CB5 _ 80. 7D, FC, 50
        jnz     ?_081                                   ; 0CB9 _ 75, 07
        mov     eax, 13                                 ; 0CBB _ B8, 0000000D
        jmp     ?_083                                   ; 0CC0 _ EB, 1A

?_081:  cmp     byte [ebp-4H], 115                      ; 0CC2 _ 80. 7D, FC, 73
        jnz     ?_082                                   ; 0CC6 _ 75, 07
        mov     eax, 14                                 ; 0CC8 _ B8, 0000000E
        jmp     ?_083                                   ; 0CCD _ EB, 0D

?_082:  cmp     byte [ebp-4H], 61                       ; 0CCF _ 80. 7D, FC, 3D
        jnz     ?_083                                   ; 0CD3 _ 75, 07
        mov     eax, 15                                 ; 0CD5 _ B8, 0000000F
        jmp     ?_083                                   ; 0CDA _ EB, 00

?_083:  leave                                           ; 0CDC _ C9
        ret                                             ; 0CDD _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 0CDE _ 55
        mov     ebp, esp                                ; 0CDF _ 89. E5
        push    ebx                                     ; 0CE1 _ 53
        sub     esp, 16                                 ; 0CE2 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 0CE5 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0CEC _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 0CF3 _ C7. 45, F8, 00000000
?_084:  mov     edx, dword [ebp-8H]                     ; 0CFA _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0CFD _ 8B. 45, 18
        add     eax, edx                                ; 0D00 _ 01. D0
        movzx   eax, byte [eax]                         ; 0D02 _ 0F B6. 00
        test    al, al                                  ; 0D05 _ 84. C0
        jnz     ?_085                                   ; 0D07 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0D09 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0D0C _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0D0F _ 8B. 45, 18
        add     eax, edx                                ; 0D12 _ 01. D0
        movzx   eax, byte [eax]                         ; 0D14 _ 0F B6. 00
        test    al, al                                  ; 0D17 _ 84. C0
        jz      ?_088                                   ; 0D19 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0D1B _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0D1F _ C7. 45, F4, 00000000
        jmp     ?_087                                   ; 0D26 _ EB, 4C

?_085:  mov     edx, dword [ebp-8H]                     ; 0D28 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0D2B _ 8B. 45, 18
        add     eax, edx                                ; 0D2E _ 01. D0
        movzx   eax, byte [eax]                         ; 0D30 _ 0F B6. 00
        cmp     al, 46                                  ; 0D33 _ 3C, 2E
        jz      ?_086                                   ; 0D35 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0D37 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 0D3A _ 8B. 45, F0
        add     eax, edx                                ; 0D3D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D3F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0D43 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0D45 _ 8B. 45, 10
        add     edx, eax                                ; 0D48 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 0D4A _ 8B. 45, F4
        add     eax, edx                                ; 0D4D _ 01. D0
        mov     edx, eax                                ; 0D4F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D51 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0D54 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0D57 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0D5A _ 8B. 45, 18
        add     eax, edx                                ; 0D5D _ 01. D0
        movzx   eax, byte [eax]                         ; 0D5F _ 0F B6. 00
        movsx   eax, al                                 ; 0D62 _ 0F BE. C0
        push    eax                                     ; 0D65 _ 50
        call    charToPictColor                         ; 0D66 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0D6B _ 83. C4, 04
        mov     byte [ebx], al                          ; 0D6E _ 88. 03
?_086:  add     dword [ebp-0CH], 1                      ; 0D70 _ 83. 45, F4, 01
?_087:  add     dword [ebp-8H], 1                       ; 0D74 _ 83. 45, F8, 01
        jmp     ?_084                                   ; 0D78 _ EB, 80

?_088:  nop                                             ; 0D7A _ 90
        mov     ebx, dword [ebp-4H]                     ; 0D7B _ 8B. 5D, FC
        leave                                           ; 0D7E _ C9
        ret                                             ; 0D7F _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0D80 _ 55
        mov     ebp, esp                                ; 0D81 _ 89. E5
        sub     esp, 16                                 ; 0D83 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0D86 _ C7. 45, FC, 00000000
        jmp     ?_090                                   ; 0D8D _ EB, 11

?_089:  mov     edx, dword [ebp-4H]                     ; 0D8F _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0D92 _ 8B. 45, 08
        add     eax, edx                                ; 0D95 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0D97 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0D9A _ 88. 10
        add     dword [ebp-4H], 1                       ; 0D9C _ 83. 45, FC, 01
?_090:  cmp     dword [ebp-4H], 65534                   ; 0DA0 _ 81. 7D, FC, 0000FFFE
        jle     ?_089                                   ; 0DA7 _ 7E, E6
        nop                                             ; 0DA9 _ 90
        leave                                           ; 0DAA _ C9
        ret                                             ; 0DAB _ C3
; fillAll End of function

initCursor:; Function begin
        push    ebp                                     ; 0DAC _ 55
        mov     ebp, esp                                ; 0DAD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0DAF _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0DB2 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0DB5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0DB8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0DBA _ 8B. 45, 08
        mov     edx, dword [eax+14H]                    ; 0DBD _ 8B. 50, 14
        mov     eax, dword [ebp+8H]                     ; 0DC0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0DC3 _ 89. 50, 04
        nop                                             ; 0DC6 _ 90
        pop     ebp                                     ; 0DC7 _ 5D
        ret                                             ; 0DC8 _ C3
; initCursor End of function

clear:  ; Function begin
        push    ebp                                     ; 0DC9 _ 55
        mov     ebp, esp                                ; 0DCA _ 89. E5
        sub     esp, 16                                 ; 0DCC _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0DCF _ C7. 45, FC, 00000000
        jmp     ?_092                                   ; 0DD6 _ EB, 13

?_091:  mov     eax, dword [ebp+8H]                     ; 0DD8 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DDB _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 0DDD _ 8B. 45, FC
        add     eax, edx                                ; 0DE0 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0DE2 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0DE5 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0DE7 _ 83. 45, FC, 01
?_092:  cmp     dword [ebp-4H], 65534                   ; 0DEB _ 81. 7D, FC, 0000FFFE
        jle     ?_091                                   ; 0DF2 _ 7E, E4
        nop                                             ; 0DF4 _ 90
        leave                                           ; 0DF5 _ C9
        ret                                             ; 0DF6 _ C3
; clear End of function

Println:; Function begin
        push    ebp                                     ; 0DF7 _ 55
        mov     ebp, esp                                ; 0DF8 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0DFA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0DFD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0E00 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0E03 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0E05 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0E08 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0E0B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0E0E _ 8B. 40, 0C
        add     edx, eax                                ; 0E11 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0E13 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0E16 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0E19 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0E1C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E1F _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0E22 _ 0F B7. 40, 06
        cwde                                            ; 0E26 _ 98
        cmp     edx, eax                                ; 0E27 _ 39. C2
        jl      ?_093                                   ; 0E29 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0E2B _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0E2E _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0E31 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0E34 _ 89. 50, 04
?_093:  nop                                             ; 0E37 _ 90
        pop     ebp                                     ; 0E38 _ 5D
        ret                                             ; 0E39 _ C3
; Println End of function

PrintlnMult:; Function begin
        push    ebp                                     ; 0E3A _ 55
        mov     ebp, esp                                ; 0E3B _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0E3D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0E40 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0E43 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0E46 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0E48 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0E4B _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0E4E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0E51 _ 8B. 40, 0C
        imul    eax, dword [ebp+10H]                    ; 0E54 _ 0F AF. 45, 10
        add     edx, eax                                ; 0E58 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0E5A _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0E5D _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0E60 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0E63 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E66 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0E69 _ 0F B7. 40, 06
        cwde                                            ; 0E6D _ 98
        cmp     edx, eax                                ; 0E6E _ 39. C2
        jl      ?_094                                   ; 0E70 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0E72 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0E75 _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0E78 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0E7B _ 89. 50, 04
?_094:  nop                                             ; 0E7E _ 90
        pop     ebp                                     ; 0E7F _ 5D
        ret                                             ; 0E80 _ C3
; PrintlnMult End of function

Printf: ; Function begin
        push    ebp                                     ; 0E81 _ 55
        mov     ebp, esp                                ; 0E82 _ 89. E5
        push    ebx                                     ; 0E84 _ 53
        sub     esp, 16                                 ; 0E85 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 0E88 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0E8B _ 0F B7. 40, 04
        cwde                                            ; 0E8F _ 98
        mov     dword [ebp-14H], eax                    ; 0E90 _ 89. 45, EC
        mov     eax, dword [ebp+0CH]                    ; 0E93 _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0E96 _ 0F B7. 40, 06
        cwde                                            ; 0E9A _ 98
        mov     dword [ebp-10H], eax                    ; 0E9B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0E9E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0EA1 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 0EA3 _ 89. 45, F4
        push    dword [ebp+8H]                          ; 0EA6 _ FF. 75, 08
        call    strlen                                  ; 0EA9 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0EAE _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 0EB1 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0EB4 _ 8B. 45, 10
        mov     ebx, dword [eax+1CH]                    ; 0EB7 _ 8B. 58, 1C
        mov     eax, dword [ebp+10H]                    ; 0EBA _ 8B. 45, 10
        mov     ecx, dword [eax+8H]                     ; 0EBD _ 8B. 48, 08
        mov     eax, dword [ebp+10H]                    ; 0EC0 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0EC3 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0EC6 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0EC9 _ 8B. 00
        push    dword [ebp-8H]                          ; 0ECB _ FF. 75, F8
        push    dword [ebp+8H]                          ; 0ECE _ FF. 75, 08
        push    ebx                                     ; 0ED1 _ 53
        push    ecx                                     ; 0ED2 _ 51
        push    edx                                     ; 0ED3 _ 52
        push    eax                                     ; 0ED4 _ 50
        push    dword [ebp-14H]                         ; 0ED5 _ FF. 75, EC
        push    dword [ebp-0CH]                         ; 0ED8 _ FF. 75, F4
        call    putStr                                  ; 0EDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EE0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0EE3 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0EE6 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0EE8 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0EEB _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 0EEE _ 0F AF. 45, F8
        add     edx, eax                                ; 0EF2 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0EF4 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0EF7 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0EF9 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0EFC _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0EFE _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0F01 _ 8B. 40, 10
        mov     ecx, dword [ebp-14H]                    ; 0F04 _ 8B. 4D, EC
        sub     ecx, eax                                ; 0F07 _ 29. C1
        mov     eax, ecx                                ; 0F09 _ 89. C8
        cmp     edx, eax                                ; 0F0B _ 39. C2
        jl      ?_095                                   ; 0F0D _ 7C, 0E
        push    dword [ebp+10H]                         ; 0F0F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0F12 _ FF. 75, 0C
        call    Println                                 ; 0F15 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0F1A _ 83. C4, 08
?_095:  nop                                             ; 0F1D _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F1E _ 8B. 5D, FC
        leave                                           ; 0F21 _ C9
        ret                                             ; 0F22 _ C3
; Printf End of function

PrintChar:; Function begin
        push    ebp                                     ; 0F23 _ 55
        mov     ebp, esp                                ; 0F24 _ 89. E5
        push    ebx                                     ; 0F26 _ 53
        sub     esp, 20                                 ; 0F27 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0F2A _ 8B. 45, 08
        mov     byte [ebp-18H], al                      ; 0F2D _ 88. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 0F30 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0F33 _ 0F B7. 40, 04
        cwde                                            ; 0F37 _ 98
        mov     dword [ebp-10H], eax                    ; 0F38 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0F3B _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0F3E _ 0F B7. 40, 06
        cwde                                            ; 0F42 _ 98
        mov     dword [ebp-0CH], eax                    ; 0F43 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 0F46 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0F49 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 0F4B _ 89. 45, F8
        movzx   eax, byte [ebp-18H]                     ; 0F4E _ 0F B6. 45, E8
        movzx   ebx, al                                 ; 0F52 _ 0F B6. D8
        mov     eax, dword [ebp+10H]                    ; 0F55 _ 8B. 45, 10
        mov     ecx, dword [eax+1CH]                    ; 0F58 _ 8B. 48, 1C
        mov     eax, dword [ebp+10H]                    ; 0F5B _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0F5E _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0F61 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0F64 _ 8B. 00
        push    ebx                                     ; 0F66 _ 53
        push    ecx                                     ; 0F67 _ 51
        push    edx                                     ; 0F68 _ 52
        push    eax                                     ; 0F69 _ 50
        push    dword [ebp-10H]                         ; 0F6A _ FF. 75, F0
        push    dword [ebp-8H]                          ; 0F6D _ FF. 75, F8
        call    putChar                                 ; 0F70 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0F75 _ 83. C4, 18
        mov     eax, dword [ebp+10H]                    ; 0F78 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0F7B _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0F7D _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0F80 _ 8B. 40, 08
        add     edx, eax                                ; 0F83 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0F85 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0F88 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0F8A _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0F8D _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0F8F _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0F92 _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 0F95 _ 8B. 4D, F0
        sub     ecx, eax                                ; 0F98 _ 29. C1
        mov     eax, ecx                                ; 0F9A _ 89. C8
        cmp     edx, eax                                ; 0F9C _ 39. C2
        jl      ?_096                                   ; 0F9E _ 7C, 0E
        push    dword [ebp+10H]                         ; 0FA0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0FA3 _ FF. 75, 0C
        call    Println                                 ; 0FA6 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0FAB _ 83. C4, 08
?_096:  nop                                             ; 0FAE _ 90
        mov     ebx, dword [ebp-4H]                     ; 0FAF _ 8B. 5D, FC
        leave                                           ; 0FB2 _ C9
        ret                                             ; 0FB3 _ C3
; PrintChar End of function

PrintTab:; Function begin
        push    ebp                                     ; 0FB4 _ 55
        mov     ebp, esp                                ; 0FB5 _ 89. E5
        push    ebx                                     ; 0FB7 _ 53
        sub     esp, 16                                 ; 0FB8 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0FBB _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0FBE _ 0F B7. 40, 04
        cwde                                            ; 0FC2 _ 98
        mov     dword [ebp-0CH], eax                    ; 0FC3 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0FC6 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0FC9 _ 0F B7. 40, 06
        cwde                                            ; 0FCD _ 98
        mov     dword [ebp-8H], eax                     ; 0FCE _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 0FD1 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0FD4 _ 0F B7. 40, 04
        cwde                                            ; 0FD8 _ 98
        mov     edx, dword [ebp+0CH]                    ; 0FD9 _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0FDC _ 8B. 5A, 18
        cdq                                             ; 0FDF _ 99
        idiv    ebx                                     ; 0FE0 _ F7. FB
        mov     word [ebp-0EH], ax                      ; 0FE2 _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 0FE6 _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 0FEA _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0FED _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 0FEF _ 0F BF. 45, F2
        imul    eax, dword [ebp+10H]                    ; 0FF3 _ 0F AF. 45, 10
        add     eax, edx                                ; 0FF7 _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 0FF9 _ 0F BF. 5D, F2
        cdq                                             ; 0FFD _ 99
        idiv    ebx                                     ; 0FFE _ F7. FB
        imul    ecx, eax                                ; 1000 _ 0F AF. C8
        mov     edx, ecx                                ; 1003 _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 1005 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 1008 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 100A _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 100D _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 100F _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1012 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 1015 _ 8B. 4D, F4
        sub     ecx, eax                                ; 1018 _ 29. C1
        mov     eax, ecx                                ; 101A _ 89. C8
        cmp     edx, eax                                ; 101C _ 39. C2
        jl      ?_097                                   ; 101E _ 7C, 0E
        push    dword [ebp+0CH]                         ; 1020 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1023 _ FF. 75, 08
        call    Println                                 ; 1026 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 102B _ 83. C4, 08
?_097:  nop                                             ; 102E _ 90
        mov     ebx, dword [ebp-4H]                     ; 102F _ 8B. 5D, FC
        leave                                           ; 1032 _ C9
        ret                                             ; 1033 _ C3
; PrintTab End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 1034 _ 55
        mov     ebp, esp                                ; 1035 _ 89. E5
        push    dword [ebp+10H]                         ; 1037 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 103A _ FF. 75, 0C
        push    ?_155                                   ; 103D _ 68, 00000000(d)
        call    Printf                                  ; 1042 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1047 _ 83. C4, 0C
        push    1                                       ; 104A _ 6A, 01
        push    dword [ebp+10H]                         ; 104C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 104F _ FF. 75, 0C
        call    PrintTab                                ; 1052 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1057 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 105A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 105D _ 8B. 00
        push    eax                                     ; 105F _ 50
        call    intToHexStr                             ; 1060 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1065 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1068 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 106B _ FF. 75, 0C
        push    eax                                     ; 106E _ 50
        call    Printf                                  ; 106F _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1074 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1077 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 107A _ FF. 75, 0C
        call    Println                                 ; 107D _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1082 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1085 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1088 _ FF. 75, 0C
        push    ?_156                                   ; 108B _ 68, 0000000F(d)
        call    Printf                                  ; 1090 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1095 _ 83. C4, 0C
        push    1                                       ; 1098 _ 6A, 01
        push    dword [ebp+10H]                         ; 109A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 109D _ FF. 75, 0C
        call    PrintTab                                ; 10A0 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10A5 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 10A8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10AB _ 8B. 40, 04
        push    eax                                     ; 10AE _ 50
        call    intToHexStr                             ; 10AF _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 10B4 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 10B7 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10BA _ FF. 75, 0C
        push    eax                                     ; 10BD _ 50
        call    Printf                                  ; 10BE _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10C3 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 10C6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10C9 _ FF. 75, 0C
        call    Println                                 ; 10CC _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 10D1 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 10D4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10D7 _ FF. 75, 0C
        push    ?_157                                   ; 10DA _ 68, 00000020(d)
        call    Printf                                  ; 10DF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10E4 _ 83. C4, 0C
        push    2                                       ; 10E7 _ 6A, 02
        push    dword [ebp+10H]                         ; 10E9 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10EC _ FF. 75, 0C
        call    PrintTab                                ; 10EF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 10F4 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 10F7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10FA _ 8B. 40, 08
        push    eax                                     ; 10FD _ 50
        call    intToHexStr                             ; 10FE _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1103 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1106 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1109 _ FF. 75, 0C
        push    eax                                     ; 110C _ 50
        call    Printf                                  ; 110D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1112 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1115 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1118 _ FF. 75, 0C
        call    Println                                 ; 111B _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1120 _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1123 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1126 _ FF. 75, 0C
        push    ?_158                                   ; 1129 _ 68, 0000002D(d)
        call    Printf                                  ; 112E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1133 _ 83. C4, 0C
        push    1                                       ; 1136 _ 6A, 01
        push    dword [ebp+10H]                         ; 1138 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 113B _ FF. 75, 0C
        call    PrintTab                                ; 113E _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1143 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1146 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1149 _ 8B. 40, 0C
        push    eax                                     ; 114C _ 50
        call    intToHexStr                             ; 114D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1152 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1155 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1158 _ FF. 75, 0C
        push    eax                                     ; 115B _ 50
        call    Printf                                  ; 115C _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1161 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1164 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1167 _ FF. 75, 0C
        call    Println                                 ; 116A _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 116F _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1172 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1175 _ FF. 75, 0C
        push    ?_159                                   ; 1178 _ 68, 0000003C(d)
        call    Printf                                  ; 117D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1182 _ 83. C4, 0C
        push    3                                       ; 1185 _ 6A, 03
        push    dword [ebp+10H]                         ; 1187 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 118A _ FF. 75, 0C
        call    PrintTab                                ; 118D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1192 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1195 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1198 _ 8B. 40, 10
        push    eax                                     ; 119B _ 50
        call    intToHexStr                             ; 119C _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 11A1 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 11A4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 11A7 _ FF. 75, 0C
        push    eax                                     ; 11AA _ 50
        call    Printf                                  ; 11AB _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 11B0 _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 11B3 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 11B6 _ FF. 75, 0C
        call    Println                                 ; 11B9 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 11BE _ 83. C4, 08
        nop                                             ; 11C1 _ 90
        leave                                           ; 11C2 _ C9
        ret                                             ; 11C3 _ C3
; showMemoryInfo End of function

displayMem_8:; Function begin
        push    ebp                                     ; 11C4 _ 55
        mov     ebp, esp                                ; 11C5 _ 89. E5
        sub     esp, 16                                 ; 11C7 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 11CA _ C7. 45, FC, 00000000
        jmp     ?_099                                   ; 11D1 _ EB, 3D

?_098:  mov     edx, dword [ebp-4H]                     ; 11D3 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 11D6 _ 8B. 45, 08
        add     eax, edx                                ; 11D9 _ 01. D0
        movzx   eax, byte [eax]                         ; 11DB _ 0F B6. 00
        movzx   eax, al                                 ; 11DE _ 0F B6. C0
        push    eax                                     ; 11E1 _ 50
        call    charToHexStr                            ; 11E2 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 11E7 _ 83. C4, 04
        push    dword [ebp+14H]                         ; 11EA _ FF. 75, 14
        push    dword [ebp+10H]                         ; 11ED _ FF. 75, 10
        push    eax                                     ; 11F0 _ 50
        call    Printf                                  ; 11F1 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 11F6 _ 83. C4, 0C
        push    dword [ebp+14H]                         ; 11F9 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 11FC _ FF. 75, 10
        push    ?_160                                   ; 11FF _ 68, 00000043(d)
        call    Printf                                  ; 1204 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1209 _ 83. C4, 0C
        add     dword [ebp-4H], 1                       ; 120C _ 83. 45, FC, 01
?_099:  mov     eax, dword [ebp-4H]                     ; 1210 _ 8B. 45, FC
        cmp     eax, dword [ebp+0CH]                    ; 1213 _ 3B. 45, 0C
        jl      ?_098                                   ; 1216 _ 7C, BB
        nop                                             ; 1218 _ 90
        leave                                           ; 1219 _ C9
        ret                                             ; 121A _ C3
; displayMem_8 End of function

initSheetManager:; Function begin
        push    ebp                                     ; 121B _ 55
        mov     ebp, esp                                ; 121C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 121E _ 8B. 45, 08
        mov     dword [eax+4H], SheetList.1857          ; 1221 _ C7. 40, 04, 00000E60(d)
        mov     eax, dword [ebp+8H]                     ; 1228 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 122B _ C7. 00, 00000000
        nop                                             ; 1231 _ 90
        pop     ebp                                     ; 1232 _ 5D
        ret                                             ; 1233 _ C3
; initSheetManager End of function

insertSheet:; Function begin
        push    ebp                                     ; 1234 _ 55
        mov     ebp, esp                                ; 1235 _ 89. E5
        push    ebx                                     ; 1237 _ 53
        sub     esp, 16                                 ; 1238 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 123B _ C7. 45, F0, 00000000
        jmp     ?_105                                   ; 1242 _ E9, 000000CA

?_100:  mov     eax, dword [ebp+8H]                     ; 1247 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 124A _ 8B. 48, 04
        mov     edx, dword [ebp-10H]                    ; 124D _ 8B. 55, F0
        mov     eax, edx                                ; 1250 _ 89. D0
        add     eax, eax                                ; 1252 _ 01. C0
        add     eax, edx                                ; 1254 _ 01. D0
        shl     eax, 3                                  ; 1256 _ C1. E0, 03
        add     eax, ecx                                ; 1259 _ 01. C8
        mov     eax, dword [eax+8H]                     ; 125B _ 8B. 40, 08
        cmp     eax, dword [ebp+14H]                    ; 125E _ 3B. 45, 14
        jle     ?_103                                   ; 1261 _ 7E, 63
        mov     eax, dword [ebp+10H]                    ; 1263 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1266 _ 89. 45, F4
        jmp     ?_102                                   ; 1269 _ EB, 51

?_101:  mov     eax, dword [ebp+8H]                     ; 126B _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 126E _ 8B. 48, 04
        mov     edx, dword [ebp-0CH]                    ; 1271 _ 8B. 55, F4
        mov     eax, edx                                ; 1274 _ 89. D0
        add     eax, eax                                ; 1276 _ 01. C0
        add     eax, edx                                ; 1278 _ 01. D0
        shl     eax, 3                                  ; 127A _ C1. E0, 03
        add     eax, ecx                                ; 127D _ 01. C8
        mov     edx, dword [ebp+8H]                     ; 127F _ 8B. 55, 08
        mov     ebx, dword [edx+4H]                     ; 1282 _ 8B. 5A, 04
        mov     ecx, dword [ebp-0CH]                    ; 1285 _ 8B. 4D, F4
        mov     edx, ecx                                ; 1288 _ 89. CA
        add     edx, edx                                ; 128A _ 01. D2
        add     edx, ecx                                ; 128C _ 01. CA
        shl     edx, 3                                  ; 128E _ C1. E2, 03
        sub     edx, 24                                 ; 1291 _ 83. EA, 18
        add     edx, ebx                                ; 1294 _ 01. DA
        mov     ecx, dword [edx]                        ; 1296 _ 8B. 0A
        mov     dword [eax], ecx                        ; 1298 _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 129A _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 129D _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 12A0 _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 12A3 _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 12A6 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 12A9 _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 12AC _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 12AF _ 89. 48, 10
        mov     edx, dword [edx+14H]                    ; 12B2 _ 8B. 52, 14
        mov     dword [eax+14H], edx                    ; 12B5 _ 89. 50, 14
        sub     dword [ebp-0CH], 1                      ; 12B8 _ 83. 6D, F4, 01
?_102:  mov     eax, dword [ebp-0CH]                    ; 12BC _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 12BF _ 3B. 45, F0
        jg      ?_101                                   ; 12C2 _ 7F, A7
        jmp     ?_106                                   ; 12C4 _ EB, 57

?_103:  mov     eax, dword [ebp+8H]                     ; 12C6 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 12C9 _ 8B. 48, 04
        mov     edx, dword [ebp-10H]                    ; 12CC _ 8B. 55, F0
        mov     eax, edx                                ; 12CF _ 89. D0
        add     eax, eax                                ; 12D1 _ 01. C0
        add     eax, edx                                ; 12D3 _ 01. D0
        shl     eax, 3                                  ; 12D5 _ C1. E0, 03
        add     eax, ecx                                ; 12D8 _ 01. C8
        mov     eax, dword [eax+8H]                     ; 12DA _ 8B. 40, 08
        cmp     eax, dword [ebp+14H]                    ; 12DD _ 3B. 45, 14
        jnz     ?_104                                   ; 12E0 _ 75, 2B
        mov     eax, dword [ebp+8H]                     ; 12E2 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 12E5 _ 8B. 48, 04
        mov     edx, dword [ebp-10H]                    ; 12E8 _ 8B. 55, F0
        mov     eax, edx                                ; 12EB _ 89. D0
        add     eax, eax                                ; 12ED _ 01. C0
        add     eax, edx                                ; 12EF _ 01. D0
        shl     eax, 3                                  ; 12F1 _ C1. E0, 03
        add     eax, ecx                                ; 12F4 _ 01. C8
        mov     eax, dword [eax+14H]                    ; 12F6 _ 8B. 40, 14
        push    4095                                    ; 12F9 _ 68, 00000FFF
        push    eax                                     ; 12FE _ 50
        push    dword [ebp+18H]                         ; 12FF _ FF. 75, 18
        call    memcmb                                  ; 1302 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1307 _ 83. C4, 0C
        nop                                             ; 130A _ 90
        jmp     ?_107                                   ; 130B _ EB, 6D

?_104:  add     dword [ebp-10H], 1                      ; 130D _ 83. 45, F0, 01
?_105:  mov     eax, dword [ebp-10H]                    ; 1311 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1314 _ 3B. 45, 10
        jc      ?_100                                   ; 1317 _ 0F 82, FFFFFF2A
?_106:  mov     eax, dword [ebp+8H]                     ; 131D _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 1320 _ 8B. 48, 04
        mov     edx, dword [ebp-10H]                    ; 1323 _ 8B. 55, F0
        mov     eax, edx                                ; 1326 _ 89. D0
        add     eax, eax                                ; 1328 _ 01. C0
        add     eax, edx                                ; 132A _ 01. D0
        shl     eax, 3                                  ; 132C _ C1. E0, 03
        add     eax, ecx                                ; 132F _ 01. C8
        mov     dword [ebp-8H], eax                     ; 1331 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1334 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1337 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1339 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 133C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 133F _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 1341 _ 8B. 45, F8
        mov     edx, dword [ebp+0CH]                    ; 1344 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1347 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 1349 _ 8B. 45, F8
        mov     edx, dword [ebp+10H]                    ; 134C _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 134F _ 89. 50, 04
        mov     eax, dword [ebp-8H]                     ; 1352 _ 8B. 45, F8
        mov     edx, dword [ebp+14H]                    ; 1355 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1358 _ 89. 50, 08
        mov     eax, dword [ebp-8H]                     ; 135B _ 8B. 45, F8
        mov     dword [eax+0CH], 4095                   ; 135E _ C7. 40, 0C, 00000FFF
        mov     eax, dword [ebp-8H]                     ; 1365 _ 8B. 45, F8
        mov     edx, dword [ebp-10H]                    ; 1368 _ 8B. 55, F0
        mov     dword [eax+10H], edx                    ; 136B _ 89. 50, 10
        mov     eax, dword [ebp-8H]                     ; 136E _ 8B. 45, F8
        mov     edx, dword [ebp+18H]                    ; 1371 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1374 _ 89. 50, 14
        mov     eax, dword [ebp-8H]                     ; 1377 _ 8B. 45, F8
?_107:  mov     ebx, dword [ebp-4H]                     ; 137A _ 8B. 5D, FC
        leave                                           ; 137D _ C9
        ret                                             ; 137E _ C3
; insertSheet End of function

removeSheet:; Function begin
        push    ebp                                     ; 137F _ 55
        mov     ebp, esp                                ; 1380 _ 89. E5
        push    ebx                                     ; 1382 _ 53
        sub     esp, 16                                 ; 1383 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1386 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 138D _ C7. 45, F8, 00000000
        jmp     ?_111                                   ; 1394 _ E9, 00000080

?_108:  cmp     dword [ebp-0CH], 0                      ; 1399 _ 83. 7D, F4, 00
        jnz     ?_109                                   ; 139D _ 75, 23
        mov     eax, dword [ebp+8H]                     ; 139F _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 13A2 _ 8B. 48, 04
        mov     edx, dword [ebp-8H]                     ; 13A5 _ 8B. 55, F8
        mov     eax, edx                                ; 13A8 _ 89. D0
        add     eax, eax                                ; 13AA _ 01. C0
        add     eax, edx                                ; 13AC _ 01. D0
        shl     eax, 3                                  ; 13AE _ C1. E0, 03
        add     eax, ecx                                ; 13B1 _ 01. C8
        mov     eax, dword [eax+8H]                     ; 13B3 _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 13B6 _ 3B. 45, 0C
        jnz     ?_109                                   ; 13B9 _ 75, 07
        mov     dword [ebp-0CH], 1                      ; 13BB _ C7. 45, F4, 00000001
?_109:  cmp     dword [ebp-0CH], 0                      ; 13C2 _ 83. 7D, F4, 00
        jz      ?_110                                   ; 13C6 _ 74, 4D
        mov     eax, dword [ebp+8H]                     ; 13C8 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 13CB _ 8B. 48, 04
        mov     edx, dword [ebp-8H]                     ; 13CE _ 8B. 55, F8
        mov     eax, edx                                ; 13D1 _ 89. D0
        add     eax, eax                                ; 13D3 _ 01. C0
        add     eax, edx                                ; 13D5 _ 01. D0
        shl     eax, 3                                  ; 13D7 _ C1. E0, 03
        add     eax, ecx                                ; 13DA _ 01. C8
        mov     edx, dword [ebp+8H]                     ; 13DC _ 8B. 55, 08
        mov     ebx, dword [edx+4H]                     ; 13DF _ 8B. 5A, 04
        mov     edx, dword [ebp-8H]                     ; 13E2 _ 8B. 55, F8
        lea     ecx, [edx+1H]                           ; 13E5 _ 8D. 4A, 01
        mov     edx, ecx                                ; 13E8 _ 89. CA
        add     edx, edx                                ; 13EA _ 01. D2
        add     edx, ecx                                ; 13EC _ 01. CA
        shl     edx, 3                                  ; 13EE _ C1. E2, 03
        add     edx, ebx                                ; 13F1 _ 01. DA
        mov     ecx, dword [edx]                        ; 13F3 _ 8B. 0A
        mov     dword [eax], ecx                        ; 13F5 _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 13F7 _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 13FA _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 13FD _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 1400 _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 1403 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 1406 _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 1409 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 140C _ 89. 48, 10
        mov     edx, dword [edx+14H]                    ; 140F _ 8B. 52, 14
        mov     dword [eax+14H], edx                    ; 1412 _ 89. 50, 14
?_110:  add     dword [ebp-8H], 1                       ; 1415 _ 83. 45, F8, 01
?_111:  mov     eax, dword [ebp+8H]                     ; 1419 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 141C _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 141E _ 3B. 45, F8
        jg      ?_108                                   ; 1421 _ 0F 8F, FFFFFF72
        nop                                             ; 1427 _ 90
        add     esp, 16                                 ; 1428 _ 83. C4, 10
        pop     ebx                                     ; 142B _ 5B
        pop     ebp                                     ; 142C _ 5D
        ret                                             ; 142D _ C3
; removeSheet End of function

getSheet:; Function begin
        push    ebp                                     ; 142E _ 55
        mov     ebp, esp                                ; 142F _ 89. E5
        sub     esp, 16                                 ; 1431 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1434 _ C7. 45, FC, 00000000
        jmp     ?_114                                   ; 143B _ EB, 36

?_112:  mov     eax, dword [ebp+8H]                     ; 143D _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 1440 _ 8B. 48, 04
        mov     edx, dword [ebp-4H]                     ; 1443 _ 8B. 55, FC
        mov     eax, edx                                ; 1446 _ 89. D0
        add     eax, eax                                ; 1448 _ 01. C0
        add     eax, edx                                ; 144A _ 01. D0
        shl     eax, 3                                  ; 144C _ C1. E0, 03
        add     eax, ecx                                ; 144F _ 01. C8
        mov     eax, dword [eax+8H]                     ; 1451 _ 8B. 40, 08
        cmp     eax, dword [ebp+0CH]                    ; 1454 _ 3B. 45, 0C
        jnz     ?_113                                   ; 1457 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 1459 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 145C _ 8B. 48, 04
        mov     edx, dword [ebp-4H]                     ; 145F _ 8B. 55, FC
        mov     eax, edx                                ; 1462 _ 89. D0
        add     eax, eax                                ; 1464 _ 01. C0
        add     eax, edx                                ; 1466 _ 01. D0
        shl     eax, 3                                  ; 1468 _ C1. E0, 03
        add     eax, ecx                                ; 146B _ 01. C8
        jmp     ?_115                                   ; 146D _ EB, 13

?_113:  add     dword [ebp-4H], 1                       ; 146F _ 83. 45, FC, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 1473 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1476 _ 8B. 00
        cmp     eax, dword [ebp-4H]                     ; 1478 _ 3B. 45, FC
        jg      ?_112                                   ; 147B _ 7F, C0
        mov     eax, 0                                  ; 147D _ B8, 00000000
?_115:  leave                                           ; 1482 _ C9
        ret                                             ; 1483 _ C3
; getSheet End of function

alterSheetLayer:; Function begin
        push    ebp                                     ; 1484 _ 55
        mov     ebp, esp                                ; 1485 _ 89. E5
        sub     esp, 32                                 ; 1487 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 148A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 148D _ 8B. 40, 08
        cmp     eax, dword [ebp+10H]                    ; 1490 _ 3B. 45, 10
        je      ?_121                                   ; 1493 _ 0F 84, 00000208
        mov     eax, dword [ebp+0CH]                    ; 1499 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 149C _ 8B. 40, 08
        cmp     eax, dword [ebp+10H]                    ; 149F _ 3B. 45, 10
        jle     ?_118                                   ; 14A2 _ 0F 8E, 000000F7
        mov     eax, dword [ebp+0CH]                    ; 14A8 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 14AB _ 8B. 40, 10
        mov     dword [ebp-20H], eax                    ; 14AE _ 89. 45, E0
        jmp     ?_117                                   ; 14B1 _ E9, 000000BA

?_116:  mov     edx, dword [ebp-20H]                    ; 14B6 _ 8B. 55, E0
        mov     eax, edx                                ; 14B9 _ 89. D0
        add     eax, eax                                ; 14BB _ 01. C0
        add     eax, edx                                ; 14BD _ 01. D0
        shl     eax, 3                                  ; 14BF _ C1. E0, 03
        mov     edx, eax                                ; 14C2 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 14C4 _ 8B. 45, 0C
        add     eax, edx                                ; 14C7 _ 01. D0
        mov     edx, dword [eax]                        ; 14C9 _ 8B. 10
        mov     dword [ebp-18H], edx                    ; 14CB _ 89. 55, E8
        mov     edx, dword [eax+4H]                     ; 14CE _ 8B. 50, 04
        mov     dword [ebp-14H], edx                    ; 14D1 _ 89. 55, EC
        mov     edx, dword [eax+8H]                     ; 14D4 _ 8B. 50, 08
        mov     dword [ebp-10H], edx                    ; 14D7 _ 89. 55, F0
        mov     edx, dword [eax+0CH]                    ; 14DA _ 8B. 50, 0C
        mov     dword [ebp-0CH], edx                    ; 14DD _ 89. 55, F4
        mov     edx, dword [eax+10H]                    ; 14E0 _ 8B. 50, 10
        mov     dword [ebp-8H], edx                     ; 14E3 _ 89. 55, F8
        mov     eax, dword [eax+14H]                    ; 14E6 _ 8B. 40, 14
        mov     dword [ebp-4H], eax                     ; 14E9 _ 89. 45, FC
        mov     edx, dword [ebp-20H]                    ; 14EC _ 8B. 55, E0
        mov     eax, edx                                ; 14EF _ 89. D0
        add     eax, eax                                ; 14F1 _ 01. C0
        add     eax, edx                                ; 14F3 _ 01. D0
        shl     eax, 3                                  ; 14F5 _ C1. E0, 03
        mov     edx, eax                                ; 14F8 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 14FA _ 8B. 45, 0C
        add     eax, edx                                ; 14FD _ 01. D0
        mov     ecx, dword [ebp-20H]                    ; 14FF _ 8B. 4D, E0
        mov     edx, ecx                                ; 1502 _ 89. CA
        add     edx, edx                                ; 1504 _ 01. D2
        add     edx, ecx                                ; 1506 _ 01. CA
        shl     edx, 3                                  ; 1508 _ C1. E2, 03
        lea     ecx, [edx-18H]                          ; 150B _ 8D. 4A, E8
        mov     edx, dword [ebp+0CH]                    ; 150E _ 8B. 55, 0C
        add     edx, ecx                                ; 1511 _ 01. CA
        mov     ecx, dword [edx]                        ; 1513 _ 8B. 0A
        mov     dword [eax], ecx                        ; 1515 _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 1517 _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 151A _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 151D _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 1520 _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 1523 _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 1526 _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 1529 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 152C _ 89. 48, 10
        mov     edx, dword [edx+14H]                    ; 152F _ 8B. 52, 14
        mov     dword [eax+14H], edx                    ; 1532 _ 89. 50, 14
        mov     edx, dword [ebp-20H]                    ; 1535 _ 8B. 55, E0
        mov     eax, edx                                ; 1538 _ 89. D0
        add     eax, eax                                ; 153A _ 01. C0
        add     eax, edx                                ; 153C _ 01. D0
        shl     eax, 3                                  ; 153E _ C1. E0, 03
        lea     edx, [eax-18H]                          ; 1541 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1544 _ 8B. 45, 0C
        add     eax, edx                                ; 1547 _ 01. D0
        mov     edx, dword [ebp-18H]                    ; 1549 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 154C _ 89. 10
        mov     edx, dword [ebp-14H]                    ; 154E _ 8B. 55, EC
        mov     dword [eax+4H], edx                     ; 1551 _ 89. 50, 04
        mov     edx, dword [ebp-10H]                    ; 1554 _ 8B. 55, F0
        mov     dword [eax+8H], edx                     ; 1557 _ 89. 50, 08
        mov     edx, dword [ebp-0CH]                    ; 155A _ 8B. 55, F4
        mov     dword [eax+0CH], edx                    ; 155D _ 89. 50, 0C
        mov     edx, dword [ebp-8H]                     ; 1560 _ 8B. 55, F8
        mov     dword [eax+10H], edx                    ; 1563 _ 89. 50, 10
        mov     edx, dword [ebp-4H]                     ; 1566 _ 8B. 55, FC
        mov     dword [eax+14H], edx                    ; 1569 _ 89. 50, 14
        sub     dword [ebp-20H], 1                      ; 156C _ 83. 6D, E0, 01
?_117:  cmp     dword [ebp-20H], 0                      ; 1570 _ 83. 7D, E0, 00
        jle     ?_122                                   ; 1574 _ 0F 8E, 00000128
        mov     edx, dword [ebp-20H]                    ; 157A _ 8B. 55, E0
        mov     eax, edx                                ; 157D _ 89. D0
        add     eax, eax                                ; 157F _ 01. C0
        add     eax, edx                                ; 1581 _ 01. D0
        shl     eax, 3                                  ; 1583 _ C1. E0, 03
        lea     edx, [eax-18H]                          ; 1586 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1589 _ 8B. 45, 0C
        add     eax, edx                                ; 158C _ 01. D0
        mov     eax, dword [eax+8H]                     ; 158E _ 8B. 40, 08
        cmp     eax, dword [ebp+10H]                    ; 1591 _ 3B. 45, 10
        jl      ?_116                                   ; 1594 _ 0F 8C, FFFFFF1C
        jmp     ?_122                                   ; 159A _ E9, 00000103

?_118:  mov     eax, dword [ebp+0CH]                    ; 159F _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 15A2 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 15A5 _ 89. 45, E4
        jmp     ?_120                                   ; 15A8 _ E9, 000000BE

?_119:  mov     edx, dword [ebp-1CH]                    ; 15AD _ 8B. 55, E4
        mov     eax, edx                                ; 15B0 _ 89. D0
        add     eax, eax                                ; 15B2 _ 01. C0
        add     eax, edx                                ; 15B4 _ 01. D0
        shl     eax, 3                                  ; 15B6 _ C1. E0, 03
        mov     edx, eax                                ; 15B9 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 15BB _ 8B. 45, 0C
        add     eax, edx                                ; 15BE _ 01. D0
        mov     edx, dword [eax]                        ; 15C0 _ 8B. 10
        mov     dword [ebp-18H], edx                    ; 15C2 _ 89. 55, E8
        mov     edx, dword [eax+4H]                     ; 15C5 _ 8B. 50, 04
        mov     dword [ebp-14H], edx                    ; 15C8 _ 89. 55, EC
        mov     edx, dword [eax+8H]                     ; 15CB _ 8B. 50, 08
        mov     dword [ebp-10H], edx                    ; 15CE _ 89. 55, F0
        mov     edx, dword [eax+0CH]                    ; 15D1 _ 8B. 50, 0C
        mov     dword [ebp-0CH], edx                    ; 15D4 _ 89. 55, F4
        mov     edx, dword [eax+10H]                    ; 15D7 _ 8B. 50, 10
        mov     dword [ebp-8H], edx                     ; 15DA _ 89. 55, F8
        mov     eax, dword [eax+14H]                    ; 15DD _ 8B. 40, 14
        mov     dword [ebp-4H], eax                     ; 15E0 _ 89. 45, FC
        mov     edx, dword [ebp-1CH]                    ; 15E3 _ 8B. 55, E4
        mov     eax, edx                                ; 15E6 _ 89. D0
        add     eax, eax                                ; 15E8 _ 01. C0
        add     eax, edx                                ; 15EA _ 01. D0
        shl     eax, 3                                  ; 15EC _ C1. E0, 03
        mov     edx, eax                                ; 15EF _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 15F1 _ 8B. 45, 0C
        add     eax, edx                                ; 15F4 _ 01. D0
        mov     edx, dword [ebp-1CH]                    ; 15F6 _ 8B. 55, E4
        lea     ecx, [edx+1H]                           ; 15F9 _ 8D. 4A, 01
        mov     edx, ecx                                ; 15FC _ 89. CA
        add     edx, edx                                ; 15FE _ 01. D2
        add     edx, ecx                                ; 1600 _ 01. CA
        shl     edx, 3                                  ; 1602 _ C1. E2, 03
        mov     ecx, edx                                ; 1605 _ 89. D1
        mov     edx, dword [ebp+0CH]                    ; 1607 _ 8B. 55, 0C
        add     edx, ecx                                ; 160A _ 01. CA
        mov     ecx, dword [edx]                        ; 160C _ 8B. 0A
        mov     dword [eax], ecx                        ; 160E _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 1610 _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 1613 _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 1616 _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 1619 _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 161C _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 161F _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 1622 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 1625 _ 89. 48, 10
        mov     edx, dword [edx+14H]                    ; 1628 _ 8B. 52, 14
        mov     dword [eax+14H], edx                    ; 162B _ 89. 50, 14
        mov     eax, dword [ebp-1CH]                    ; 162E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1631 _ 8D. 50, 01
        mov     eax, edx                                ; 1634 _ 89. D0
        add     eax, eax                                ; 1636 _ 01. C0
        add     eax, edx                                ; 1638 _ 01. D0
        shl     eax, 3                                  ; 163A _ C1. E0, 03
        mov     edx, eax                                ; 163D _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 163F _ 8B. 45, 0C
        add     eax, edx                                ; 1642 _ 01. D0
        mov     edx, dword [ebp-18H]                    ; 1644 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 1647 _ 89. 10
        mov     edx, dword [ebp-14H]                    ; 1649 _ 8B. 55, EC
        mov     dword [eax+4H], edx                     ; 164C _ 89. 50, 04
        mov     edx, dword [ebp-10H]                    ; 164F _ 8B. 55, F0
        mov     dword [eax+8H], edx                     ; 1652 _ 89. 50, 08
        mov     edx, dword [ebp-0CH]                    ; 1655 _ 8B. 55, F4
        mov     dword [eax+0CH], edx                    ; 1658 _ 89. 50, 0C
        mov     edx, dword [ebp-8H]                     ; 165B _ 8B. 55, F8
        mov     dword [eax+10H], edx                    ; 165E _ 89. 50, 10
        mov     edx, dword [ebp-4H]                     ; 1661 _ 8B. 55, FC
        mov     dword [eax+14H], edx                    ; 1664 _ 89. 50, 14
        sub     dword [ebp-1CH], 1                      ; 1667 _ 83. 6D, E4, 01
?_120:  mov     eax, dword [ebp-1CH]                    ; 166B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 166E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1671 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1674 _ 8B. 00
        sub     eax, 1                                  ; 1676 _ 83. E8, 01
        cmp     edx, eax                                ; 1679 _ 39. C2
        jge     ?_122                                   ; 167B _ 7D, 25
        mov     eax, dword [ebp-1CH]                    ; 167D _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1680 _ 8D. 50, 01
        mov     eax, edx                                ; 1683 _ 89. D0
        add     eax, eax                                ; 1685 _ 01. C0
        add     eax, edx                                ; 1687 _ 01. D0
        shl     eax, 3                                  ; 1689 _ C1. E0, 03
        mov     edx, eax                                ; 168C _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 168E _ 8B. 45, 0C
        add     eax, edx                                ; 1691 _ 01. D0
        mov     eax, dword [eax+8H]                     ; 1693 _ 8B. 40, 08
        cmp     eax, dword [ebp+10H]                    ; 1696 _ 3B. 45, 10
        jg      ?_119                                   ; 1699 _ 0F 8F, FFFFFF0E
        jmp     ?_122                                   ; 169F _ EB, 01

?_121:  nop                                             ; 16A1 _ 90
?_122:  leave                                           ; 16A2 _ C9
        ret                                             ; 16A3 _ C3
; alterSheetLayer End of function

drawSheetList:; Function begin
        push    ebp                                     ; 16A4 _ 55
        mov     ebp, esp                                ; 16A5 _ 89. E5
        sub     esp, 16                                 ; 16A7 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 16AA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16AD _ 8B. 00
        sub     eax, 1                                  ; 16AF _ 83. E8, 01
        mov     dword [ebp-8H], eax                     ; 16B2 _ 89. 45, F8
        jmp     ?_124                                   ; 16B5 _ EB, 34

?_123:  mov     eax, dword [ebp+8H]                     ; 16B7 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 16BA _ 8B. 48, 04
        mov     edx, dword [ebp-8H]                     ; 16BD _ 8B. 55, F8
        mov     eax, edx                                ; 16C0 _ 89. D0
        add     eax, eax                                ; 16C2 _ 01. C0
        add     eax, edx                                ; 16C4 _ 01. D0
        shl     eax, 3                                  ; 16C6 _ C1. E0, 03
        add     eax, ecx                                ; 16C9 _ 01. C8
        mov     dword [ebp-4H], eax                     ; 16CB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 16CE _ 8B. 45, FC
        mov     edx, dword [eax+0CH]                    ; 16D1 _ 8B. 50, 0C
        mov     eax, dword [ebp-4H]                     ; 16D4 _ 8B. 45, FC
        mov     eax, dword [eax+14H]                    ; 16D7 _ 8B. 40, 14
        push    edx                                     ; 16DA _ 52
        push    dword [ebp+0CH]                         ; 16DB _ FF. 75, 0C
        push    eax                                     ; 16DE _ 50
        call    memcmb                                  ; 16DF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 16E4 _ 83. C4, 0C
        sub     dword [ebp-8H], 1                       ; 16E7 _ 83. 6D, F8, 01
?_124:  cmp     dword [ebp-8H], 0                       ; 16EB _ 83. 7D, F8, 00
        jns     ?_123                                   ; 16EF _ 79, C6
        nop                                             ; 16F1 _ 90
        leave                                           ; 16F2 _ C9
        ret                                             ; 16F3 _ C3
; drawSheetList End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 16F4 _ 55
        mov     ebp, esp                                ; 16F5 _ 89. E5
        sub     esp, 8                                  ; 16F7 _ 83. EC, 08
?_125:  sub     esp, 12                                 ; 16FA _ 83. EC, 0C
        push    100                                     ; 16FD _ 6A, 64
        call    io_in8                                  ; 16FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1704 _ 83. C4, 10
        movsx   eax, al                                 ; 1707 _ 0F BE. C0
        and     eax, 02H                                ; 170A _ 83. E0, 02
        test    eax, eax                                ; 170D _ 85. C0
        jz      ?_126                                   ; 170F _ 74, 02
        jmp     ?_125                                   ; 1711 _ EB, E7

?_126:  nop                                             ; 1713 _ 90
        nop                                             ; 1714 _ 90
        leave                                           ; 1715 _ C9
        ret                                             ; 1716 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1717 _ 55
        mov     ebp, esp                                ; 1718 _ 89. E5
        sub     esp, 8                                  ; 171A _ 83. EC, 08
        call    wait_KBC_sendready                      ; 171D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1722 _ 83. EC, 08
        push    96                                      ; 1725 _ 6A, 60
        push    100                                     ; 1727 _ 6A, 64
        call    io_out8                                 ; 1729 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 172E _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1731 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1736 _ 83. EC, 08
        push    71                                      ; 1739 _ 6A, 47
        push    96                                      ; 173B _ 6A, 60
        call    io_out8                                 ; 173D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1742 _ 83. C4, 10
        nop                                             ; 1745 _ 90
        leave                                           ; 1746 _ C9
        ret                                             ; 1747 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1748 _ 55
        mov     ebp, esp                                ; 1749 _ 89. E5
        sub     esp, 8                                  ; 174B _ 83. EC, 08
        call    wait_KBC_sendready                      ; 174E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1753 _ 83. EC, 08
        push    212                                     ; 1756 _ 68, 000000D4
        push    100                                     ; 175B _ 6A, 64
        call    io_out8                                 ; 175D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1762 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1765 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 176A _ 83. EC, 08
        push    244                                     ; 176D _ 68, 000000F4
        push    96                                      ; 1772 _ 6A, 60
        call    io_out8                                 ; 1774 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1779 _ 83. C4, 10
        nop                                             ; 177C _ 90
        leave                                           ; 177D _ C9
        ret                                             ; 177E _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 177F _ 55
        mov     ebp, esp                                ; 1780 _ 89. E5
        sub     esp, 4                                  ; 1782 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1785 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1788 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 178B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 178E _ 0F B6. 40, 03
        test    al, al                                  ; 1792 _ 84. C0
        jnz     ?_128                                   ; 1794 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1796 _ 80. 7D, FC, FA
        jnz     ?_127                                   ; 179A _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 179C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 179F _ C6. 40, 03, 01
?_127:  mov     eax, 0                                  ; 17A3 _ B8, 00000000
        jmp     ?_135                                   ; 17A8 _ E9, 0000010F

?_128:  mov     eax, dword [ebp+8H]                     ; 17AD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17B0 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 17B4 _ 3C, 01
        jnz     ?_130                                   ; 17B6 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 17B8 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 17BC _ 25, 000000C8
        cmp     eax, 8                                  ; 17C1 _ 83. F8, 08
        jnz     ?_129                                   ; 17C4 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 17C6 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 17C9 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 17CD _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 17CF _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 17D2 _ C6. 40, 03, 02
?_129:  mov     eax, 0                                  ; 17D6 _ B8, 00000000
        jmp     ?_135                                   ; 17DB _ E9, 000000DC

?_130:  mov     eax, dword [ebp+8H]                     ; 17E0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 17E3 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 17E7 _ 3C, 02
        jnz     ?_131                                   ; 17E9 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 17EB _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 17EE _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 17F2 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17F5 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 17F8 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 17FC _ B8, 00000000
        jmp     ?_135                                   ; 1801 _ E9, 000000B6

?_131:  mov     eax, dword [ebp+8H]                     ; 1806 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1809 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 180D _ 3C, 03
        jne     ?_134                                   ; 180F _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1815 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1818 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 181C _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 181F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1822 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1826 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1829 _ 0F B6. 00
        movzx   eax, al                                 ; 182C _ 0F B6. C0
        and     eax, 07H                                ; 182F _ 83. E0, 07
        mov     edx, eax                                ; 1832 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1834 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1837 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 183A _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 183D _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1841 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1844 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1847 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 184A _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 184D _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1851 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1854 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1857 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 185A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 185D _ 0F B6. 00
        movzx   eax, al                                 ; 1860 _ 0F B6. C0
        and     eax, 10H                                ; 1863 _ 83. E0, 10
        test    eax, eax                                ; 1866 _ 85. C0
        jz      ?_132                                   ; 1868 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 186A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 186D _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1870 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1875 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1877 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 187A _ 89. 50, 04
?_132:  mov     eax, dword [ebp+8H]                     ; 187D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1880 _ 0F B6. 00
        movzx   eax, al                                 ; 1883 _ 0F B6. C0
        and     eax, 20H                                ; 1886 _ 83. E0, 20
        test    eax, eax                                ; 1889 _ 85. C0
        jz      ?_133                                   ; 188B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 188D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1890 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1893 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1898 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 189A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 189D _ 89. 50, 08
?_133:  mov     eax, dword [ebp+8H]                     ; 18A0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 18A3 _ 8B. 40, 08
        neg     eax                                     ; 18A6 _ F7. D8
        mov     edx, eax                                ; 18A8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18AA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 18AD _ 89. 50, 08
        mov     eax, 1                                  ; 18B0 _ B8, 00000001
        jmp     ?_135                                   ; 18B5 _ EB, 05

?_134:  mov     eax, 4294967295                         ; 18B7 _ B8, FFFFFFFF
?_135:  leave                                           ; 18BC _ C9
        ret                                             ; 18BD _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 18BE _ 55
        mov     ebp, esp                                ; 18BF _ 89. E5
        sub     esp, 4                                  ; 18C1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 18C4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 18C7 _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 18CA _ 80. 7D, FC, 0E
        jbe     ?_136                                   ; 18CE _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 18D0 _ 80. 7D, FC, 35
        ja      ?_136                                   ; 18D4 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 18D6 _ 0F B6. 45, FC
        sub     eax, 15                                 ; 18DA _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.1946+eax]       ; 18DD _ 0F B6. 80, 00000200(d)
        jmp     ?_138                                   ; 18E4 _ EB, 21

?_136:  cmp     byte [ebp-4H], 1                        ; 18E6 _ 80. 7D, FC, 01
        jbe     ?_137                                   ; 18EA _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 18EC _ 80. 7D, FC, 0E
        ja      ?_137                                   ; 18F0 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 18F2 _ 0F B6. 45, FC
        sub     eax, 2                                  ; 18F6 _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.1947+eax]    ; 18F9 _ 0F B6. 80, 00000228(d)
        jmp     ?_138                                   ; 1900 _ EB, 05

?_137:  mov     eax, 0                                  ; 1902 _ B8, 00000000
?_138:  leave                                           ; 1907 _ C9
        ret                                             ; 1908 _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 1909 _ 55
        mov     ebp, esp                                ; 190A _ 89. E5
        sub     esp, 4                                  ; 190C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 190F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1912 _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 1915 _ 80. 7D, FC, 8E
        jbe     ?_139                                   ; 1919 _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 191B _ 80. 7D, FC, B5
        ja      ?_139                                   ; 191F _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 1921 _ 0F B6. 45, FC
        sub     eax, 143                                ; 1925 _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.1951+eax]       ; 192A _ 0F B6. 80, 00000240(d)
        jmp     ?_141                                   ; 1931 _ EB, 23

?_139:  cmp     byte [ebp-4H], -127                     ; 1933 _ 80. 7D, FC, 81
        jbe     ?_140                                   ; 1937 _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 1939 _ 80. 7D, FC, 8E
        ja      ?_140                                   ; 193D _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 193F _ 0F B6. 45, FC
        sub     eax, 130                                ; 1943 _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.1952+eax]    ; 1948 _ 0F B6. 80, 00000268(d)
        jmp     ?_141                                   ; 194F _ EB, 05

?_140:  mov     eax, 0                                  ; 1951 _ B8, 00000000
?_141:  leave                                           ; 1956 _ C9
        ret                                             ; 1957 _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 1958 _ 55
        mov     ebp, esp                                ; 1959 _ 89. E5
        push    ebx                                     ; 195B _ 53
        mov     eax, dword [ebp+10H]                    ; 195C _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 195F _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 1962 _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 1965 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1968 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 196A _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 196D _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1970 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1973 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1976 _ 8B. 00
        push    ebx                                     ; 1978 _ 53
        push    ecx                                     ; 1979 _ 51
        push    edx                                     ; 197A _ 52
        push    eax                                     ; 197B _ 50
        push    15                                      ; 197C _ 6A, 0F
        push    dword [ebp+0CH]                         ; 197E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1981 _ FF. 75, 08
        call    boxfill8                                ; 1984 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1989 _ 83. C4, 1C
        nop                                             ; 198C _ 90
        mov     ebx, dword [ebp-4H]                     ; 198D _ 8B. 5D, FC
        leave                                           ; 1990 _ C9
        ret                                             ; 1991 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 1992 _ 55
        mov     ebp, esp                                ; 1993 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1995 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1998 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 199B _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 199E _ 8B. 00
        push    cursor                                  ; 19A0 _ 68, 00000000(d)
        push    edx                                     ; 19A5 _ 52
        push    eax                                     ; 19A6 _ 50
        push    dword [ebp+0CH]                         ; 19A7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 19AA _ FF. 75, 08
        call    PrintRGB                                ; 19AD _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 19B2 _ 83. C4, 14
        nop                                             ; 19B5 _ 90
        leave                                           ; 19B6 _ C9
        ret                                             ; 19B7 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 19B8 _ 55
        mov     ebp, esp                                ; 19B9 _ 89. E5
        mov     edx, dword [cur_pos]                    ; 19BB _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 19C1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 19C4 _ 8B. 40, 04
        add     eax, edx                                ; 19C7 _ 01. D0
        mov     dword [cur_pos], eax                    ; 19C9 _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 19CE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 19D4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 19D7 _ 8B. 40, 08
        add     eax, edx                                ; 19DA _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 19DC _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 19E1 _ A1, 00000000(d)
        test    eax, eax                                ; 19E6 _ 85. C0
        jns     ?_142                                   ; 19E8 _ 79, 0A
        mov     dword [cur_pos], 0                      ; 19EA _ C7. 05, 00000000(d), 00000000
?_142:  mov     eax, dword [cur_pos+4H]                 ; 19F4 _ A1, 00000004(d)
        test    eax, eax                                ; 19F9 _ 85. C0
        jns     ?_143                                   ; 19FB _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 19FD _ C7. 05, 00000004(d), 00000000
?_143:  mov     eax, dword [cur_pos]                    ; 1A07 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 1A0C _ 3B. 45, 0C
        jle     ?_144                                   ; 1A0F _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 1A11 _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 1A14 _ A3, 00000000(d)
?_144:  mov     eax, dword [cur_pos+4H]                 ; 1A19 _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 1A1E _ 3B. 45, 10
        jle     ?_145                                   ; 1A21 _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 1A23 _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 1A26 _ A3, 00000004(d)
?_145:  nop                                             ; 1A2B _ 90
        pop     ebp                                     ; 1A2C _ 5D
        ret                                             ; 1A2D _ C3
; computeMousePosition End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 1A2E _ 55
        mov     ebp, esp                                ; 1A2F _ 89. E5
        sub     esp, 24                                 ; 1A31 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1A34 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1A39 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1A3C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1A43 _ 98
        mov     dword [ebp-10H], eax                    ; 1A44 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1A47 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1A4E _ 98
        mov     dword [ebp-0CH], eax                    ; 1A4F _ 89. 45, F4
        sub     esp, 8                                  ; 1A52 _ 83. EC, 08
        push    33                                      ; 1A55 _ 6A, 21
        push    32                                      ; 1A57 _ 6A, 20
        call    io_out8                                 ; 1A59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A5E _ 83. C4, 10
        sub     esp, 12                                 ; 1A61 _ 83. EC, 0C
        push    96                                      ; 1A64 _ 6A, 60
        call    io_in8                                  ; 1A66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A6B _ 83. C4, 10
        sub     esp, 4                                  ; 1A6E _ 83. EC, 04
        push    txtCursor                               ; 1A71 _ 68, 00000000(d)
        push    bootInfo                                ; 1A76 _ 68, 00000000(d)
        push    ?_161                                   ; 1A7B _ 68, 00000045(d)
        call    Printf                                  ; 1A80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A85 _ 83. C4, 10
        nop                                             ; 1A88 _ 90
        leave                                           ; 1A89 _ C9
        ret                                             ; 1A8A _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 1A8B _ 55
        mov     ebp, esp                                ; 1A8C _ 89. E5
        sub     esp, 24                                 ; 1A8E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1A91 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1A96 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1A99 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1AA0 _ 98
        mov     dword [ebp-10H], eax                    ; 1AA1 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1AA4 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1AAB _ 98
        mov     dword [ebp-0CH], eax                    ; 1AAC _ 89. 45, F4
        sub     esp, 8                                  ; 1AAF _ 83. EC, 08
        push    33                                      ; 1AB2 _ 6A, 21
        push    32                                      ; 1AB4 _ 6A, 20
        call    io_out8                                 ; 1AB6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ABB _ 83. C4, 10
        sub     esp, 12                                 ; 1ABE _ 83. EC, 0C
        push    96                                      ; 1AC1 _ 6A, 60
        call    io_in8                                  ; 1AC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AC8 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1ACB _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1ACE _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1AD2 _ 83. EC, 08
        push    eax                                     ; 1AD5 _ 50
        push    KEY_FIFO8                               ; 1AD6 _ 68, 00000000(d)
        call    fifo8_w                                 ; 1ADB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AE0 _ 83. C4, 10
        nop                                             ; 1AE3 _ 90
        leave                                           ; 1AE4 _ C9
        ret                                             ; 1AE5 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 1AE6 _ 55
        mov     ebp, esp                                ; 1AE7 _ 89. E5
        sub     esp, 24                                 ; 1AE9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1AEC _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1AF1 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1AF4 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1AFB _ 98
        mov     dword [ebp-10H], eax                    ; 1AFC _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1AFF _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1B06 _ 98
        mov     dword [ebp-0CH], eax                    ; 1B07 _ 89. 45, F4
        sub     esp, 8                                  ; 1B0A _ 83. EC, 08
        push    32                                      ; 1B0D _ 6A, 20
        push    160                                     ; 1B0F _ 68, 000000A0
        call    io_out8                                 ; 1B14 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B19 _ 83. C4, 10
        sub     esp, 8                                  ; 1B1C _ 83. EC, 08
        push    32                                      ; 1B1F _ 6A, 20
        push    32                                      ; 1B21 _ 6A, 20
        call    io_out8                                 ; 1B23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B28 _ 83. C4, 10
        sub     esp, 12                                 ; 1B2B _ 83. EC, 0C
        push    96                                      ; 1B2E _ 6A, 60
        call    io_in8                                  ; 1B30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B35 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1B38 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1B3B _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1B3F _ 83. EC, 08
        push    eax                                     ; 1B42 _ 50
        push    MOUSE_FIFO8                             ; 1B43 _ 68, 00000000(d)
        call    fifo8_w                                 ; 1B48 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B4D _ 83. C4, 10
        nop                                             ; 1B50 _ 90
        leave                                           ; 1B51 _ C9
        ret                                             ; 1B52 _ C3
; intHandlerFromC_mouse End of function

CMain:  ; Function begin
        push    ebp                                     ; 1B53 _ 55
        mov     ebp, esp                                ; 1B54 _ 89. E5
        sub     esp, 88                                 ; 1B56 _ 83. EC, 58
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1B59 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 1B5F _ 89. 45, F4
        xor     eax, eax                                ; 1B62 _ 31. C0
        call    pict_init                               ; 1B64 _ E8, FFFFFFFC(rel)
        call    getAddrRangeDescArray                   ; 1B69 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 1B6E _ 89. 45, B0
        sub     esp, 12                                 ; 1B71 _ 83. EC, 0C
        lea     eax, [ebp-20H]                          ; 1B74 _ 8D. 45, E0
        push    eax                                     ; 1B77 _ 50
        call    memman_init                             ; 1B78 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B7D _ 83. C4, 10
        sub     esp, 4                                  ; 1B80 _ 83. EC, 04
        push    -799080448                              ; 1B83 _ 68, D05F0000
        push    1048576                                 ; 1B88 _ 68, 00100000
        lea     eax, [ebp-20H]                          ; 1B8D _ 8D. 45, E0
        push    eax                                     ; 1B90 _ 50
        call    memman_free                             ; 1B91 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B96 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 1B99 _ A1, 00000000(d)
        mov     dword [ebp-4CH], eax                    ; 1B9E _ 89. 45, B4
        movzx   eax, word [bootInfo+4H]                 ; 1BA1 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1BA8 _ 98
        mov     dword [ebp-48H], eax                    ; 1BA9 _ 89. 45, B8
        movzx   eax, word [bootInfo+6H]                 ; 1BAC _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1BB3 _ 98
        mov     dword [ebp-44H], eax                    ; 1BB4 _ 89. 45, BC
        sub     esp, 8                                  ; 1BB7 _ 83. EC, 08
        push    15                                      ; 1BBA _ 6A, 0F
        push    dword [ebp-4CH]                         ; 1BBC _ FF. 75, B4
        call    fillAll                                 ; 1BBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BC4 _ 83. C4, 10
        sub     esp, 12                                 ; 1BC7 _ 83. EC, 0C
        lea     eax, [ebp-28H]                          ; 1BCA _ 8D. 45, D8
        push    eax                                     ; 1BCD _ 50
        call    initSheetManager                        ; 1BCE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BD3 _ 83. C4, 10
        sub     esp, 8                                  ; 1BD6 _ 83. EC, 08
        push    8                                       ; 1BD9 _ 6A, 08
        lea     eax, [ebp-20H]                          ; 1BDB _ 8D. 45, E0
        push    eax                                     ; 1BDE _ 50
        call    malloc                                  ; 1BDF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BE4 _ 83. C4, 10
        mov     dword [ebp-40H], eax                    ; 1BE7 _ 89. 45, C0
        mov     eax, dword [ebp-40H]                    ; 1BEA _ 8B. 45, C0
        mov     dword [eax], 0                          ; 1BED _ C7. 00, 00000000
        mov     eax, dword [ebp-40H]                    ; 1BF3 _ 8B. 45, C0
        mov     dword [eax+4H], 0                       ; 1BF6 _ C7. 40, 04, 00000000
        sub     esp, 8                                  ; 1BFD _ 83. EC, 08
        push    8                                       ; 1C00 _ 6A, 08
        lea     eax, [ebp-20H]                          ; 1C02 _ 8D. 45, E0
        push    eax                                     ; 1C05 _ 50
        call    malloc                                  ; 1C06 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C0B _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 1C0E _ 89. 45, C4
        mov     eax, dword [ebp-3CH]                    ; 1C11 _ 8B. 45, C4
        mov     dword [eax], 320                        ; 1C14 _ C7. 00, 00000140
        mov     eax, dword [ebp-3CH]                    ; 1C1A _ 8B. 45, C4
        mov     dword [eax+4H], 200                     ; 1C1D _ C7. 40, 04, 000000C8
        sub     esp, 8                                  ; 1C24 _ 83. EC, 08
        push    1                                       ; 1C27 _ 6A, 01
        lea     eax, [ebp-20H]                          ; 1C29 _ 8D. 45, E0
        push    eax                                     ; 1C2C _ 50
        call    memman_alloc_4k                         ; 1C2D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C32 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1C35 _ 89. 45, C8
        sub     esp, 12                                 ; 1C38 _ 83. EC, 0C
        push    dword [ebp-38H]                         ; 1C3B _ FF. 75, C8
        push    0                                       ; 1C3E _ 6A, 00
        push    dword [ebp-3CH]                         ; 1C40 _ FF. 75, C4
        push    dword [ebp-40H]                         ; 1C43 _ FF. 75, C0
        lea     eax, [ebp-28H]                          ; 1C46 _ 8D. 45, D8
        push    eax                                     ; 1C49 _ 50
        call    insertSheet                             ; 1C4A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C4F _ 83. C4, 20
        mov     dword [ebp-34H], eax                    ; 1C52 _ 89. 45, CC
        call    io_sti                                  ; 1C55 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 1C5A _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 1C5F _ 83. EC, 04
        push    128                                     ; 1C62 _ 68, 00000080
        push    key_buf                                 ; 1C67 _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 1C6C _ 68, 00000000(d)
        call    fifo8_init                              ; 1C71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C76 _ 83. C4, 10
        sub     esp, 4                                  ; 1C79 _ 83. EC, 04
        push    256                                     ; 1C7C _ 68, 00000100
        push    mouse_buf                               ; 1C81 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 1C86 _ 68, 00000000(d)
        call    fifo8_init                              ; 1C8B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C90 _ 83. C4, 10
        call    init_keyboard                           ; 1C93 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], 0                      ; 1C98 _ C7. 45, AC, 00000000
?_146:  call    io_cli                                  ; 1C9F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1CA4 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 1CA7 _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 1CAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CB1 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 1CB4 _ 89. 45, D0
        sub     esp, 12                                 ; 1CB7 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 1CBA _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 1CBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC4 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 1CC7 _ 89. 45, D4
        cmp     dword [ebp-30H], 0                      ; 1CCA _ 83. 7D, D0, 00
        jz      ?_147                                   ; 1CCE _ 74, 10
        cmp     dword [ebp-2CH], 0                      ; 1CD0 _ 83. 7D, D4, 00
        jz      ?_147                                   ; 1CD4 _ 74, 0A
        call    io_stihlt                               ; 1CD6 _ E8, FFFFFFFC(rel)
        jmp     ?_152                                   ; 1CDB _ E9, 0000022C

?_147:  cmp     dword [ebp-30H], 0                      ; 1CE0 _ 83. 7D, D0, 00
        jne     ?_151                                   ; 1CE4 _ 0F 85, 000001A1
        call    io_sti                                  ; 1CEA _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1CEF _ 83. EC, 0C
        push    KEY_FIFO8                               ; 1CF2 _ 68, 00000000(d)
        call    fifo8_r                                 ; 1CF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CFC _ 83. C4, 10
        mov     byte [ebp-57H], al                      ; 1CFF _ 88. 45, A9
        movzx   eax, byte [ebp-57H]                     ; 1D02 _ 0F B6. 45, A9
        sub     esp, 12                                 ; 1D06 _ 83. EC, 0C
        push    eax                                     ; 1D09 _ 50
        call    getKeyMakeChar                          ; 1D0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D0F _ 83. C4, 10
        mov     byte [ebp-56H], al                      ; 1D12 _ 88. 45, AA
        cmp     byte [ebp-57H], 28                      ; 1D15 _ 80. 7D, A9, 1C
        jne     ?_149                                   ; 1D19 _ 0F 85, 00000121
        sub     esp, 8                                  ; 1D1F _ 83. EC, 08
        push    txtCursor                               ; 1D22 _ 68, 00000000(d)
        push    bootInfo                                ; 1D27 _ 68, 00000000(d)
        call    Println                                 ; 1D2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D31 _ 83. C4, 10
        sub     esp, 8                                  ; 1D34 _ 83. EC, 08
        push    15                                      ; 1D37 _ 6A, 0F
        push    bootInfo                                ; 1D39 _ 68, 00000000(d)
        call    clear                                   ; 1D3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D43 _ 83. C4, 10
        sub     esp, 12                                 ; 1D46 _ 83. EC, 0C
        push    txtCursor                               ; 1D49 _ 68, 00000000(d)
        call    initCursor                              ; 1D4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D53 _ 83. C4, 10
        mov     eax, dword [ebp-50H]                    ; 1D56 _ 8B. 45, B0
        mov     ecx, dword [eax+4H]                     ; 1D59 _ 8B. 48, 04
        mov     eax, dword [ebp-54H]                    ; 1D5C _ 8B. 45, AC
        lea     edx, [eax+1H]                           ; 1D5F _ 8D. 50, 01
        mov     dword [ebp-54H], edx                    ; 1D62 _ 89. 55, AC
        mov     edx, eax                                ; 1D65 _ 89. C2
        mov     eax, edx                                ; 1D67 _ 89. D0
        shl     eax, 2                                  ; 1D69 _ C1. E0, 02
        add     eax, edx                                ; 1D6C _ 01. D0
        shl     eax, 2                                  ; 1D6E _ C1. E0, 02
        add     eax, ecx                                ; 1D71 _ 01. C8
        sub     esp, 4                                  ; 1D73 _ 83. EC, 04
        push    txtCursor                               ; 1D76 _ 68, 00000000(d)
        push    bootInfo                                ; 1D7B _ 68, 00000000(d)
        push    eax                                     ; 1D80 _ 50
        call    showMemoryInfo                          ; 1D81 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D86 _ 83. C4, 10
        mov     eax, dword [ebp-50H]                    ; 1D89 _ 8B. 45, B0
        mov     eax, dword [eax]                        ; 1D8C _ 8B. 00
        cmp     eax, dword [ebp-54H]                    ; 1D8E _ 3B. 45, AC
        jg      ?_148                                   ; 1D91 _ 7F, 07
        mov     dword [ebp-54H], 0                      ; 1D93 _ C7. 45, AC, 00000000
?_148:  sub     esp, 4                                  ; 1D9A _ 83. EC, 04
        push    txtCursor                               ; 1D9D _ 68, 00000000(d)
        push    bootInfo                                ; 1DA2 _ 68, 00000000(d)
        push    ?_162                                   ; 1DA7 _ 68, 00000048(d)
        call    Printf                                  ; 1DAC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB1 _ 83. C4, 10
        sub     esp, 12                                 ; 1DB4 _ 83. EC, 0C
        lea     eax, [ebp-20H]                          ; 1DB7 _ 8D. 45, E0
        push    eax                                     ; 1DBA _ 50
        call    memman_total                            ; 1DBB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DC0 _ 83. C4, 10
        sub     esp, 12                                 ; 1DC3 _ 83. EC, 0C
        push    eax                                     ; 1DC6 _ 50
        call    intToHexStr                             ; 1DC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DCC _ 83. C4, 10
        sub     esp, 4                                  ; 1DCF _ 83. EC, 04
        push    txtCursor                               ; 1DD2 _ 68, 00000000(d)
        push    bootInfo                                ; 1DD7 _ 68, 00000000(d)
        push    eax                                     ; 1DDC _ 50
        call    Printf                                  ; 1DDD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DE2 _ 83. C4, 10
        sub     esp, 8                                  ; 1DE5 _ 83. EC, 08
        push    txtCursor                               ; 1DE8 _ 68, 00000000(d)
        push    bootInfo                                ; 1DED _ 68, 00000000(d)
        call    Println                                 ; 1DF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DF7 _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 1DFA _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 1E00 _ A1, 00000000(d)
        mov     ecx, dword [ebp-24H]                    ; 1E05 _ 8B. 4D, DC
        add     ecx, 20                                 ; 1E08 _ 83. C1, 14
        sub     esp, 12                                 ; 1E0B _ 83. EC, 0C
        push    imgHook                                 ; 1E0E _ 68, 00000000(d)
        push    edx                                     ; 1E13 _ 52
        push    eax                                     ; 1E14 _ 50
        push    dword [ebp-48H]                         ; 1E15 _ FF. 75, B8
        push    ecx                                     ; 1E18 _ 51
        call    PrintRGB                                ; 1E19 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E1E _ 83. C4, 20
        mov     eax, dword [ebp-24H]                    ; 1E21 _ 8B. 45, DC
        add     eax, 20                                 ; 1E24 _ 83. C0, 14
        sub     esp, 4                                  ; 1E27 _ 83. EC, 04
        push    65535                                   ; 1E2A _ 68, 0000FFFF
        push    dword [ebp-4CH]                         ; 1E2F _ FF. 75, B4
        push    eax                                     ; 1E32 _ 50
        call    memcpy_8                                ; 1E33 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E38 _ 83. C4, 10
        jmp     ?_146                                   ; 1E3B _ E9, FFFFFE5F

?_149:  cmp     byte [ebp-56H], 9                       ; 1E40 _ 80. 7D, AA, 09
        jnz     ?_150                                   ; 1E44 _ 75, 1C
        sub     esp, 4                                  ; 1E46 _ 83. EC, 04
        push    1                                       ; 1E49 _ 6A, 01
        push    txtCursor                               ; 1E4B _ 68, 00000000(d)
        push    bootInfo                                ; 1E50 _ 68, 00000000(d)
        call    PrintTab                                ; 1E55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E5A _ 83. C4, 10
        jmp     ?_146                                   ; 1E5D _ E9, FFFFFE3D

?_150:  cmp     byte [ebp-56H], 0                       ; 1E62 _ 80. 7D, AA, 00
        je      ?_146                                   ; 1E66 _ 0F 84, FFFFFE33
        movsx   eax, byte [ebp-56H]                     ; 1E6C _ 0F BE. 45, AA
        sub     esp, 4                                  ; 1E70 _ 83. EC, 04
        push    txtCursor                               ; 1E73 _ 68, 00000000(d)
        push    bootInfo                                ; 1E78 _ 68, 00000000(d)
        push    eax                                     ; 1E7D _ 50
        call    PrintChar                               ; 1E7E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E83 _ 83. C4, 10
        jmp     ?_146                                   ; 1E86 _ E9, FFFFFE14

?_151:  cmp     dword [ebp-2CH], 0                      ; 1E8B _ 83. 7D, D4, 00
        jne     ?_146                                   ; 1E8F _ 0F 85, FFFFFE0A
        call    io_sti                                  ; 1E95 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1E9A _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 1E9D _ 68, 00000000(d)
        call    fifo8_r                                 ; 1EA2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EA7 _ 83. C4, 10
        mov     byte [ebp-55H], al                      ; 1EAA _ 88. 45, AB
        movzx   eax, byte [ebp-55H]                     ; 1EAD _ 0F B6. 45, AB
        sub     esp, 8                                  ; 1EB1 _ 83. EC, 08
        push    eax                                     ; 1EB4 _ 50
        push    mdec                                    ; 1EB5 _ 68, 00000000(d)
        call    mouse_decode                            ; 1EBA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EBF _ 83. C4, 10
        test    eax, eax                                ; 1EC2 _ 85. C0
        je      ?_146                                   ; 1EC4 _ 0F 84, FFFFFDD5
        sub     esp, 4                                  ; 1ECA _ 83. EC, 04
        push    cur_pos                                 ; 1ECD _ 68, 00000000(d)
        push    dword [ebp-48H]                         ; 1ED2 _ FF. 75, B8
        push    dword [ebp-4CH]                         ; 1ED5 _ FF. 75, B4
        call    eraseMouse                              ; 1ED8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EDD _ 83. C4, 10
        sub     esp, 4                                  ; 1EE0 _ 83. EC, 04
        push    dword [ebp-44H]                         ; 1EE3 _ FF. 75, BC
        push    dword [ebp-48H]                         ; 1EE6 _ FF. 75, B8
        push    mdec                                    ; 1EE9 _ 68, 00000000(d)
        call    computeMousePosition                    ; 1EEE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EF3 _ 83. C4, 10
        sub     esp, 4                                  ; 1EF6 _ 83. EC, 04
        push    cur_pos                                 ; 1EF9 _ 68, 00000000(d)
        push    dword [ebp-48H]                         ; 1EFE _ FF. 75, B8
        push    dword [ebp-4CH]                         ; 1F01 _ FF. 75, B4
        call    drawMouse                               ; 1F04 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F09 _ 83. C4, 10
?_152:  jmp     ?_146                                   ; 1F0C _ E9, FFFFFD8E
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

txtCursor:                                              ; yword
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 01C0 _ ........
        db 08H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 01C8 _ ........
        db 14H, 00H, 00H, 00H, 14H, 00H, 00H, 00H       ; 01D0 _ ........
        db 0AH, 00H, 00H, 00H, 07H, 00H, 00H, 00H       ; 01D8 _ ........

str.1540:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E0 _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01E8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 01F8 _ ........

keyintToChar.1946:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0200 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0208 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0210 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0218 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0220 _ vbnm,./.

keyintToNumChar.1947:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0228 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0230 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0238 _ ........

keyintToChar.1951:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0240 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0248 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0250 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0258 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0260 _ vbnm,./.

keyintToNumChar.1952:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0268 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H                      ; 0270 _ 90-=.




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

str.1536:                                               ; byte
        resb    1                                       ; 01B8

?_153:  resb    3                                       ; 01B9

addrArray.1591:                                         ; qword
        resb    4                                       ; 01BC

?_154:  resd    8                                       ; 01C0

MEMINFOS.1604:                                          ; byte
        resb    3200                                    ; 01E0

SheetList.1857:                                         ; byte
        resb    1200                                    ; 0E60




?_155:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0000 _ baseAddr
        db 5FH, 4CH, 6FH, 77H, 3AH, 20H, 00H            ; 0008 _ _Low: .

?_156:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 000F _ baseAddr
        db 5FH, 48H, 69H, 67H, 68H, 74H, 3AH, 20H       ; 0017 _ _Hight: 
        db 00H                                          ; 001F _ .

?_157:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 4CH       ; 0020 _ length_L
        db 6FH, 77H, 3AH, 20H, 00H                      ; 0028 _ ow: .

?_158:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 48H       ; 002D _ length_H
        db 69H, 67H, 68H, 74H, 3AH, 20H, 00H            ; 0035 _ ight: .

?_159:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003C _ type: .

?_160:                                                  ; byte
        db 20H, 00H                                     ; 0043 _  .

?_161:                                                  ; byte
        db 73H, 70H, 00H                                ; 0045 _ sp.

?_162:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 3AH, 20H, 00H       ; 0048 _ Total: .


