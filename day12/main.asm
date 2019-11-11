; Disassembly of file: main.o
; Sun Nov 10 17:30:28 2019
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

memset_8:; Function begin
        push    ebp                                     ; 00F4 _ 55
        mov     ebp, esp                                ; 00F5 _ 89. E5
        sub     esp, 4                                  ; 00F7 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 00FA _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 00FD _ 88. 45, FC
        jmp     ?_002                                   ; 0100 _ EB, 0F

?_001:  mov     eax, dword [ebp+8H]                     ; 0102 _ 8B. 45, 08
        lea     edx, [eax+1H]                           ; 0105 _ 8D. 50, 01
        mov     dword [ebp+8H], edx                     ; 0108 _ 89. 55, 08
        movzx   edx, byte [ebp-4H]                      ; 010B _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 010F _ 88. 10
?_002:  mov     eax, dword [ebp+10H]                    ; 0111 _ 8B. 45, 10
        lea     edx, [eax-1H]                           ; 0114 _ 8D. 50, FF
        mov     dword [ebp+10H], edx                    ; 0117 _ 89. 55, 10
        test    eax, eax                                ; 011A _ 85. C0
        jnz     ?_001                                   ; 011C _ 75, E4
        nop                                             ; 011E _ 90
        leave                                           ; 011F _ C9
        ret                                             ; 0120 _ C3
; memset_8 End of function

memcpy_8:; Function begin
        push    ebp                                     ; 0121 _ 55
        mov     ebp, esp                                ; 0122 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0124 _ 8B. 45, 08
        cmp     eax, dword [ebp+0CH]                    ; 0127 _ 3B. 45, 0C
        jz      ?_005                                   ; 012A _ 74, 28
        jmp     ?_004                                   ; 012C _ EB, 17

?_003:  mov     eax, dword [ebp+0CH]                    ; 012E _ 8B. 45, 0C
        lea     edx, [eax+1H]                           ; 0131 _ 8D. 50, 01
        mov     dword [ebp+0CH], edx                    ; 0134 _ 89. 55, 0C
        mov     edx, dword [ebp+8H]                     ; 0137 _ 8B. 55, 08
        lea     ecx, [edx+1H]                           ; 013A _ 8D. 4A, 01
        mov     dword [ebp+8H], ecx                     ; 013D _ 89. 4D, 08
        movzx   edx, byte [edx]                         ; 0140 _ 0F B6. 12
        mov     byte [eax], dl                          ; 0143 _ 88. 10
?_004:  mov     eax, dword [ebp+10H]                    ; 0145 _ 8B. 45, 10
        lea     edx, [eax-1H]                           ; 0148 _ 8D. 50, FF
        mov     dword [ebp+10H], edx                    ; 014B _ 89. 55, 10
        test    eax, eax                                ; 014E _ 85. C0
        jnz     ?_003                                   ; 0150 _ 75, DC
        jmp     ?_006                                   ; 0152 _ EB, 01

?_005:  nop                                             ; 0154 _ 90
?_006:  pop     ebp                                     ; 0155 _ 5D
        ret                                             ; 0156 _ C3
; memcpy_8 End of function

getAddrRangeDescArray:; Function begin
        push    ebp                                     ; 0157 _ 55
        mov     ebp, esp                                ; 0158 _ 89. E5
        sub     esp, 8                                  ; 015A _ 83. EC, 08
        call    GET_MEMOTY_BLOCK_COUNT                  ; 015D _ E8, FFFFFFFC(rel)
        mov     dword [addrArray.1554], eax             ; 0162 _ A3, 000001B8(d)
        call    GET_MEMDESC_ADDR                        ; 0167 _ E8, FFFFFFFC(rel)
        mov     dword [?_123], eax                      ; 016C _ A3, 000001BC(d)
        mov     eax, addrArray.1554                     ; 0171 _ B8, 000001B8(d)
        leave                                           ; 0176 _ C9
        ret                                             ; 0177 _ C3
; getAddrRangeDescArray End of function

memman_init:; Function begin
        push    ebp                                     ; 0178 _ 55
        mov     ebp, esp                                ; 0179 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 017B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 017E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 0184 _ 8B. 45, 08
        mov     dword [eax+0CH], 500                    ; 0187 _ C7. 40, 0C, 000001F4
        mov     eax, dword [ebp+8H]                     ; 018E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0191 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0198 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 019B _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 01A2 _ 8B. 45, 08
        mov     dword [eax+10H], MEMINFOS.1567          ; 01A5 _ C7. 40, 10, 000001C0(d)
        nop                                             ; 01AC _ 90
        pop     ebp                                     ; 01AD _ 5D
        ret                                             ; 01AE _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 01AF _ 55
        mov     ebp, esp                                ; 01B0 _ 89. E5
        sub     esp, 16                                 ; 01B2 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 01B5 _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 01BC _ C7. 45, F8, 00000000
        jmp     ?_008                                   ; 01C3 _ EB, 18

?_007:  mov     eax, dword [ebp+8H]                     ; 01C5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 01C8 _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 01CB _ 8B. 55, F8
        shl     edx, 3                                  ; 01CE _ C1. E2, 03
        add     eax, edx                                ; 01D1 _ 01. D0
        mov     eax, dword [eax+4H]                     ; 01D3 _ 8B. 40, 04
        add     dword [ebp-4H], eax                     ; 01D6 _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 01D9 _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp+8H]                     ; 01DD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 01E0 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 01E2 _ 3B. 45, F8
        ja      ?_007                                   ; 01E5 _ 77, DE
        mov     eax, dword [ebp-4H]                     ; 01E7 _ 8B. 45, FC
        leave                                           ; 01EA _ C9
        ret                                             ; 01EB _ C3
; memman_total End of function

memman_alloc:; Function begin
        push    ebp                                     ; 01EC _ 55
        mov     ebp, esp                                ; 01ED _ 89. E5
        sub     esp, 16                                 ; 01EF _ 83. EC, 10
        mov     dword [ebp-0CH], 9                      ; 01F2 _ C7. 45, F4, 00000009
        jmp     ?_014                                   ; 01F9 _ E9, 000000F4

?_009:  mov     eax, dword [ebp+8H]                     ; 01FE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0201 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0204 _ 8B. 55, F4
        shl     edx, 3                                  ; 0207 _ C1. E2, 03
        add     eax, edx                                ; 020A _ 01. D0
        mov     eax, dword [eax+4H]                     ; 020C _ 8B. 40, 04
        cmp     eax, dword [ebp+0CH]                    ; 020F _ 3B. 45, 0C
        jc      ?_013                                   ; 0212 _ 0F 82, 000000D6
        mov     eax, dword [ebp+8H]                     ; 0218 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 021B _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 021E _ 8B. 55, F4
        shl     edx, 3                                  ; 0221 _ C1. E2, 03
        add     eax, edx                                ; 0224 _ 01. D0
        mov     eax, dword [eax]                        ; 0226 _ 8B. 00
        mov     dword [ebp-4H], eax                     ; 0228 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 022B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 022E _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0231 _ 8B. 55, F4
        shl     edx, 3                                  ; 0234 _ C1. E2, 03
        add     edx, eax                                ; 0237 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 0239 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 023C _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 023F _ 8B. 4D, F4
        shl     ecx, 3                                  ; 0242 _ C1. E1, 03
        add     eax, ecx                                ; 0245 _ 01. C8
        mov     eax, dword [eax+4H]                     ; 0247 _ 8B. 40, 04
        sub     eax, dword [ebp+0CH]                    ; 024A _ 2B. 45, 0C
        mov     dword [edx+4H], eax                     ; 024D _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 0250 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0253 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0256 _ 8B. 55, F4
        shl     edx, 3                                  ; 0259 _ C1. E2, 03
        add     eax, edx                                ; 025C _ 01. D0
        mov     eax, dword [eax+4H]                     ; 025E _ 8B. 40, 04
        test    eax, eax                                ; 0261 _ 85. C0
        jne     ?_012                                   ; 0263 _ 0F 85, 00000080
        mov     eax, dword [ebp-0CH]                    ; 0269 _ 8B. 45, F4
        mov     dword [ebp-8H], eax                     ; 026C _ 89. 45, F8
        jmp     ?_011                                   ; 026F _ EB, 2E

?_010:  mov     eax, dword [ebp+8H]                     ; 0271 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0274 _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 0277 _ 8B. 55, F8
        shl     edx, 3                                  ; 027A _ C1. E2, 03
        lea     ecx, [eax+edx]                          ; 027D _ 8D. 0C 10
        mov     eax, dword [ebp+8H]                     ; 0280 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0283 _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 0286 _ 8B. 55, F8
        add     edx, 1                                  ; 0289 _ 83. C2, 01
        shl     edx, 3                                  ; 028C _ C1. E2, 03
        add     eax, edx                                ; 028F _ 01. D0
        mov     edx, dword [eax+4H]                     ; 0291 _ 8B. 50, 04
        mov     eax, dword [eax]                        ; 0294 _ 8B. 00
        mov     dword [ecx], eax                        ; 0296 _ 89. 01
        mov     dword [ecx+4H], edx                     ; 0298 _ 89. 51, 04
        add     dword [ebp-8H], 1                       ; 029B _ 83. 45, F8, 01
?_011:  mov     eax, dword [ebp+8H]                     ; 029F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 02A2 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 02A4 _ 3B. 45, F8
        ja      ?_010                                   ; 02A7 _ 77, C8
        mov     eax, dword [ebp+8H]                     ; 02A9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 02AC _ 8B. 40, 10
        mov     ecx, dword [ebp-8H]                     ; 02AF _ 8B. 4D, F8
        mov     edx, dword [ebp-0CH]                    ; 02B2 _ 8B. 55, F4
        add     edx, ecx                                ; 02B5 _ 01. CA
        shl     edx, 3                                  ; 02B7 _ C1. E2, 03
        add     eax, edx                                ; 02BA _ 01. D0
        mov     dword [eax], 0                          ; 02BC _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 02C2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 02C5 _ 8B. 40, 10
        mov     ecx, dword [ebp-8H]                     ; 02C8 _ 8B. 4D, F8
        mov     edx, dword [ebp-0CH]                    ; 02CB _ 8B. 55, F4
        add     edx, ecx                                ; 02CE _ 01. CA
        shl     edx, 3                                  ; 02D0 _ C1. E2, 03
        add     eax, edx                                ; 02D3 _ 01. D0
        mov     dword [eax+4H], 0                       ; 02D5 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 02DC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 02DF _ 8B. 00
        lea     edx, [eax-1H]                           ; 02E1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 02E4 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 02E7 _ 89. 10
?_012:  mov     eax, dword [ebp-4H]                     ; 02E9 _ 8B. 45, FC
        jmp     ?_015                                   ; 02EC _ EB, 13

?_013:  add     dword [ebp-0CH], 1                      ; 02EE _ 83. 45, F4, 01
?_014:  mov     eax, dword [ebp+8H]                     ; 02F2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 02F5 _ 8B. 40, 0C
        cmp     eax, dword [ebp-0CH]                    ; 02F8 _ 3B. 45, F4
        ja      ?_009                                   ; 02FB _ 0F 87, FFFFFEFD
?_015:  leave                                           ; 0301 _ C9
        ret                                             ; 0302 _ C3
; memman_alloc End of function

memman_free:; Function begin
        push    ebp                                     ; 0303 _ 55
        mov     ebp, esp                                ; 0304 _ 89. E5
        push    ebx                                     ; 0306 _ 53
        sub     esp, 16                                 ; 0307 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 030A _ C7. 45, F4, 00000000
        jmp     ?_017                                   ; 0311 _ EB, 19

?_016:  mov     eax, dword [ebp+8H]                     ; 0313 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0316 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0319 _ 8B. 55, F4
        shl     edx, 3                                  ; 031C _ C1. E2, 03
        add     eax, edx                                ; 031F _ 01. D0
        mov     eax, dword [eax]                        ; 0321 _ 8B. 00
        cmp     eax, dword [ebp+0CH]                    ; 0323 _ 3B. 45, 0C
        ja      ?_018                                   ; 0326 _ 77, 10
        add     dword [ebp-0CH], 1                      ; 0328 _ 83. 45, F4, 01
?_017:  mov     eax, dword [ebp+8H]                     ; 032C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 032F _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 0331 _ 3B. 45, F4
        jg      ?_016                                   ; 0334 _ 7F, DD
        jmp     ?_019                                   ; 0336 _ EB, 01

?_018:  nop                                             ; 0338 _ 90
?_019:  cmp     dword [ebp-0CH], 0                      ; 0339 _ 83. 7D, F4, 00
        jle     ?_021                                   ; 033D _ 0F 8E, 000000F4
        mov     eax, dword [ebp+8H]                     ; 0343 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0346 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0349 _ 8B. 55, F4
        add     edx, 536870911                          ; 034C _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 0352 _ C1. E2, 03
        add     eax, edx                                ; 0355 _ 01. D0
        mov     edx, dword [eax]                        ; 0357 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0359 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 035C _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 035F _ 8B. 4D, F4
        add     ecx, 536870911                          ; 0362 _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 0368 _ C1. E1, 03
        add     eax, ecx                                ; 036B _ 01. C8
        mov     eax, dword [eax+4H]                     ; 036D _ 8B. 40, 04
        shl     eax, 2                                  ; 0370 _ C1. E0, 02
        add     eax, edx                                ; 0373 _ 01. D0
        cmp     eax, dword [ebp+0CH]                    ; 0375 _ 3B. 45, 0C
        jne     ?_021                                   ; 0378 _ 0F 85, 000000B9
        mov     eax, dword [ebp+8H]                     ; 037E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0381 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0384 _ 8B. 55, F4
        add     edx, 536870911                          ; 0387 _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 038D _ C1. E2, 03
        add     edx, eax                                ; 0390 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 0392 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0395 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 0398 _ 8B. 4D, F4
        add     ecx, 536870911                          ; 039B _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 03A1 _ C1. E1, 03
        add     eax, ecx                                ; 03A4 _ 01. C8
        mov     ecx, dword [eax+4H]                     ; 03A6 _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 03A9 _ 8B. 45, 10
        add     eax, ecx                                ; 03AC _ 01. C8
        mov     dword [edx+4H], eax                     ; 03AE _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 03B1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 03B4 _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 03B6 _ 3B. 45, F4
        jle     ?_020                                   ; 03B9 _ 7E, 72
        mov     eax, dword [ebp+10H]                    ; 03BB _ 8B. 45, 10
        lea     edx, [eax*4]                            ; 03BE _ 8D. 14 85, 00000000
        mov     eax, dword [ebp+0CH]                    ; 03C5 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 03C8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 03CB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 03CE _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 03D1 _ 8B. 55, F4
        shl     edx, 3                                  ; 03D4 _ C1. E2, 03
        add     eax, edx                                ; 03D7 _ 01. D0
        mov     eax, dword [eax]                        ; 03D9 _ 8B. 00
        cmp     ecx, eax                                ; 03DB _ 39. C1
        jnz     ?_020                                   ; 03DD _ 75, 4E
        mov     eax, dword [ebp+8H]                     ; 03DF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 03E2 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 03E5 _ 8B. 55, F4
        add     edx, 536870911                          ; 03E8 _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 03EE _ C1. E2, 03
        add     edx, eax                                ; 03F1 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 03F3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 03F6 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 03F9 _ 8B. 4D, F4
        add     ecx, 536870911                          ; 03FC _ 81. C1, 1FFFFFFF
        shl     ecx, 3                                  ; 0402 _ C1. E1, 03
        add     eax, ecx                                ; 0405 _ 01. C8
        mov     ecx, dword [eax+4H]                     ; 0407 _ 8B. 48, 04
        mov     eax, dword [ebp+8H]                     ; 040A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 040D _ 8B. 40, 10
        mov     ebx, dword [ebp-0CH]                    ; 0410 _ 8B. 5D, F4
        shl     ebx, 3                                  ; 0413 _ C1. E3, 03
        add     eax, ebx                                ; 0416 _ 01. D8
        mov     eax, dword [eax+4H]                     ; 0418 _ 8B. 40, 04
        add     eax, ecx                                ; 041B _ 01. C8
        mov     dword [edx+4H], eax                     ; 041D _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 0420 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0423 _ 8B. 00
        lea     edx, [eax-1H]                           ; 0425 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0428 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 042B _ 89. 10
?_020:  mov     eax, 0                                  ; 042D _ B8, 00000000
        jmp     ?_027                                   ; 0432 _ E9, 00000143

?_021:  mov     eax, dword [ebp+8H]                     ; 0437 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 043A _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 043C _ 3B. 45, F4
        jle     ?_022                                   ; 043F _ 7E, 68
        mov     eax, dword [ebp+10H]                    ; 0441 _ 8B. 45, 10
        lea     edx, [eax*4]                            ; 0444 _ 8D. 14 85, 00000000
        mov     eax, dword [ebp+0CH]                    ; 044B _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 044E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 0451 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0454 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0457 _ 8B. 55, F4
        shl     edx, 3                                  ; 045A _ C1. E2, 03
        add     eax, edx                                ; 045D _ 01. D0
        mov     eax, dword [eax]                        ; 045F _ 8B. 00
        cmp     ecx, eax                                ; 0461 _ 39. C1
        jnz     ?_022                                   ; 0463 _ 75, 44
        mov     eax, dword [ebp+8H]                     ; 0465 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0468 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 046B _ 8B. 55, F4
        shl     edx, 3                                  ; 046E _ C1. E2, 03
        add     edx, eax                                ; 0471 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0473 _ 8B. 45, 0C
        mov     dword [edx], eax                        ; 0476 _ 89. 02
        mov     eax, dword [ebp+8H]                     ; 0478 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 047B _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 047E _ 8B. 55, F4
        shl     edx, 3                                  ; 0481 _ C1. E2, 03
        add     edx, eax                                ; 0484 _ 01. C2
        mov     eax, dword [ebp+8H]                     ; 0486 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0489 _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 048C _ 8B. 4D, F4
        shl     ecx, 3                                  ; 048F _ C1. E1, 03
        add     eax, ecx                                ; 0492 _ 01. C8
        mov     ecx, dword [eax+4H]                     ; 0494 _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 0497 _ 8B. 45, 10
        add     eax, ecx                                ; 049A _ 01. C8
        mov     dword [edx+4H], eax                     ; 049C _ 89. 42, 04
        mov     eax, 0                                  ; 049F _ B8, 00000000
        jmp     ?_027                                   ; 04A4 _ E9, 000000D1

?_022:  mov     eax, dword [ebp+8H]                     ; 04A9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 04AC _ 8B. 00
        cmp     eax, 499                                ; 04AE _ 3D, 000001F3
        jg      ?_026                                   ; 04B3 _ 0F 8F, 00000098
        mov     eax, dword [ebp+8H]                     ; 04B9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 04BC _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 04BE _ 89. 45, F8
        jmp     ?_024                                   ; 04C1 _ EB, 31

?_023:  mov     eax, dword [ebp+8H]                     ; 04C3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 04C6 _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 04C9 _ 8B. 55, F8
        shl     edx, 3                                  ; 04CC _ C1. E2, 03
        lea     ecx, [eax+edx]                          ; 04CF _ 8D. 0C 10
        mov     eax, dword [ebp+8H]                     ; 04D2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 04D5 _ 8B. 40, 10
        mov     edx, dword [ebp-8H]                     ; 04D8 _ 8B. 55, F8
        add     edx, 536870911                          ; 04DB _ 81. C2, 1FFFFFFF
        shl     edx, 3                                  ; 04E1 _ C1. E2, 03
        add     eax, edx                                ; 04E4 _ 01. D0
        mov     edx, dword [eax+4H]                     ; 04E6 _ 8B. 50, 04
        mov     eax, dword [eax]                        ; 04E9 _ 8B. 00
        mov     dword [ecx], eax                        ; 04EB _ 89. 01
        mov     dword [ecx+4H], edx                     ; 04ED _ 89. 51, 04
        sub     dword [ebp-8H], 1                       ; 04F0 _ 83. 6D, F8, 01
?_024:  mov     eax, dword [ebp-8H]                     ; 04F4 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 04F7 _ 3B. 45, F4
        jg      ?_023                                   ; 04FA _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 04FC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 04FF _ 8B. 00
        lea     edx, [eax+1H]                           ; 0501 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0504 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0507 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0509 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 050C _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 050F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0512 _ 8B. 00
        cmp     edx, eax                                ; 0514 _ 39. C2
        jge     ?_025                                   ; 0516 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 0518 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 051B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 051D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0520 _ 89. 50, 0C
?_025:  mov     eax, dword [ebp+8H]                     ; 0523 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0526 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 0529 _ 8B. 55, F4
        shl     edx, 3                                  ; 052C _ C1. E2, 03
        add     edx, eax                                ; 052F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0531 _ 8B. 45, 0C
        mov     dword [edx], eax                        ; 0534 _ 89. 02
        mov     eax, dword [ebp+8H]                     ; 0536 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0539 _ 8B. 40, 10
        mov     edx, dword [ebp-0CH]                    ; 053C _ 8B. 55, F4
        shl     edx, 3                                  ; 053F _ C1. E2, 03
        add     edx, eax                                ; 0542 _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0544 _ 8B. 45, 10
        mov     dword [edx+4H], eax                     ; 0547 _ 89. 42, 04
        mov     eax, 0                                  ; 054A _ B8, 00000000
        jmp     ?_027                                   ; 054F _ EB, 29

?_026:  mov     eax, dword [ebp+8H]                     ; 0551 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0554 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0557 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 055A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 055D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0560 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0563 _ 8B. 40, 04
        mov     edx, eax                                ; 0566 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0568 _ 8B. 45, 10
        add     eax, edx                                ; 056B _ 01. D0
        mov     edx, eax                                ; 056D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 056F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0572 _ 89. 50, 04
        mov     eax, 4294967295                         ; 0575 _ B8, FFFFFFFF
?_027:  add     esp, 16                                 ; 057A _ 83. C4, 10
        pop     ebx                                     ; 057D _ 5B
        pop     ebp                                     ; 057E _ 5D
        ret                                             ; 057F _ C3
; memman_free End of function

strlen: ; Function begin
        push    ebp                                     ; 0580 _ 55
        mov     ebp, esp                                ; 0581 _ 89. E5
        sub     esp, 16                                 ; 0583 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0586 _ C7. 45, FC, 00000000
        nop                                             ; 058D _ 90
?_028:  mov     eax, dword [ebp-4H]                     ; 058E _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 0591 _ 8D. 50, 01
        mov     dword [ebp-4H], edx                     ; 0594 _ 89. 55, FC
        mov     edx, eax                                ; 0597 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0599 _ 8B. 45, 08
        add     eax, edx                                ; 059C _ 01. D0
        movzx   eax, byte [eax]                         ; 059E _ 0F B6. 00
        test    al, al                                  ; 05A1 _ 84. C0
        jnz     ?_028                                   ; 05A3 _ 75, E9
        mov     eax, dword [ebp-4H]                     ; 05A5 _ 8B. 45, FC
        sub     eax, 1                                  ; 05A8 _ 83. E8, 01
        leave                                           ; 05AB _ C9
        ret                                             ; 05AC _ C3
; strlen End of function

charToHex:; Function begin
        push    ebp                                     ; 05AD _ 55
        mov     ebp, esp                                ; 05AE _ 89. E5
        sub     esp, 4                                  ; 05B0 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 05B3 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 05B6 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 05B9 _ 80. 7D, FC, 09
        jle     ?_029                                   ; 05BD _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 05BF _ 0F B6. 45, FC
        add     eax, 87                                 ; 05C3 _ 83. C0, 57
        jmp     ?_030                                   ; 05C6 _ EB, 07

?_029:  movzx   eax, byte [ebp-4H]                      ; 05C8 _ 0F B6. 45, FC
        add     eax, 48                                 ; 05CC _ 83. C0, 30
?_030:  leave                                           ; 05CF _ C9
        ret                                             ; 05D0 _ C3
; charToHex End of function

charToHexStr:; Function begin
        push    ebp                                     ; 05D1 _ 55
        mov     ebp, esp                                ; 05D2 _ 89. E5
        sub     esp, 4                                  ; 05D4 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 05D7 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 05DA _ 88. 45, FC
        movzx   eax, byte [ebp-4H]                      ; 05DD _ 0F B6. 45, FC
        movsx   eax, al                                 ; 05E1 _ 0F BE. C0
        and     eax, 0FH                                ; 05E4 _ 83. E0, 0F
        push    eax                                     ; 05E7 _ 50
        call    charToHex                               ; 05E8 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 05ED _ 83. C4, 04
        mov     byte [?_124], al                        ; 05F0 _ A2, 00001161(d)
        shr     byte [ebp-4H], 4                        ; 05F5 _ C0. 6D, FC, 04
        movzx   eax, byte [ebp-4H]                      ; 05F9 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 05FD _ 0F BE. C0
        and     eax, 0FH                                ; 0600 _ 83. E0, 0F
        push    eax                                     ; 0603 _ 50
        call    charToHex                               ; 0604 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0609 _ 83. C4, 04
        mov     byte [str.1616], al                     ; 060C _ A2, 00001160(d)
        mov     eax, str.1616                           ; 0611 _ B8, 00001160(d)
        leave                                           ; 0616 _ C9
        ret                                             ; 0617 _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0618 _ 55
        mov     ebp, esp                                ; 0619 _ 89. E5
        sub     esp, 16                                 ; 061B _ 83. EC, 10
        mov     dword [ebp-0CH], 2                      ; 061E _ C7. 45, F4, 00000002
        jmp     ?_032                                   ; 0625 _ EB, 0F

?_031:  mov     eax, dword [ebp-0CH]                    ; 0627 _ 8B. 45, F4
        add     eax, str.1620                           ; 062A _ 05, 000000C0(d)
        mov     byte [eax], 48                          ; 062F _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0632 _ 83. 45, F4, 01
?_032:  cmp     dword [ebp-0CH], 9                      ; 0636 _ 83. 7D, F4, 09
        jle     ?_031                                   ; 063A _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 063C _ C7. 45, F8, 00000009
        jmp     ?_036                                   ; 0643 _ EB, 42

?_033:  mov     eax, dword [ebp+8H]                     ; 0645 _ 8B. 45, 08
        and     eax, 0FH                                ; 0648 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 064B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 064E _ 8B. 45, 08
        shr     eax, 4                                  ; 0651 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0654 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0657 _ 83. 7D, FC, 09
        jle     ?_034                                   ; 065B _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 065D _ 8B. 45, FC
        add     eax, 55                                 ; 0660 _ 83. C0, 37
        mov     edx, eax                                ; 0663 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0665 _ 8B. 45, F8
        add     eax, str.1620                           ; 0668 _ 05, 000000C0(d)
        mov     byte [eax], dl                          ; 066D _ 88. 10
        jmp     ?_035                                   ; 066F _ EB, 12

?_034:  mov     eax, dword [ebp-4H]                     ; 0671 _ 8B. 45, FC
        add     eax, 48                                 ; 0674 _ 83. C0, 30
        mov     edx, eax                                ; 0677 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0679 _ 8B. 45, F8
        add     eax, str.1620                           ; 067C _ 05, 000000C0(d)
        mov     byte [eax], dl                          ; 0681 _ 88. 10
?_035:  sub     dword [ebp-8H], 1                       ; 0683 _ 83. 6D, F8, 01
?_036:  cmp     dword [ebp-8H], 1                       ; 0687 _ 83. 7D, F8, 01
        jle     ?_037                                   ; 068B _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 068D _ 83. 7D, 08, 00
        jnz     ?_033                                   ; 0691 _ 75, B2
?_037:  mov     eax, str.1620                           ; 0693 _ B8, 000000C0(d)
        leave                                           ; 0698 _ C9
        ret                                             ; 0699 _ C3
; intToHexStr End of function

set_pict:; Function begin
        push    ebp                                     ; 069A _ 55
        mov     ebp, esp                                ; 069B _ 89. E5
        sub     esp, 24                                 ; 069D _ 83. EC, 18
        call    io_load_eflags                          ; 06A0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 06A5 _ 89. 45, F4
        call    io_cli                                  ; 06A8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 06AD _ 83. EC, 08
        push    dword [ebp+14H]                         ; 06B0 _ FF. 75, 14
        push    968                                     ; 06B3 _ 68, 000003C8
        call    io_out8                                 ; 06B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06BD _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 06C0 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 06C3 _ 89. 45, F0
        jmp     ?_039                                   ; 06C6 _ EB, 65

?_038:  mov     eax, dword [ebp+10H]                    ; 06C8 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 06CB _ 0F B6. 00
        shr     al, 2                                   ; 06CE _ C0. E8, 02
        movzx   eax, al                                 ; 06D1 _ 0F B6. C0
        sub     esp, 8                                  ; 06D4 _ 83. EC, 08
        push    eax                                     ; 06D7 _ 50
        push    969                                     ; 06D8 _ 68, 000003C9
        call    io_out8                                 ; 06DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06E2 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 06E5 _ 8B. 45, 10
        add     eax, 1                                  ; 06E8 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 06EB _ 0F B6. 00
        shr     al, 2                                   ; 06EE _ C0. E8, 02
        movzx   eax, al                                 ; 06F1 _ 0F B6. C0
        sub     esp, 8                                  ; 06F4 _ 83. EC, 08
        push    eax                                     ; 06F7 _ 50
        push    969                                     ; 06F8 _ 68, 000003C9
        call    io_out8                                 ; 06FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0702 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0705 _ 8B. 45, 10
        add     eax, 2                                  ; 0708 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 070B _ 0F B6. 00
        shr     al, 2                                   ; 070E _ C0. E8, 02
        movzx   eax, al                                 ; 0711 _ 0F B6. C0
        sub     esp, 8                                  ; 0714 _ 83. EC, 08
        push    eax                                     ; 0717 _ 50
        push    969                                     ; 0718 _ 68, 000003C9
        call    io_out8                                 ; 071D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0722 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0725 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0729 _ 83. 45, F0, 01
?_039:  mov     eax, dword [ebp-10H]                    ; 072D _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0730 _ 3B. 45, 0C
        jl      ?_038                                   ; 0733 _ 7C, 93
        sub     esp, 12                                 ; 0735 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0738 _ FF. 75, F4
        call    io_store_eflags                         ; 073B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0740 _ 83. C4, 10
        nop                                             ; 0743 _ 90
        leave                                           ; 0744 _ C9
        ret                                             ; 0745 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 0746 _ 55
        mov     ebp, esp                                ; 0747 _ 89. E5
        sub     esp, 8                                  ; 0749 _ 83. EC, 08
        push    0                                       ; 074C _ 6A, 00
        push    pict                                    ; 074E _ 68, 00000000(d)
        push    16                                      ; 0753 _ 6A, 10
        push    0                                       ; 0755 _ 6A, 00
        call    set_pict                                ; 0757 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 075C _ 83. C4, 10
        nop                                             ; 075F _ 90
        leave                                           ; 0760 _ C9
        ret                                             ; 0761 _ C3
; pict_init End of function

boxfill8:; Function begin
        push    ebp                                     ; 0762 _ 55
        mov     ebp, esp                                ; 0763 _ 89. E5
        sub     esp, 20                                 ; 0765 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0768 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 076B _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 076E _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0771 _ 89. 45, FC
        jmp     ?_043                                   ; 0774 _ EB, 33

?_040:  mov     eax, dword [ebp+14H]                    ; 0776 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0779 _ 89. 45, F8
        jmp     ?_042                                   ; 077C _ EB, 1F

?_041:  mov     eax, dword [ebp-4H]                     ; 077E _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0781 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0785 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0787 _ 8B. 45, F8
        add     eax, edx                                ; 078A _ 01. D0
        mov     edx, eax                                ; 078C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 078E _ 8B. 45, 08
        add     edx, eax                                ; 0791 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0793 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0797 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0799 _ 83. 45, F8, 01
?_042:  mov     eax, dword [ebp-8H]                     ; 079D _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 07A0 _ 3B. 45, 1C
        jle     ?_041                                   ; 07A3 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 07A5 _ 83. 45, FC, 01
?_043:  mov     eax, dword [ebp-4H]                     ; 07A9 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 07AC _ 3B. 45, 20
        jle     ?_040                                   ; 07AF _ 7E, C5
        nop                                             ; 07B1 _ 90
        leave                                           ; 07B2 _ C9
        ret                                             ; 07B3 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 07B4 _ 55
        mov     ebp, esp                                ; 07B5 _ 89. E5
        sub     esp, 20                                 ; 07B7 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 07BA _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 07BD _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 07C0 _ 0F BE. 45, EC
        sub     eax, 97                                 ; 07C4 _ 83. E8, 61
        shl     eax, 4                                  ; 07C7 _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 07CA _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 07CF _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 07D2 _ 8B. 45, FC
        leave                                           ; 07D5 _ C9
        ret                                             ; 07D6 _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 07D7 _ 55
        mov     ebp, esp                                ; 07D8 _ 89. E5
        sub     esp, 20                                 ; 07DA _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 07DD _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 07E0 _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 07E3 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 07E7 _ 83. E8, 30
        shl     eax, 4                                  ; 07EA _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 07ED _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 07F2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 07F5 _ 8B. 45, FC
        leave                                           ; 07F8 _ C9
        ret                                             ; 07F9 _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 07FA _ 55
        mov     ebp, esp                                ; 07FB _ 89. E5
        sub     esp, 20                                 ; 07FD _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0800 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0803 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0806 _ C7. 45, FC, 00000000
        jmp     ?_053                                   ; 080D _ E9, 0000016C

?_044:  mov     edx, dword [ebp-4H]                     ; 0812 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0815 _ 8B. 45, 1C
        add     eax, edx                                ; 0818 _ 01. D0
        movzx   eax, byte [eax]                         ; 081A _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 081D _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0820 _ 80. 7D, FB, 00
        jns     ?_045                                   ; 0824 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0826 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0829 _ 8B. 45, FC
        add     eax, edx                                ; 082C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 082E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0832 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0834 _ 8B. 45, 10
        add     eax, edx                                ; 0837 _ 01. D0
        mov     edx, eax                                ; 0839 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 083B _ 8B. 45, 08
        add     edx, eax                                ; 083E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0840 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0844 _ 88. 02
?_045:  movsx   eax, byte [ebp-5H]                      ; 0846 _ 0F BE. 45, FB
        and     eax, 40H                                ; 084A _ 83. E0, 40
        test    eax, eax                                ; 084D _ 85. C0
        jz      ?_046                                   ; 084F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0851 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0854 _ 8B. 45, FC
        add     eax, edx                                ; 0857 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0859 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 085D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 085F _ 8B. 45, 10
        add     eax, edx                                ; 0862 _ 01. D0
        lea     edx, [eax+1H]                           ; 0864 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0867 _ 8B. 45, 08
        add     edx, eax                                ; 086A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 086C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0870 _ 88. 02
?_046:  movsx   eax, byte [ebp-5H]                      ; 0872 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0876 _ 83. E0, 20
        test    eax, eax                                ; 0879 _ 85. C0
        jz      ?_047                                   ; 087B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 087D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0880 _ 8B. 45, FC
        add     eax, edx                                ; 0883 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0885 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0889 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 088B _ 8B. 45, 10
        add     eax, edx                                ; 088E _ 01. D0
        lea     edx, [eax+2H]                           ; 0890 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0893 _ 8B. 45, 08
        add     edx, eax                                ; 0896 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0898 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 089C _ 88. 02
?_047:  movsx   eax, byte [ebp-5H]                      ; 089E _ 0F BE. 45, FB
        and     eax, 10H                                ; 08A2 _ 83. E0, 10
        test    eax, eax                                ; 08A5 _ 85. C0
        jz      ?_048                                   ; 08A7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08A9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08AC _ 8B. 45, FC
        add     eax, edx                                ; 08AF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08B1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08B5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08B7 _ 8B. 45, 10
        add     eax, edx                                ; 08BA _ 01. D0
        lea     edx, [eax+3H]                           ; 08BC _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 08BF _ 8B. 45, 08
        add     edx, eax                                ; 08C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08C8 _ 88. 02
?_048:  movsx   eax, byte [ebp-5H]                      ; 08CA _ 0F BE. 45, FB
        and     eax, 08H                                ; 08CE _ 83. E0, 08
        test    eax, eax                                ; 08D1 _ 85. C0
        jz      ?_049                                   ; 08D3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08D5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08D8 _ 8B. 45, FC
        add     eax, edx                                ; 08DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08DD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08E1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08E3 _ 8B. 45, 10
        add     eax, edx                                ; 08E6 _ 01. D0
        lea     edx, [eax+4H]                           ; 08E8 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 08EB _ 8B. 45, 08
        add     edx, eax                                ; 08EE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08F0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08F4 _ 88. 02
?_049:  movsx   eax, byte [ebp-5H]                      ; 08F6 _ 0F BE. 45, FB
        and     eax, 04H                                ; 08FA _ 83. E0, 04
        test    eax, eax                                ; 08FD _ 85. C0
        jz      ?_050                                   ; 08FF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0901 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0904 _ 8B. 45, FC
        add     eax, edx                                ; 0907 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0909 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 090D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 090F _ 8B. 45, 10
        add     eax, edx                                ; 0912 _ 01. D0
        lea     edx, [eax+5H]                           ; 0914 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0917 _ 8B. 45, 08
        add     edx, eax                                ; 091A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 091C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0920 _ 88. 02
?_050:  movsx   eax, byte [ebp-5H]                      ; 0922 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0926 _ 83. E0, 02
        test    eax, eax                                ; 0929 _ 85. C0
        jz      ?_051                                   ; 092B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 092D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0930 _ 8B. 45, FC
        add     eax, edx                                ; 0933 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0935 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0939 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 093B _ 8B. 45, 10
        add     eax, edx                                ; 093E _ 01. D0
        lea     edx, [eax+6H]                           ; 0940 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0943 _ 8B. 45, 08
        add     edx, eax                                ; 0946 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0948 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 094C _ 88. 02
?_051:  movsx   eax, byte [ebp-5H]                      ; 094E _ 0F BE. 45, FB
        and     eax, 01H                                ; 0952 _ 83. E0, 01
        test    eax, eax                                ; 0955 _ 85. C0
        jz      ?_052                                   ; 0957 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0959 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 095C _ 8B. 45, FC
        add     eax, edx                                ; 095F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0961 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0965 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0967 _ 8B. 45, 10
        add     eax, edx                                ; 096A _ 01. D0
        lea     edx, [eax+7H]                           ; 096C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 096F _ 8B. 45, 08
        add     edx, eax                                ; 0972 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0974 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0978 _ 88. 02
?_052:  add     dword [ebp-4H], 1                       ; 097A _ 83. 45, FC, 01
?_053:  cmp     dword [ebp-4H], 15                      ; 097E _ 83. 7D, FC, 0F
        jle     ?_044                                   ; 0982 _ 0F 8E, FFFFFE8A
        nop                                             ; 0988 _ 90
        leave                                           ; 0989 _ C9
        ret                                             ; 098A _ C3
; showFont8 End of function

putChar:; Function begin
        push    ebp                                     ; 098B _ 55
        mov     ebp, esp                                ; 098C _ 89. E5
        sub     esp, 4                                  ; 098E _ 83. EC, 04
        mov     eax, dword [ebp+1CH]                    ; 0991 _ 8B. 45, 1C
        mov     byte [ebp-4H], al                       ; 0994 _ 88. 45, FC
        cmp     byte [ebp-4H], 57                       ; 0997 _ 80. 7D, FC, 39
        ja      ?_054                                   ; 099B _ 77, 39
        cmp     byte [ebp-4H], 47                       ; 099D _ 80. 7D, FC, 2F
        jbe     ?_054                                   ; 09A1 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 09A3 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 09A7 _ 0F BE. C0
        push    eax                                     ; 09AA _ 50
        call    getAddrOffsetNumber                     ; 09AB _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09B0 _ 83. C4, 04
        mov     edx, eax                                ; 09B3 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 09B5 _ 8B. 45, 18
        movsx   eax, al                                 ; 09B8 _ 0F BE. C0
        push    edx                                     ; 09BB _ 52
        push    eax                                     ; 09BC _ 50
        push    dword [ebp+14H]                         ; 09BD _ FF. 75, 14
        push    dword [ebp+10H]                         ; 09C0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 09C3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09C6 _ FF. 75, 08
        call    showFont8                               ; 09C9 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 09CE _ 83. C4, 18
        jmp     ?_060                                   ; 09D1 _ E9, 00000121

?_054:  cmp     byte [ebp-4H], 122                      ; 09D6 _ 80. 7D, FC, 7A
        ja      ?_055                                   ; 09DA _ 77, 39
        cmp     byte [ebp-4H], 96                       ; 09DC _ 80. 7D, FC, 60
        jbe     ?_055                                   ; 09E0 _ 76, 33
        movzx   eax, byte [ebp-4H]                      ; 09E2 _ 0F B6. 45, FC
        movsx   eax, al                                 ; 09E6 _ 0F BE. C0
        push    eax                                     ; 09E9 _ 50
        call    getAddrOffsetAlpha                      ; 09EA _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09EF _ 83. C4, 04
        mov     edx, eax                                ; 09F2 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 09F4 _ 8B. 45, 18
        movsx   eax, al                                 ; 09F7 _ 0F BE. C0
        push    edx                                     ; 09FA _ 52
        push    eax                                     ; 09FB _ 50
        push    dword [ebp+14H]                         ; 09FC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 09FF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A02 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A05 _ FF. 75, 08
        call    showFont8                               ; 0A08 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A0D _ 83. C4, 18
        jmp     ?_060                                   ; 0A10 _ E9, 000000E2

?_055:  cmp     byte [ebp-4H], 90                       ; 0A15 _ 80. 7D, FC, 5A
        ja      ?_056                                   ; 0A19 _ 77, 3C
        cmp     byte [ebp-4H], 64                       ; 0A1B _ 80. 7D, FC, 40
        jbe     ?_056                                   ; 0A1F _ 76, 36
        movzx   eax, byte [ebp-4H]                      ; 0A21 _ 0F B6. 45, FC
        add     eax, 32                                 ; 0A25 _ 83. C0, 20
        movsx   eax, al                                 ; 0A28 _ 0F BE. C0
        push    eax                                     ; 0A2B _ 50
        call    getAddrOffsetAlpha                      ; 0A2C _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0A31 _ 83. C4, 04
        mov     edx, eax                                ; 0A34 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 0A36 _ 8B. 45, 18
        movsx   eax, al                                 ; 0A39 _ 0F BE. C0
        push    edx                                     ; 0A3C _ 52
        push    eax                                     ; 0A3D _ 50
        push    dword [ebp+14H]                         ; 0A3E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A41 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A44 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A47 _ FF. 75, 08
        call    showFont8                               ; 0A4A _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A4F _ 83. C4, 18
        jmp     ?_060                                   ; 0A52 _ E9, 000000A0

?_056:  cmp     byte [ebp-4H], 32                       ; 0A57 _ 80. 7D, FC, 20
        jnz     ?_057                                   ; 0A5B _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0A5D _ 8B. 45, 18
        movsx   eax, al                                 ; 0A60 _ 0F BE. C0
        push    vsFont_EMPTY                            ; 0A63 _ 68, 00000000(d)
        push    eax                                     ; 0A68 _ 50
        push    dword [ebp+14H]                         ; 0A69 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A6C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A6F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A72 _ FF. 75, 08
        call    showFont8                               ; 0A75 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0A7A _ 83. C4, 18
        jmp     ?_060                                   ; 0A7D _ EB, 78

?_057:  cmp     byte [ebp-4H], 63                       ; 0A7F _ 80. 7D, FC, 3F
        jnz     ?_058                                   ; 0A83 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0A85 _ 8B. 45, 18
        movsx   eax, al                                 ; 0A88 _ 0F BE. C0
        push    vsFont_ASK                              ; 0A8B _ 68, 00000000(d)
        push    eax                                     ; 0A90 _ 50
        push    dword [ebp+14H]                         ; 0A91 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0A94 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0A97 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A9A _ FF. 75, 08
        call    showFont8                               ; 0A9D _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0AA2 _ 83. C4, 18
        jmp     ?_060                                   ; 0AA5 _ EB, 50

?_058:  cmp     byte [ebp-4H], 95                       ; 0AA7 _ 80. 7D, FC, 5F
        jnz     ?_059                                   ; 0AAB _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0AAD _ 8B. 45, 18
        movsx   eax, al                                 ; 0AB0 _ 0F BE. C0
        push    vsFont__                                ; 0AB3 _ 68, 00000000(d)
        push    eax                                     ; 0AB8 _ 50
        push    dword [ebp+14H]                         ; 0AB9 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0ABC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0ABF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AC2 _ FF. 75, 08
        call    showFont8                               ; 0AC5 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0ACA _ 83. C4, 18
        jmp     ?_060                                   ; 0ACD _ EB, 28

?_059:  cmp     byte [ebp-4H], 58                       ; 0ACF _ 80. 7D, FC, 3A
        jnz     ?_060                                   ; 0AD3 _ 75, 22
        mov     eax, dword [ebp+18H]                    ; 0AD5 _ 8B. 45, 18
        movsx   eax, al                                 ; 0AD8 _ 0F BE. C0
        push    vsFont_colon                            ; 0ADB _ 68, 00000000(d)
        push    eax                                     ; 0AE0 _ 50
        push    dword [ebp+14H]                         ; 0AE1 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0AE4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0AE7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AEA _ FF. 75, 08
        call    showFont8                               ; 0AED _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0AF2 _ 83. C4, 18
        jmp     ?_060                                   ; 0AF5 _ EB, 00

?_060:  nop                                             ; 0AF7 _ 90
        leave                                           ; 0AF8 _ C9
        ret                                             ; 0AF9 _ C3
; putChar End of function

putStr: ; Function begin
        push    ebp                                     ; 0AFA _ 55
        mov     ebp, esp                                ; 0AFB _ 89. E5
        sub     esp, 16                                 ; 0AFD _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0B00 _ C7. 45, FC, 00000000
        jmp     ?_062                                   ; 0B07 _ EB, 36

?_061:  mov     edx, dword [ebp-4H]                     ; 0B09 _ 8B. 55, FC
        mov     eax, dword [ebp+20H]                    ; 0B0C _ 8B. 45, 20
        add     eax, edx                                ; 0B0F _ 01. D0
        movzx   eax, byte [eax]                         ; 0B11 _ 0F B6. 00
        movzx   eax, al                                 ; 0B14 _ 0F B6. C0
        mov     edx, dword [ebp+18H]                    ; 0B17 _ 8B. 55, 18
        mov     ecx, edx                                ; 0B1A _ 89. D1
        imul    ecx, dword [ebp-4H]                     ; 0B1C _ 0F AF. 4D, FC
        mov     edx, dword [ebp+10H]                    ; 0B20 _ 8B. 55, 10
        add     edx, ecx                                ; 0B23 _ 01. CA
        push    eax                                     ; 0B25 _ 50
        push    dword [ebp+1CH]                         ; 0B26 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 0B29 _ FF. 75, 14
        push    edx                                     ; 0B2C _ 52
        push    dword [ebp+0CH]                         ; 0B2D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B30 _ FF. 75, 08
        call    putChar                                 ; 0B33 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0B38 _ 83. C4, 18
        add     dword [ebp-4H], 1                       ; 0B3B _ 83. 45, FC, 01
?_062:  mov     eax, dword [ebp-4H]                     ; 0B3F _ 8B. 45, FC
        cmp     eax, dword [ebp+24H]                    ; 0B42 _ 3B. 45, 24
        jl      ?_061                                   ; 0B45 _ 7C, C2
        nop                                             ; 0B47 _ 90
        leave                                           ; 0B48 _ C9
        ret                                             ; 0B49 _ C3
; putStr End of function

charToPictColor:; Function begin
        push    ebp                                     ; 0B4A _ 55
        mov     ebp, esp                                ; 0B4B _ 89. E5
        sub     esp, 4                                  ; 0B4D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0B50 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0B53 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0B56 _ 80. 7D, FC, 2A
        jnz     ?_063                                   ; 0B5A _ 75, 0A
        mov     eax, 0                                  ; 0B5C _ B8, 00000000
        jmp     ?_078                                   ; 0B61 _ E9, 000000D2

?_063:  cmp     byte [ebp-4H], 114                      ; 0B66 _ 80. 7D, FC, 72
        jnz     ?_064                                   ; 0B6A _ 75, 0A
        mov     eax, 1                                  ; 0B6C _ B8, 00000001
        jmp     ?_078                                   ; 0B71 _ E9, 000000C2

?_064:  cmp     byte [ebp-4H], 103                      ; 0B76 _ 80. 7D, FC, 67
        jnz     ?_065                                   ; 0B7A _ 75, 0A
        mov     eax, 2                                  ; 0B7C _ B8, 00000002
        jmp     ?_078                                   ; 0B81 _ E9, 000000B2

?_065:  cmp     byte [ebp-4H], 121                      ; 0B86 _ 80. 7D, FC, 79
        jnz     ?_066                                   ; 0B8A _ 75, 0A
        mov     eax, 3                                  ; 0B8C _ B8, 00000003
        jmp     ?_078                                   ; 0B91 _ E9, 000000A2

?_066:  cmp     byte [ebp-4H], 98                       ; 0B96 _ 80. 7D, FC, 62
        jnz     ?_067                                   ; 0B9A _ 75, 0A
        mov     eax, 4                                  ; 0B9C _ B8, 00000004
        jmp     ?_078                                   ; 0BA1 _ E9, 00000092

?_067:  cmp     byte [ebp-4H], 112                      ; 0BA6 _ 80. 7D, FC, 70
        jnz     ?_068                                   ; 0BAA _ 75, 0A
        mov     eax, 5                                  ; 0BAC _ B8, 00000005
        jmp     ?_078                                   ; 0BB1 _ E9, 00000082

?_068:  cmp     byte [ebp-4H], 108                      ; 0BB6 _ 80. 7D, FC, 6C
        jnz     ?_069                                   ; 0BBA _ 75, 07
        mov     eax, 6                                  ; 0BBC _ B8, 00000006
        jmp     ?_078                                   ; 0BC1 _ EB, 75

?_069:  cmp     byte [ebp-4H], 119                      ; 0BC3 _ 80. 7D, FC, 77
        jnz     ?_070                                   ; 0BC7 _ 75, 07
        mov     eax, 7                                  ; 0BC9 _ B8, 00000007
        jmp     ?_078                                   ; 0BCE _ EB, 68

?_070:  cmp     byte [ebp-4H], 45                       ; 0BD0 _ 80. 7D, FC, 2D
        jnz     ?_071                                   ; 0BD4 _ 75, 07
        mov     eax, 8                                  ; 0BD6 _ B8, 00000008
        jmp     ?_078                                   ; 0BDB _ EB, 5B

?_071:  cmp     byte [ebp-4H], 82                       ; 0BDD _ 80. 7D, FC, 52
        jnz     ?_072                                   ; 0BE1 _ 75, 07
        mov     eax, 9                                  ; 0BE3 _ B8, 00000009
        jmp     ?_078                                   ; 0BE8 _ EB, 4E

?_072:  cmp     byte [ebp-4H], 71                       ; 0BEA _ 80. 7D, FC, 47
        jnz     ?_073                                   ; 0BEE _ 75, 07
        mov     eax, 10                                 ; 0BF0 _ B8, 0000000A
        jmp     ?_078                                   ; 0BF5 _ EB, 41

?_073:  cmp     byte [ebp-4H], 89                       ; 0BF7 _ 80. 7D, FC, 59
        jnz     ?_074                                   ; 0BFB _ 75, 07
        mov     eax, 11                                 ; 0BFD _ B8, 0000000B
        jmp     ?_078                                   ; 0C02 _ EB, 34

?_074:  cmp     byte [ebp-4H], 66                       ; 0C04 _ 80. 7D, FC, 42
        jnz     ?_075                                   ; 0C08 _ 75, 07
        mov     eax, 12                                 ; 0C0A _ B8, 0000000C
        jmp     ?_078                                   ; 0C0F _ EB, 27

?_075:  cmp     byte [ebp-4H], 80                       ; 0C11 _ 80. 7D, FC, 50
        jnz     ?_076                                   ; 0C15 _ 75, 07
        mov     eax, 13                                 ; 0C17 _ B8, 0000000D
        jmp     ?_078                                   ; 0C1C _ EB, 1A

?_076:  cmp     byte [ebp-4H], 115                      ; 0C1E _ 80. 7D, FC, 73
        jnz     ?_077                                   ; 0C22 _ 75, 07
        mov     eax, 14                                 ; 0C24 _ B8, 0000000E
        jmp     ?_078                                   ; 0C29 _ EB, 0D

?_077:  cmp     byte [ebp-4H], 61                       ; 0C2B _ 80. 7D, FC, 3D
        jnz     ?_078                                   ; 0C2F _ 75, 07
        mov     eax, 15                                 ; 0C31 _ B8, 0000000F
        jmp     ?_078                                   ; 0C36 _ EB, 00

?_078:  leave                                           ; 0C38 _ C9
        ret                                             ; 0C39 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 0C3A _ 55
        mov     ebp, esp                                ; 0C3B _ 89. E5
        push    ebx                                     ; 0C3D _ 53
        sub     esp, 16                                 ; 0C3E _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 0C41 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0C48 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 0C4F _ C7. 45, F8, 00000000
?_079:  mov     edx, dword [ebp-8H]                     ; 0C56 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0C59 _ 8B. 45, 18
        add     eax, edx                                ; 0C5C _ 01. D0
        movzx   eax, byte [eax]                         ; 0C5E _ 0F B6. 00
        test    al, al                                  ; 0C61 _ 84. C0
        jnz     ?_080                                   ; 0C63 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0C65 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0C68 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0C6B _ 8B. 45, 18
        add     eax, edx                                ; 0C6E _ 01. D0
        movzx   eax, byte [eax]                         ; 0C70 _ 0F B6. 00
        test    al, al                                  ; 0C73 _ 84. C0
        jz      ?_083                                   ; 0C75 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0C77 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0C7B _ C7. 45, F4, 00000000
        jmp     ?_082                                   ; 0C82 _ EB, 4C

?_080:  mov     edx, dword [ebp-8H]                     ; 0C84 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0C87 _ 8B. 45, 18
        add     eax, edx                                ; 0C8A _ 01. D0
        movzx   eax, byte [eax]                         ; 0C8C _ 0F B6. 00
        cmp     al, 46                                  ; 0C8F _ 3C, 2E
        jz      ?_081                                   ; 0C91 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0C93 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 0C96 _ 8B. 45, F0
        add     eax, edx                                ; 0C99 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C9B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0C9F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0CA1 _ 8B. 45, 10
        add     edx, eax                                ; 0CA4 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 0CA6 _ 8B. 45, F4
        add     eax, edx                                ; 0CA9 _ 01. D0
        mov     edx, eax                                ; 0CAB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CAD _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0CB0 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0CB3 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0CB6 _ 8B. 45, 18
        add     eax, edx                                ; 0CB9 _ 01. D0
        movzx   eax, byte [eax]                         ; 0CBB _ 0F B6. 00
        movsx   eax, al                                 ; 0CBE _ 0F BE. C0
        push    eax                                     ; 0CC1 _ 50
        call    charToPictColor                         ; 0CC2 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0CC7 _ 83. C4, 04
        mov     byte [ebx], al                          ; 0CCA _ 88. 03
?_081:  add     dword [ebp-0CH], 1                      ; 0CCC _ 83. 45, F4, 01
?_082:  add     dword [ebp-8H], 1                       ; 0CD0 _ 83. 45, F8, 01
        jmp     ?_079                                   ; 0CD4 _ EB, 80

?_083:  nop                                             ; 0CD6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0CD7 _ 8B. 5D, FC
        leave                                           ; 0CDA _ C9
        ret                                             ; 0CDB _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0CDC _ 55
        mov     ebp, esp                                ; 0CDD _ 89. E5
        sub     esp, 16                                 ; 0CDF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0CE2 _ C7. 45, FC, 00000000
        jmp     ?_085                                   ; 0CE9 _ EB, 11

?_084:  mov     edx, dword [ebp-4H]                     ; 0CEB _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0CEE _ 8B. 45, 08
        add     eax, edx                                ; 0CF1 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0CF3 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0CF6 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0CF8 _ 83. 45, FC, 01
?_085:  cmp     dword [ebp-4H], 65534                   ; 0CFC _ 81. 7D, FC, 0000FFFE
        jle     ?_084                                   ; 0D03 _ 7E, E6
        nop                                             ; 0D05 _ 90
        leave                                           ; 0D06 _ C9
        ret                                             ; 0D07 _ C3
; fillAll End of function

initCursor:; Function begin
        push    ebp                                     ; 0D08 _ 55
        mov     ebp, esp                                ; 0D09 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D0B _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0D0E _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D11 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0D14 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D16 _ 8B. 45, 08
        mov     edx, dword [eax+14H]                    ; 0D19 _ 8B. 50, 14
        mov     eax, dword [ebp+8H]                     ; 0D1C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0D1F _ 89. 50, 04
        nop                                             ; 0D22 _ 90
        pop     ebp                                     ; 0D23 _ 5D
        ret                                             ; 0D24 _ C3
; initCursor End of function

clear:  ; Function begin
        push    ebp                                     ; 0D25 _ 55
        mov     ebp, esp                                ; 0D26 _ 89. E5
        sub     esp, 16                                 ; 0D28 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0D2B _ C7. 45, FC, 00000000
        jmp     ?_087                                   ; 0D32 _ EB, 13

?_086:  mov     eax, dword [ebp+8H]                     ; 0D34 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D37 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 0D39 _ 8B. 45, FC
        add     eax, edx                                ; 0D3C _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0D3E _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0D41 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0D43 _ 83. 45, FC, 01
?_087:  cmp     dword [ebp-4H], 65534                   ; 0D47 _ 81. 7D, FC, 0000FFFE
        jle     ?_086                                   ; 0D4E _ 7E, E4
        nop                                             ; 0D50 _ 90
        leave                                           ; 0D51 _ C9
        ret                                             ; 0D52 _ C3
; clear End of function

Println:; Function begin
        push    ebp                                     ; 0D53 _ 55
        mov     ebp, esp                                ; 0D54 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0D56 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0D59 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0D5C _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0D5F _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0D61 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0D64 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0D67 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0D6A _ 8B. 40, 0C
        add     edx, eax                                ; 0D6D _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0D6F _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0D72 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0D75 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0D78 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D7B _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0D7E _ 0F B7. 40, 06
        cwde                                            ; 0D82 _ 98
        cmp     edx, eax                                ; 0D83 _ 39. C2
        jl      ?_088                                   ; 0D85 _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0D87 _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0D8A _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0D8D _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0D90 _ 89. 50, 04
?_088:  nop                                             ; 0D93 _ 90
        pop     ebp                                     ; 0D94 _ 5D
        ret                                             ; 0D95 _ C3
; Println End of function

PrintlnMult:; Function begin
        push    ebp                                     ; 0D96 _ 55
        mov     ebp, esp                                ; 0D97 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 0D99 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 0D9C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 0D9F _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0DA2 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0DA4 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DA7 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DAA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0DAD _ 8B. 40, 0C
        imul    eax, dword [ebp+10H]                    ; 0DB0 _ 0F AF. 45, 10
        add     edx, eax                                ; 0DB4 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 0DB6 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0DB9 _ 89. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0DBC _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0DBF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DC2 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0DC5 _ 0F B7. 40, 06
        cwde                                            ; 0DC9 _ 98
        cmp     edx, eax                                ; 0DCA _ 39. C2
        jl      ?_089                                   ; 0DCC _ 7C, 0C
        mov     eax, dword [ebp+0CH]                    ; 0DCE _ 8B. 45, 0C
        mov     edx, dword [eax+14H]                    ; 0DD1 _ 8B. 50, 14
        mov     eax, dword [ebp+0CH]                    ; 0DD4 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 0DD7 _ 89. 50, 04
?_089:  nop                                             ; 0DDA _ 90
        pop     ebp                                     ; 0DDB _ 5D
        ret                                             ; 0DDC _ C3
; PrintlnMult End of function

Printf: ; Function begin
        push    ebp                                     ; 0DDD _ 55
        mov     ebp, esp                                ; 0DDE _ 89. E5
        push    ebx                                     ; 0DE0 _ 53
        sub     esp, 16                                 ; 0DE1 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 0DE4 _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0DE7 _ 0F B7. 40, 04
        cwde                                            ; 0DEB _ 98
        mov     dword [ebp-14H], eax                    ; 0DEC _ 89. 45, EC
        mov     eax, dword [ebp+0CH]                    ; 0DEF _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0DF2 _ 0F B7. 40, 06
        cwde                                            ; 0DF6 _ 98
        mov     dword [ebp-10H], eax                    ; 0DF7 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0DFA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0DFD _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 0DFF _ 89. 45, F4
        push    dword [ebp+8H]                          ; 0E02 _ FF. 75, 08
        call    strlen                                  ; 0E05 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0E0A _ 83. C4, 04
        mov     dword [ebp-8H], eax                     ; 0E0D _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0E10 _ 8B. 45, 10
        mov     ebx, dword [eax+1CH]                    ; 0E13 _ 8B. 58, 1C
        mov     eax, dword [ebp+10H]                    ; 0E16 _ 8B. 45, 10
        mov     ecx, dword [eax+8H]                     ; 0E19 _ 8B. 48, 08
        mov     eax, dword [ebp+10H]                    ; 0E1C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0E1F _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0E22 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0E25 _ 8B. 00
        push    dword [ebp-8H]                          ; 0E27 _ FF. 75, F8
        push    dword [ebp+8H]                          ; 0E2A _ FF. 75, 08
        push    ebx                                     ; 0E2D _ 53
        push    ecx                                     ; 0E2E _ 51
        push    edx                                     ; 0E2F _ 52
        push    eax                                     ; 0E30 _ 50
        push    dword [ebp-14H]                         ; 0E31 _ FF. 75, EC
        push    dword [ebp-0CH]                         ; 0E34 _ FF. 75, F4
        call    putStr                                  ; 0E37 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E3C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0E3F _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0E42 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0E44 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0E47 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 0E4A _ 0F AF. 45, F8
        add     edx, eax                                ; 0E4E _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0E50 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0E53 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0E55 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0E58 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0E5A _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0E5D _ 8B. 40, 10
        mov     ecx, dword [ebp-14H]                    ; 0E60 _ 8B. 4D, EC
        sub     ecx, eax                                ; 0E63 _ 29. C1
        mov     eax, ecx                                ; 0E65 _ 89. C8
        cmp     edx, eax                                ; 0E67 _ 39. C2
        jl      ?_090                                   ; 0E69 _ 7C, 0E
        push    dword [ebp+10H]                         ; 0E6B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0E6E _ FF. 75, 0C
        call    Println                                 ; 0E71 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0E76 _ 83. C4, 08
?_090:  nop                                             ; 0E79 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0E7A _ 8B. 5D, FC
        leave                                           ; 0E7D _ C9
        ret                                             ; 0E7E _ C3
; Printf End of function

PrintChar:; Function begin
        push    ebp                                     ; 0E7F _ 55
        mov     ebp, esp                                ; 0E80 _ 89. E5
        push    ebx                                     ; 0E82 _ 53
        sub     esp, 20                                 ; 0E83 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0E86 _ 8B. 45, 08
        mov     byte [ebp-18H], al                      ; 0E89 _ 88. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 0E8C _ 8B. 45, 0C
        movzx   eax, word [eax+4H]                      ; 0E8F _ 0F B7. 40, 04
        cwde                                            ; 0E93 _ 98
        mov     dword [ebp-10H], eax                    ; 0E94 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0E97 _ 8B. 45, 0C
        movzx   eax, word [eax+6H]                      ; 0E9A _ 0F B7. 40, 06
        cwde                                            ; 0E9E _ 98
        mov     dword [ebp-0CH], eax                    ; 0E9F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 0EA2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0EA5 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 0EA7 _ 89. 45, F8
        movzx   eax, byte [ebp-18H]                     ; 0EAA _ 0F B6. 45, E8
        movzx   ebx, al                                 ; 0EAE _ 0F B6. D8
        mov     eax, dword [ebp+10H]                    ; 0EB1 _ 8B. 45, 10
        mov     ecx, dword [eax+1CH]                    ; 0EB4 _ 8B. 48, 1C
        mov     eax, dword [ebp+10H]                    ; 0EB7 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0EBA _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 0EBD _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 0EC0 _ 8B. 00
        push    ebx                                     ; 0EC2 _ 53
        push    ecx                                     ; 0EC3 _ 51
        push    edx                                     ; 0EC4 _ 52
        push    eax                                     ; 0EC5 _ 50
        push    dword [ebp-10H]                         ; 0EC6 _ FF. 75, F0
        push    dword [ebp-8H]                          ; 0EC9 _ FF. 75, F8
        call    putChar                                 ; 0ECC _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 0ED1 _ 83. C4, 18
        mov     eax, dword [ebp+10H]                    ; 0ED4 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0ED7 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0ED9 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 0EDC _ 8B. 40, 08
        add     edx, eax                                ; 0EDF _ 01. C2
        mov     eax, dword [ebp+10H]                    ; 0EE1 _ 8B. 45, 10
        mov     dword [eax], edx                        ; 0EE4 _ 89. 10
        mov     eax, dword [ebp+10H]                    ; 0EE6 _ 8B. 45, 10
        mov     edx, dword [eax]                        ; 0EE9 _ 8B. 10
        mov     eax, dword [ebp+10H]                    ; 0EEB _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 0EEE _ 8B. 40, 10
        mov     ecx, dword [ebp-10H]                    ; 0EF1 _ 8B. 4D, F0
        sub     ecx, eax                                ; 0EF4 _ 29. C1
        mov     eax, ecx                                ; 0EF6 _ 89. C8
        cmp     edx, eax                                ; 0EF8 _ 39. C2
        jl      ?_091                                   ; 0EFA _ 7C, 0E
        push    dword [ebp+10H]                         ; 0EFC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0EFF _ FF. 75, 0C
        call    Println                                 ; 0F02 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0F07 _ 83. C4, 08
?_091:  nop                                             ; 0F0A _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F0B _ 8B. 5D, FC
        leave                                           ; 0F0E _ C9
        ret                                             ; 0F0F _ C3
; PrintChar End of function

PrintTab:; Function begin
        push    ebp                                     ; 0F10 _ 55
        mov     ebp, esp                                ; 0F11 _ 89. E5
        push    ebx                                     ; 0F13 _ 53
        sub     esp, 16                                 ; 0F14 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0F17 _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0F1A _ 0F B7. 40, 04
        cwde                                            ; 0F1E _ 98
        mov     dword [ebp-0CH], eax                    ; 0F1F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0F22 _ 8B. 45, 08
        movzx   eax, word [eax+6H]                      ; 0F25 _ 0F B7. 40, 06
        cwde                                            ; 0F29 _ 98
        mov     dword [ebp-8H], eax                     ; 0F2A _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 0F2D _ 8B. 45, 08
        movzx   eax, word [eax+4H]                      ; 0F30 _ 0F B7. 40, 04
        cwde                                            ; 0F34 _ 98
        mov     edx, dword [ebp+0CH]                    ; 0F35 _ 8B. 55, 0C
        mov     ebx, dword [edx+18H]                    ; 0F38 _ 8B. 5A, 18
        cdq                                             ; 0F3B _ 99
        idiv    ebx                                     ; 0F3C _ F7. FB
        mov     word [ebp-0EH], ax                      ; 0F3E _ 66: 89. 45, F2
        movsx   ecx, word [ebp-0EH]                     ; 0F42 _ 0F BF. 4D, F2
        mov     eax, dword [ebp+0CH]                    ; 0F46 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0F49 _ 8B. 10
        movsx   eax, word [ebp-0EH]                     ; 0F4B _ 0F BF. 45, F2
        imul    eax, dword [ebp+10H]                    ; 0F4F _ 0F AF. 45, 10
        add     eax, edx                                ; 0F53 _ 01. D0
        movsx   ebx, word [ebp-0EH]                     ; 0F55 _ 0F BF. 5D, F2
        cdq                                             ; 0F59 _ 99
        idiv    ebx                                     ; 0F5A _ F7. FB
        imul    ecx, eax                                ; 0F5C _ 0F AF. C8
        mov     edx, ecx                                ; 0F5F _ 89. CA
        mov     eax, dword [ebp+0CH]                    ; 0F61 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0F64 _ 89. 10
        mov     eax, dword [ebp+0CH]                    ; 0F66 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 0F69 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 0F6B _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 0F6E _ 8B. 40, 10
        mov     ecx, dword [ebp-0CH]                    ; 0F71 _ 8B. 4D, F4
        sub     ecx, eax                                ; 0F74 _ 29. C1
        mov     eax, ecx                                ; 0F76 _ 89. C8
        cmp     edx, eax                                ; 0F78 _ 39. C2
        jl      ?_092                                   ; 0F7A _ 7C, 0E
        push    dword [ebp+0CH]                         ; 0F7C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F7F _ FF. 75, 08
        call    Println                                 ; 0F82 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 0F87 _ 83. C4, 08
?_092:  nop                                             ; 0F8A _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F8B _ 8B. 5D, FC
        leave                                           ; 0F8E _ C9
        ret                                             ; 0F8F _ C3
; PrintTab End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0F90 _ 55
        mov     ebp, esp                                ; 0F91 _ 89. E5
        sub     esp, 8                                  ; 0F93 _ 83. EC, 08
?_093:  sub     esp, 12                                 ; 0F96 _ 83. EC, 0C
        push    100                                     ; 0F99 _ 6A, 64
        call    io_in8                                  ; 0F9B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FA0 _ 83. C4, 10
        movsx   eax, al                                 ; 0FA3 _ 0F BE. C0
        and     eax, 02H                                ; 0FA6 _ 83. E0, 02
        test    eax, eax                                ; 0FA9 _ 85. C0
        jz      ?_094                                   ; 0FAB _ 74, 02
        jmp     ?_093                                   ; 0FAD _ EB, E7

?_094:  nop                                             ; 0FAF _ 90
        nop                                             ; 0FB0 _ 90
        leave                                           ; 0FB1 _ C9
        ret                                             ; 0FB2 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0FB3 _ 55
        mov     ebp, esp                                ; 0FB4 _ 89. E5
        sub     esp, 8                                  ; 0FB6 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0FB9 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FBE _ 83. EC, 08
        push    96                                      ; 0FC1 _ 6A, 60
        push    100                                     ; 0FC3 _ 6A, 64
        call    io_out8                                 ; 0FC5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FCA _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0FCD _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FD2 _ 83. EC, 08
        push    71                                      ; 0FD5 _ 6A, 47
        push    96                                      ; 0FD7 _ 6A, 60
        call    io_out8                                 ; 0FD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FDE _ 83. C4, 10
        nop                                             ; 0FE1 _ 90
        leave                                           ; 0FE2 _ C9
        ret                                             ; 0FE3 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0FE4 _ 55
        mov     ebp, esp                                ; 0FE5 _ 89. E5
        sub     esp, 8                                  ; 0FE7 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0FEA _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0FEF _ 83. EC, 08
        push    212                                     ; 0FF2 _ 68, 000000D4
        push    100                                     ; 0FF7 _ 6A, 64
        call    io_out8                                 ; 0FF9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FFE _ 83. C4, 10
        call    wait_KBC_sendready                      ; 1001 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1006 _ 83. EC, 08
        push    244                                     ; 1009 _ 68, 000000F4
        push    96                                      ; 100E _ 6A, 60
        call    io_out8                                 ; 1010 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1015 _ 83. C4, 10
        nop                                             ; 1018 _ 90
        leave                                           ; 1019 _ C9
        ret                                             ; 101A _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 101B _ 55
        mov     ebp, esp                                ; 101C _ 89. E5
        sub     esp, 4                                  ; 101E _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1021 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1024 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1027 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 102A _ 0F B6. 40, 03
        test    al, al                                  ; 102E _ 84. C0
        jnz     ?_096                                   ; 1030 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1032 _ 80. 7D, FC, FA
        jnz     ?_095                                   ; 1036 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1038 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 103B _ C6. 40, 03, 01
?_095:  mov     eax, 0                                  ; 103F _ B8, 00000000
        jmp     ?_103                                   ; 1044 _ E9, 0000010F

?_096:  mov     eax, dword [ebp+8H]                     ; 1049 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 104C _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1050 _ 3C, 01
        jnz     ?_098                                   ; 1052 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1054 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1058 _ 25, 000000C8
        cmp     eax, 8                                  ; 105D _ 83. F8, 08
        jnz     ?_097                                   ; 1060 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1062 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1065 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1069 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 106B _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 106E _ C6. 40, 03, 02
?_097:  mov     eax, 0                                  ; 1072 _ B8, 00000000
        jmp     ?_103                                   ; 1077 _ E9, 000000DC

?_098:  mov     eax, dword [ebp+8H]                     ; 107C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 107F _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1083 _ 3C, 02
        jnz     ?_099                                   ; 1085 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1087 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 108A _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 108E _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1091 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1094 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1098 _ B8, 00000000
        jmp     ?_103                                   ; 109D _ E9, 000000B6

?_099:  mov     eax, dword [ebp+8H]                     ; 10A2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10A5 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 10A9 _ 3C, 03
        jne     ?_102                                   ; 10AB _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 10B1 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 10B4 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 10B8 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 10BB _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10BE _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 10C2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10C5 _ 0F B6. 00
        movzx   eax, al                                 ; 10C8 _ 0F B6. C0
        and     eax, 07H                                ; 10CB _ 83. E0, 07
        mov     edx, eax                                ; 10CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10D0 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 10D3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 10D6 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 10D9 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 10DD _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 10E0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10E3 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 10E6 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 10E9 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 10ED _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 10F0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10F3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 10F6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10F9 _ 0F B6. 00
        movzx   eax, al                                 ; 10FC _ 0F B6. C0
        and     eax, 10H                                ; 10FF _ 83. E0, 10
        test    eax, eax                                ; 1102 _ 85. C0
        jz      ?_100                                   ; 1104 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1106 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1109 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 110C _ 0D, FFFFFF00
        mov     edx, eax                                ; 1111 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1113 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1116 _ 89. 50, 04
?_100:  mov     eax, dword [ebp+8H]                     ; 1119 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 111C _ 0F B6. 00
        movzx   eax, al                                 ; 111F _ 0F B6. C0
        and     eax, 20H                                ; 1122 _ 83. E0, 20
        test    eax, eax                                ; 1125 _ 85. C0
        jz      ?_101                                   ; 1127 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1129 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 112C _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 112F _ 0D, FFFFFF00
        mov     edx, eax                                ; 1134 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1136 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1139 _ 89. 50, 08
?_101:  mov     eax, dword [ebp+8H]                     ; 113C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 113F _ 8B. 40, 08
        neg     eax                                     ; 1142 _ F7. D8
        mov     edx, eax                                ; 1144 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1146 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1149 _ 89. 50, 08
        mov     eax, 1                                  ; 114C _ B8, 00000001
        jmp     ?_103                                   ; 1151 _ EB, 05

?_102:  mov     eax, 4294967295                         ; 1153 _ B8, FFFFFFFF
?_103:  leave                                           ; 1158 _ C9
        ret                                             ; 1159 _ C3
; mouse_decode End of function

getKeyMakeChar:; Function begin
        push    ebp                                     ; 115A _ 55
        mov     ebp, esp                                ; 115B _ 89. E5
        sub     esp, 4                                  ; 115D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1160 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1163 _ 88. 45, FC
        cmp     byte [ebp-4H], 14                       ; 1166 _ 80. 7D, FC, 0E
        jbe     ?_104                                   ; 116A _ 76, 16
        cmp     byte [ebp-4H], 53                       ; 116C _ 80. 7D, FC, 35
        ja      ?_104                                   ; 1170 _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 1172 _ 0F B6. 45, FC
        sub     eax, 15                                 ; 1176 _ 83. E8, 0F
        movzx   eax, byte [keyintToChar.1826+eax]       ; 1179 _ 0F B6. 80, 000000E0(d)
        jmp     ?_106                                   ; 1180 _ EB, 21

?_104:  cmp     byte [ebp-4H], 1                        ; 1182 _ 80. 7D, FC, 01
        jbe     ?_105                                   ; 1186 _ 76, 16
        cmp     byte [ebp-4H], 14                       ; 1188 _ 80. 7D, FC, 0E
        ja      ?_105                                   ; 118C _ 77, 10
        movzx   eax, byte [ebp-4H]                      ; 118E _ 0F B6. 45, FC
        sub     eax, 2                                  ; 1192 _ 83. E8, 02
        movzx   eax, byte [keyintToNumChar.1827+eax]    ; 1195 _ 0F B6. 80, 00000108(d)
        jmp     ?_106                                   ; 119C _ EB, 05

?_105:  mov     eax, 0                                  ; 119E _ B8, 00000000
?_106:  leave                                           ; 11A3 _ C9
        ret                                             ; 11A4 _ C3
; getKeyMakeChar End of function

getKeyBreakChar:; Function begin
        push    ebp                                     ; 11A5 _ 55
        mov     ebp, esp                                ; 11A6 _ 89. E5
        sub     esp, 4                                  ; 11A8 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 11AB _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 11AE _ 88. 45, FC
        cmp     byte [ebp-4H], -114                     ; 11B1 _ 80. 7D, FC, 8E
        jbe     ?_107                                   ; 11B5 _ 76, 18
        cmp     byte [ebp-4H], -75                      ; 11B7 _ 80. 7D, FC, B5
        ja      ?_107                                   ; 11BB _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 11BD _ 0F B6. 45, FC
        sub     eax, 143                                ; 11C1 _ 2D, 0000008F
        movzx   eax, byte [keyintToChar.1831+eax]       ; 11C6 _ 0F B6. 80, 00000120(d)
        jmp     ?_109                                   ; 11CD _ EB, 23

?_107:  cmp     byte [ebp-4H], -127                     ; 11CF _ 80. 7D, FC, 81
        jbe     ?_108                                   ; 11D3 _ 76, 18
        cmp     byte [ebp-4H], -114                     ; 11D5 _ 80. 7D, FC, 8E
        ja      ?_108                                   ; 11D9 _ 77, 12
        movzx   eax, byte [ebp-4H]                      ; 11DB _ 0F B6. 45, FC
        sub     eax, 130                                ; 11DF _ 2D, 00000082
        movzx   eax, byte [keyintToNumChar.1832+eax]    ; 11E4 _ 0F B6. 80, 00000148(d)
        jmp     ?_109                                   ; 11EB _ EB, 05

?_108:  mov     eax, 0                                  ; 11ED _ B8, 00000000
?_109:  leave                                           ; 11F2 _ C9
        ret                                             ; 11F3 _ C3
; getKeyBreakChar End of function

eraseMouse:; Function begin
        push    ebp                                     ; 11F4 _ 55
        mov     ebp, esp                                ; 11F5 _ 89. E5
        push    ebx                                     ; 11F7 _ 53
        mov     eax, dword [ebp+10H]                    ; 11F8 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 11FB _ 8B. 40, 04
        lea     ebx, [eax+9H]                           ; 11FE _ 8D. 58, 09
        mov     eax, dword [ebp+10H]                    ; 1201 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1204 _ 8B. 00
        lea     ecx, [eax+9H]                           ; 1206 _ 8D. 48, 09
        mov     eax, dword [ebp+10H]                    ; 1209 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 120C _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 120F _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1212 _ 8B. 00
        push    ebx                                     ; 1214 _ 53
        push    ecx                                     ; 1215 _ 51
        push    edx                                     ; 1216 _ 52
        push    eax                                     ; 1217 _ 50
        push    15                                      ; 1218 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 121A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 121D _ FF. 75, 08
        call    boxfill8                                ; 1220 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1225 _ 83. C4, 1C
        nop                                             ; 1228 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1229 _ 8B. 5D, FC
        leave                                           ; 122C _ C9
        ret                                             ; 122D _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 122E _ 55
        mov     ebp, esp                                ; 122F _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1231 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1234 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 1237 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 123A _ 8B. 00
        push    cursor                                  ; 123C _ 68, 00000000(d)
        push    edx                                     ; 1241 _ 52
        push    eax                                     ; 1242 _ 50
        push    dword [ebp+0CH]                         ; 1243 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1246 _ FF. 75, 08
        call    PrintRGB                                ; 1249 _ E8, FFFFFFFC(rel)
        add     esp, 20                                 ; 124E _ 83. C4, 14
        nop                                             ; 1251 _ 90
        leave                                           ; 1252 _ C9
        ret                                             ; 1253 _ C3
; drawMouse End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 1254 _ 55
        mov     ebp, esp                                ; 1255 _ 89. E5
        mov     edx, dword [cur_pos]                    ; 1257 _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+8H]                     ; 125D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1260 _ 8B. 40, 04
        add     eax, edx                                ; 1263 _ 01. D0
        mov     dword [cur_pos], eax                    ; 1265 _ A3, 00000000(d)
        mov     edx, dword [cur_pos+4H]                 ; 126A _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 1270 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1273 _ 8B. 40, 08
        add     eax, edx                                ; 1276 _ 01. D0
        mov     dword [cur_pos+4H], eax                 ; 1278 _ A3, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 127D _ A1, 00000000(d)
        test    eax, eax                                ; 1282 _ 85. C0
        jns     ?_110                                   ; 1284 _ 79, 0A
        mov     dword [cur_pos], 0                      ; 1286 _ C7. 05, 00000000(d), 00000000
?_110:  mov     eax, dword [cur_pos+4H]                 ; 1290 _ A1, 00000004(d)
        test    eax, eax                                ; 1295 _ 85. C0
        jns     ?_111                                   ; 1297 _ 79, 0A
        mov     dword [cur_pos+4H], 0                   ; 1299 _ C7. 05, 00000004(d), 00000000
?_111:  mov     eax, dword [cur_pos]                    ; 12A3 _ A1, 00000000(d)
        cmp     eax, dword [ebp+0CH]                    ; 12A8 _ 3B. 45, 0C
        jle     ?_112                                   ; 12AB _ 7E, 08
        mov     eax, dword [ebp+0CH]                    ; 12AD _ 8B. 45, 0C
        mov     dword [cur_pos], eax                    ; 12B0 _ A3, 00000000(d)
?_112:  mov     eax, dword [cur_pos+4H]                 ; 12B5 _ A1, 00000004(d)
        cmp     eax, dword [ebp+10H]                    ; 12BA _ 3B. 45, 10
        jle     ?_113                                   ; 12BD _ 7E, 08
        mov     eax, dword [ebp+10H]                    ; 12BF _ 8B. 45, 10
        mov     dword [cur_pos+4H], eax                 ; 12C2 _ A3, 00000004(d)
?_113:  nop                                             ; 12C7 _ 90
        pop     ebp                                     ; 12C8 _ 5D
        ret                                             ; 12C9 _ C3
; computeMousePosition End of function

intHandlerFromC_Spurious:; Function begin
        push    ebp                                     ; 12CA _ 55
        mov     ebp, esp                                ; 12CB _ 89. E5
        sub     esp, 24                                 ; 12CD _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 12D0 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 12D5 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 12D8 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 12DF _ 98
        mov     dword [ebp-10H], eax                    ; 12E0 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 12E3 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 12EA _ 98
        mov     dword [ebp-0CH], eax                    ; 12EB _ 89. 45, F4
        sub     esp, 8                                  ; 12EE _ 83. EC, 08
        push    33                                      ; 12F1 _ 6A, 21
        push    32                                      ; 12F3 _ 6A, 20
        call    io_out8                                 ; 12F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12FA _ 83. C4, 10
        sub     esp, 12                                 ; 12FD _ 83. EC, 0C
        push    96                                      ; 1300 _ 6A, 60
        call    io_in8                                  ; 1302 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1307 _ 83. C4, 10
        sub     esp, 4                                  ; 130A _ 83. EC, 04
        push    txtCursor                               ; 130D _ 68, 00000000(d)
        push    bootInfo                                ; 1312 _ 68, 00000000(d)
        push    ?_125                                   ; 1317 _ 68, 00000000(d)
        call    Printf                                  ; 131C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1321 _ 83. C4, 10
        nop                                             ; 1324 _ 90
        leave                                           ; 1325 _ C9
        ret                                             ; 1326 _ C3
; intHandlerFromC_Spurious End of function

intHandlerFromC_keyBoard:; Function begin
        push    ebp                                     ; 1327 _ 55
        mov     ebp, esp                                ; 1328 _ 89. E5
        sub     esp, 24                                 ; 132A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 132D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1332 _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1335 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 133C _ 98
        mov     dword [ebp-10H], eax                    ; 133D _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 1340 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1347 _ 98
        mov     dword [ebp-0CH], eax                    ; 1348 _ 89. 45, F4
        sub     esp, 8                                  ; 134B _ 83. EC, 08
        push    33                                      ; 134E _ 6A, 21
        push    32                                      ; 1350 _ 6A, 20
        call    io_out8                                 ; 1352 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1357 _ 83. C4, 10
        sub     esp, 12                                 ; 135A _ 83. EC, 0C
        push    96                                      ; 135D _ 6A, 60
        call    io_in8                                  ; 135F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1364 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1367 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 136A _ 0F B6. 45, EB
        sub     esp, 8                                  ; 136E _ 83. EC, 08
        push    eax                                     ; 1371 _ 50
        push    KEY_FIFO8                               ; 1372 _ 68, 00000000(d)
        call    fifo8_w                                 ; 1377 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 137C _ 83. C4, 10
        nop                                             ; 137F _ 90
        leave                                           ; 1380 _ C9
        ret                                             ; 1381 _ C3
; intHandlerFromC_keyBoard End of function

intHandlerFromC_mouse:; Function begin
        push    ebp                                     ; 1382 _ 55
        mov     ebp, esp                                ; 1383 _ 89. E5
        sub     esp, 24                                 ; 1385 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1388 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 138D _ 89. 45, EC
        movzx   eax, word [bootInfo+4H]                 ; 1390 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1397 _ 98
        mov     dword [ebp-10H], eax                    ; 1398 _ 89. 45, F0
        movzx   eax, word [bootInfo+6H]                 ; 139B _ 0F B7. 05, 00000006(d)
        cwde                                            ; 13A2 _ 98
        mov     dword [ebp-0CH], eax                    ; 13A3 _ 89. 45, F4
        sub     esp, 8                                  ; 13A6 _ 83. EC, 08
        push    32                                      ; 13A9 _ 6A, 20
        push    160                                     ; 13AB _ 68, 000000A0
        call    io_out8                                 ; 13B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13B5 _ 83. C4, 10
        sub     esp, 8                                  ; 13B8 _ 83. EC, 08
        push    32                                      ; 13BB _ 6A, 20
        push    32                                      ; 13BD _ 6A, 20
        call    io_out8                                 ; 13BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13C4 _ 83. C4, 10
        sub     esp, 12                                 ; 13C7 _ 83. EC, 0C
        push    96                                      ; 13CA _ 6A, 60
        call    io_in8                                  ; 13CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13D1 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 13D4 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 13D7 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 13DB _ 83. EC, 08
        push    eax                                     ; 13DE _ 50
        push    MOUSE_FIFO8                             ; 13DF _ 68, 00000000(d)
        call    fifo8_w                                 ; 13E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13E9 _ 83. C4, 10
        nop                                             ; 13EC _ 90
        leave                                           ; 13ED _ C9
        ret                                             ; 13EE _ C3
; intHandlerFromC_mouse End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 13EF _ 55
        mov     ebp, esp                                ; 13F0 _ 89. E5
        push    dword [ebp+10H]                         ; 13F2 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 13F5 _ FF. 75, 0C
        push    ?_126                                   ; 13F8 _ 68, 00000003(d)
        call    Printf                                  ; 13FD _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1402 _ 83. C4, 0C
        push    1                                       ; 1405 _ 6A, 01
        push    dword [ebp+10H]                         ; 1407 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 140A _ FF. 75, 0C
        call    PrintTab                                ; 140D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1412 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1415 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1418 _ 8B. 00
        push    eax                                     ; 141A _ 50
        call    intToHexStr                             ; 141B _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1420 _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1423 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1426 _ FF. 75, 0C
        push    eax                                     ; 1429 _ 50
        call    Printf                                  ; 142A _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 142F _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1432 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1435 _ FF. 75, 0C
        call    Println                                 ; 1438 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 143D _ 83. C4, 08
        push    dword [ebp+10H]                         ; 1440 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1443 _ FF. 75, 0C
        push    ?_127                                   ; 1446 _ 68, 00000012(d)
        call    Printf                                  ; 144B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1450 _ 83. C4, 0C
        push    1                                       ; 1453 _ 6A, 01
        push    dword [ebp+10H]                         ; 1455 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1458 _ FF. 75, 0C
        call    PrintTab                                ; 145B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1460 _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1463 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1466 _ 8B. 40, 04
        push    eax                                     ; 1469 _ 50
        call    intToHexStr                             ; 146A _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 146F _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1472 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1475 _ FF. 75, 0C
        push    eax                                     ; 1478 _ 50
        call    Printf                                  ; 1479 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 147E _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 1481 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1484 _ FF. 75, 0C
        call    Println                                 ; 1487 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 148C _ 83. C4, 08
        push    dword [ebp+10H]                         ; 148F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1492 _ FF. 75, 0C
        push    ?_128                                   ; 1495 _ 68, 00000023(d)
        call    Printf                                  ; 149A _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 149F _ 83. C4, 0C
        push    2                                       ; 14A2 _ 6A, 02
        push    dword [ebp+10H]                         ; 14A4 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 14A7 _ FF. 75, 0C
        call    PrintTab                                ; 14AA _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 14AF _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 14B2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 14B5 _ 8B. 40, 08
        push    eax                                     ; 14B8 _ 50
        call    intToHexStr                             ; 14B9 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 14BE _ 83. C4, 04
        push    dword [ebp+10H]                         ; 14C1 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 14C4 _ FF. 75, 0C
        push    eax                                     ; 14C7 _ 50
        call    Printf                                  ; 14C8 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 14CD _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 14D0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 14D3 _ FF. 75, 0C
        call    Println                                 ; 14D6 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 14DB _ 83. C4, 08
        push    dword [ebp+10H]                         ; 14DE _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 14E1 _ FF. 75, 0C
        push    ?_129                                   ; 14E4 _ 68, 00000030(d)
        call    Printf                                  ; 14E9 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 14EE _ 83. C4, 0C
        push    1                                       ; 14F1 _ 6A, 01
        push    dword [ebp+10H]                         ; 14F3 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 14F6 _ FF. 75, 0C
        call    PrintTab                                ; 14F9 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 14FE _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1501 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1504 _ 8B. 40, 0C
        push    eax                                     ; 1507 _ 50
        call    intToHexStr                             ; 1508 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 150D _ 83. C4, 04
        push    dword [ebp+10H]                         ; 1510 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1513 _ FF. 75, 0C
        push    eax                                     ; 1516 _ 50
        call    Printf                                  ; 1517 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 151C _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 151F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1522 _ FF. 75, 0C
        call    Println                                 ; 1525 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 152A _ 83. C4, 08
        push    dword [ebp+10H]                         ; 152D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1530 _ FF. 75, 0C
        push    ?_130                                   ; 1533 _ 68, 0000003F(d)
        call    Printf                                  ; 1538 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 153D _ 83. C4, 0C
        push    3                                       ; 1540 _ 6A, 03
        push    dword [ebp+10H]                         ; 1542 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1545 _ FF. 75, 0C
        call    PrintTab                                ; 1548 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 154D _ 83. C4, 0C
        mov     eax, dword [ebp+8H]                     ; 1550 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1553 _ 8B. 40, 10
        push    eax                                     ; 1556 _ 50
        call    intToHexStr                             ; 1557 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 155C _ 83. C4, 04
        push    dword [ebp+10H]                         ; 155F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1562 _ FF. 75, 0C
        push    eax                                     ; 1565 _ 50
        call    Printf                                  ; 1566 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 156B _ 83. C4, 0C
        push    dword [ebp+10H]                         ; 156E _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1571 _ FF. 75, 0C
        call    Println                                 ; 1574 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1579 _ 83. C4, 08
        nop                                             ; 157C _ 90
        leave                                           ; 157D _ C9
        ret                                             ; 157E _ C3
; showMemoryInfo End of function

displayMem_8:; Function begin
        push    ebp                                     ; 157F _ 55
        mov     ebp, esp                                ; 1580 _ 89. E5
        sub     esp, 16                                 ; 1582 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1585 _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 158C _ EB, 3D

?_114:  mov     edx, dword [ebp-4H]                     ; 158E _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 1591 _ 8B. 45, 08
        add     eax, edx                                ; 1594 _ 01. D0
        movzx   eax, byte [eax]                         ; 1596 _ 0F B6. 00
        movzx   eax, al                                 ; 1599 _ 0F B6. C0
        push    eax                                     ; 159C _ 50
        call    charToHexStr                            ; 159D _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 15A2 _ 83. C4, 04
        push    dword [ebp+14H]                         ; 15A5 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 15A8 _ FF. 75, 10
        push    eax                                     ; 15AB _ 50
        call    Printf                                  ; 15AC _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 15B1 _ 83. C4, 0C
        push    dword [ebp+14H]                         ; 15B4 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 15B7 _ FF. 75, 10
        push    ?_131                                   ; 15BA _ 68, 00000046(d)
        call    Printf                                  ; 15BF _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 15C4 _ 83. C4, 0C
        add     dword [ebp-4H], 1                       ; 15C7 _ 83. 45, FC, 01
?_115:  mov     eax, dword [ebp-4H]                     ; 15CB _ 8B. 45, FC
        cmp     eax, dword [ebp+0CH]                    ; 15CE _ 3B. 45, 0C
        jl      ?_114                                   ; 15D1 _ 7C, BB
        nop                                             ; 15D3 _ 90
        leave                                           ; 15D4 _ C9
        ret                                             ; 15D5 _ C3
; displayMem_8 End of function

CMain:  ; Function begin
        push    ebp                                     ; 15D6 _ 55
        mov     ebp, esp                                ; 15D7 _ 89. E5
        sub     esp, 72                                 ; 15D9 _ 83. EC, 48
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 15DC _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 15E2 _ 89. 45, F4
        xor     eax, eax                                ; 15E5 _ 31. C0
        call    pict_init                               ; 15E7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 15EC _ A1, 00000000(d)
        mov     dword [ebp-38H], eax                    ; 15F1 _ 89. 45, C8
        movzx   eax, word [bootInfo+4H]                 ; 15F4 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 15FB _ 98
        mov     dword [ebp-34H], eax                    ; 15FC _ 89. 45, CC
        movzx   eax, word [bootInfo+6H]                 ; 15FF _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1606 _ 98
        mov     dword [ebp-30H], eax                    ; 1607 _ 89. 45, D0
        sub     esp, 8                                  ; 160A _ 83. EC, 08
        push    15                                      ; 160D _ 6A, 0F
        push    dword [ebp-38H]                         ; 160F _ FF. 75, C8
        call    fillAll                                 ; 1612 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1617 _ 83. C4, 10
        mov     edx, dword [cur_pos+4H]                 ; 161A _ 8B. 15, 00000004(d)
        mov     eax, dword [cur_pos]                    ; 1620 _ A1, 00000000(d)
        sub     esp, 12                                 ; 1625 _ 83. EC, 0C
        push    cursor                                  ; 1628 _ 68, 00000000(d)
        push    edx                                     ; 162D _ 52
        push    eax                                     ; 162E _ 50
        push    dword [ebp-34H]                         ; 162F _ FF. 75, CC
        push    dword [ebp-38H]                         ; 1632 _ FF. 75, C8
        call    PrintRGB                                ; 1635 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 163A _ 83. C4, 20
        call    getAddrRangeDescArray                   ; 163D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 1642 _ 89. 45, D4
        sub     esp, 12                                 ; 1645 _ 83. EC, 0C
        lea     eax, [ebp-20H]                          ; 1648 _ 8D. 45, E0
        push    eax                                     ; 164B _ 50
        call    memman_init                             ; 164C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1651 _ 83. C4, 10
        sub     esp, 4                                  ; 1654 _ 83. EC, 04
        push    654336                                  ; 1657 _ 68, 0009FC00
        push    0                                       ; 165C _ 6A, 00
        lea     eax, [ebp-20H]                          ; 165E _ 8D. 45, E0
        push    eax                                     ; 1661 _ 50
        call    memman_free                             ; 1662 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1667 _ 83. C4, 10
        call    io_sti                                  ; 166A _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 166F _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 1674 _ 83. EC, 04
        push    128                                     ; 1677 _ 68, 00000080
        push    key_buf                                 ; 167C _ 68, 00000000(d)
        push    KEY_FIFO8                               ; 1681 _ 68, 00000000(d)
        call    fifo8_init                              ; 1686 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 168B _ 83. C4, 10
        sub     esp, 4                                  ; 168E _ 83. EC, 04
        push    256                                     ; 1691 _ 68, 00000100
        push    mouse_buf                               ; 1696 _ 68, 00000000(d)
        push    MOUSE_FIFO8                             ; 169B _ 68, 00000000(d)
        call    fifo8_init                              ; 16A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16A5 _ 83. C4, 10
        call    init_keyboard                           ; 16A8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], 0                      ; 16AD _ C7. 45, C4, 00000000
?_116:  call    io_cli                                  ; 16B4 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 16B9 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 16BC _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 16C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16C6 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 16C9 _ 89. 45, D8
        sub     esp, 12                                 ; 16CC _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 16CF _ 68, 00000000(d)
        call    fifo8_isEmpty                           ; 16D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16D9 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 16DC _ 89. 45, DC
        cmp     dword [ebp-28H], 0                      ; 16DF _ 83. 7D, D8, 00
        jz      ?_117                                   ; 16E3 _ 74, 10
        cmp     dword [ebp-24H], 0                      ; 16E5 _ 83. 7D, DC, 00
        jz      ?_117                                   ; 16E9 _ 74, 0A
        call    io_stihlt                               ; 16EB _ E8, FFFFFFFC(rel)
        jmp     ?_122                                   ; 16F0 _ E9, 000001D6

?_117:  cmp     dword [ebp-28H], 0                      ; 16F5 _ 83. 7D, D8, 00
        jne     ?_121                                   ; 16F9 _ 0F 85, 0000014B
        call    io_sti                                  ; 16FF _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1704 _ 83. EC, 0C
        push    KEY_FIFO8                               ; 1707 _ 68, 00000000(d)
        call    fifo8_r                                 ; 170C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1711 _ 83. C4, 10
        mov     byte [ebp-3FH], al                      ; 1714 _ 88. 45, C1
        movzx   eax, byte [ebp-3FH]                     ; 1717 _ 0F B6. 45, C1
        sub     esp, 12                                 ; 171B _ 83. EC, 0C
        push    eax                                     ; 171E _ 50
        call    getKeyMakeChar                          ; 171F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1724 _ 83. C4, 10
        mov     byte [ebp-3EH], al                      ; 1727 _ 88. 45, C2
        cmp     byte [ebp-3FH], 28                      ; 172A _ 80. 7D, C1, 1C
        jne     ?_119                                   ; 172E _ 0F 85, 000000CB
        sub     esp, 8                                  ; 1734 _ 83. EC, 08
        push    txtCursor                               ; 1737 _ 68, 00000000(d)
        push    bootInfo                                ; 173C _ 68, 00000000(d)
        call    Println                                 ; 1741 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1746 _ 83. C4, 10
        sub     esp, 8                                  ; 1749 _ 83. EC, 08
        push    15                                      ; 174C _ 6A, 0F
        push    bootInfo                                ; 174E _ 68, 00000000(d)
        call    clear                                   ; 1753 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1758 _ 83. C4, 10
        sub     esp, 12                                 ; 175B _ 83. EC, 0C
        push    txtCursor                               ; 175E _ 68, 00000000(d)
        call    initCursor                              ; 1763 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1768 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 176B _ 8B. 45, D4
        mov     ecx, dword [eax+4H]                     ; 176E _ 8B. 48, 04
        mov     eax, dword [ebp-3CH]                    ; 1771 _ 8B. 45, C4
        lea     edx, [eax+1H]                           ; 1774 _ 8D. 50, 01
        mov     dword [ebp-3CH], edx                    ; 1777 _ 89. 55, C4
        mov     edx, eax                                ; 177A _ 89. C2
        mov     eax, edx                                ; 177C _ 89. D0
        shl     eax, 2                                  ; 177E _ C1. E0, 02
        add     eax, edx                                ; 1781 _ 01. D0
        shl     eax, 2                                  ; 1783 _ C1. E0, 02
        add     eax, ecx                                ; 1786 _ 01. C8
        sub     esp, 4                                  ; 1788 _ 83. EC, 04
        push    txtCursor                               ; 178B _ 68, 00000000(d)
        push    bootInfo                                ; 1790 _ 68, 00000000(d)
        push    eax                                     ; 1795 _ 50
        call    showMemoryInfo                          ; 1796 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 179B _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 179E _ 8B. 45, D4
        mov     eax, dword [eax]                        ; 17A1 _ 8B. 00
        cmp     eax, dword [ebp-3CH]                    ; 17A3 _ 3B. 45, C4
        jg      ?_118                                   ; 17A6 _ 7F, 07
        mov     dword [ebp-3CH], 0                      ; 17A8 _ C7. 45, C4, 00000000
?_118:  sub     esp, 4                                  ; 17AF _ 83. EC, 04
        push    txtCursor                               ; 17B2 _ 68, 00000000(d)
        push    bootInfo                                ; 17B7 _ 68, 00000000(d)
        push    ?_132                                   ; 17BC _ 68, 00000048(d)
        call    Printf                                  ; 17C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17C6 _ 83. C4, 10
        sub     esp, 12                                 ; 17C9 _ 83. EC, 0C
        lea     eax, [ebp-20H]                          ; 17CC _ 8D. 45, E0
        push    eax                                     ; 17CF _ 50
        call    memman_total                            ; 17D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17D5 _ 83. C4, 10
        sub     esp, 12                                 ; 17D8 _ 83. EC, 0C
        push    eax                                     ; 17DB _ 50
        call    intToHexStr                             ; 17DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17E1 _ 83. C4, 10
        sub     esp, 4                                  ; 17E4 _ 83. EC, 04
        push    txtCursor                               ; 17E7 _ 68, 00000000(d)
        push    bootInfo                                ; 17EC _ 68, 00000000(d)
        push    eax                                     ; 17F1 _ 50
        call    Printf                                  ; 17F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17F7 _ 83. C4, 10
        jmp     ?_116                                   ; 17FA _ E9, FFFFFEB5

?_119:  cmp     byte [ebp-3EH], 9                       ; 17FF _ 80. 7D, C2, 09
        jnz     ?_120                                   ; 1803 _ 75, 1C
        sub     esp, 4                                  ; 1805 _ 83. EC, 04
        push    1                                       ; 1808 _ 6A, 01
        push    txtCursor                               ; 180A _ 68, 00000000(d)
        push    bootInfo                                ; 180F _ 68, 00000000(d)
        call    PrintTab                                ; 1814 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1819 _ 83. C4, 10
        jmp     ?_116                                   ; 181C _ E9, FFFFFE93

?_120:  cmp     byte [ebp-3EH], 0                       ; 1821 _ 80. 7D, C2, 00
        je      ?_116                                   ; 1825 _ 0F 84, FFFFFE89
        movsx   eax, byte [ebp-3EH]                     ; 182B _ 0F BE. 45, C2
        sub     esp, 4                                  ; 182F _ 83. EC, 04
        push    txtCursor                               ; 1832 _ 68, 00000000(d)
        push    bootInfo                                ; 1837 _ 68, 00000000(d)
        push    eax                                     ; 183C _ 50
        call    PrintChar                               ; 183D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1842 _ 83. C4, 10
        jmp     ?_116                                   ; 1845 _ E9, FFFFFE6A

?_121:  cmp     dword [ebp-24H], 0                      ; 184A _ 83. 7D, DC, 00
        jne     ?_116                                   ; 184E _ 0F 85, FFFFFE60
        call    io_sti                                  ; 1854 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1859 _ 83. EC, 0C
        push    MOUSE_FIFO8                             ; 185C _ 68, 00000000(d)
        call    fifo8_r                                 ; 1861 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1866 _ 83. C4, 10
        mov     byte [ebp-3DH], al                      ; 1869 _ 88. 45, C3
        movzx   eax, byte [ebp-3DH]                     ; 186C _ 0F B6. 45, C3
        sub     esp, 8                                  ; 1870 _ 83. EC, 08
        push    eax                                     ; 1873 _ 50
        push    mdec                                    ; 1874 _ 68, 00000000(d)
        call    mouse_decode                            ; 1879 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 187E _ 83. C4, 10
        test    eax, eax                                ; 1881 _ 85. C0
        je      ?_116                                   ; 1883 _ 0F 84, FFFFFE2B
        sub     esp, 4                                  ; 1889 _ 83. EC, 04
        push    cur_pos                                 ; 188C _ 68, 00000000(d)
        push    dword [ebp-34H]                         ; 1891 _ FF. 75, CC
        push    dword [ebp-38H]                         ; 1894 _ FF. 75, C8
        call    eraseMouse                              ; 1897 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 189C _ 83. C4, 10
        sub     esp, 4                                  ; 189F _ 83. EC, 04
        push    dword [ebp-30H]                         ; 18A2 _ FF. 75, D0
        push    dword [ebp-34H]                         ; 18A5 _ FF. 75, CC
        push    mdec                                    ; 18A8 _ 68, 00000000(d)
        call    computeMousePosition                    ; 18AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18B2 _ 83. C4, 10
        sub     esp, 4                                  ; 18B5 _ 83. EC, 04
        push    cur_pos                                 ; 18B8 _ 68, 00000000(d)
        push    dword [ebp-34H]                         ; 18BD _ FF. 75, CC
        push    dword [ebp-38H]                         ; 18C0 _ FF. 75, C8
        call    drawMouse                               ; 18C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18C8 _ 83. C4, 10
?_122:  jmp     ?_116                                   ; 18CB _ E9, FFFFFDE4
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

str.1620:                                               ; byte
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C0 _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........

keyintToChar.1826:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 00E0 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 00E8 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 00F0 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 00F8 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0100 _ vbnm,./.

keyintToNumChar.1827:                                   ; byte
        db 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H       ; 0108 _ 12345678
        db 39H, 30H, 2DH, 3DH, 08H, 00H, 00H, 00H       ; 0110 _ 90-=....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........

keyintToChar.1831:                                      ; byte
        db 09H, 71H, 77H, 65H, 72H, 74H, 79H, 75H       ; 0120 _ .qwertyu
        db 69H, 6FH, 70H, 5BH, 5DH, 5CH, 00H, 61H       ; 0128 _ iop[]\.a
        db 73H, 64H, 66H, 67H, 68H, 6AH, 6BH, 6CH       ; 0130 _ sdfghjkl
        db 3BH, 27H, 0AH, 00H, 00H, 7AH, 78H, 63H       ; 0138 _ ;'...zxc
        db 76H, 62H, 6EH, 6DH, 2CH, 2EH, 2FH, 00H       ; 0140 _ vbnm,./.

keyintToNumChar.1832:                                   ; byte
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

addrArray.1554:                                         ; qword
        resb    4                                       ; 01B8

?_123:  resd    1                                       ; 01BC

MEMINFOS.1567:                                          ; byte
        resb    4000                                    ; 01C0

str.1616:                                               ; byte
        resb    1                                       ; 1160

?_124:  resb    2                                       ; 1161




?_125:                                                  ; byte
        db 73H, 70H, 00H                                ; 0000 _ sp.

?_126:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0003 _ baseAddr
        db 5FH, 4CH, 6FH, 77H, 3AH, 20H, 00H            ; 000B _ _Low: .

?_127:                                                  ; byte
        db 62H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0012 _ baseAddr
        db 5FH, 48H, 69H, 67H, 68H, 74H, 3AH, 20H       ; 001A _ _Hight: 
        db 00H                                          ; 0022 _ .

?_128:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 4CH       ; 0023 _ length_L
        db 6FH, 77H, 3AH, 20H, 00H                      ; 002B _ ow: .

?_129:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 5FH, 48H       ; 0030 _ length_H
        db 69H, 67H, 68H, 74H, 3AH, 20H, 00H            ; 0038 _ ight: .

?_130:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003F _ type: .

?_131:                                                  ; byte
        db 20H, 00H                                     ; 0046 _  .

?_132:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 3AH, 20H, 00H       ; 0048 _ Total: .


