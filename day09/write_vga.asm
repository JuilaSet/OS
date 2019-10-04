; Disassembly of file: write_vga.o
; Fri Oct  4 05:10:44 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






boxfill8:; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 20                                 ; 0003 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0006 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0009 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 000C _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 000F _ 89. 45, FC
        jmp     ?_004                                   ; 0012 _ EB, 33

?_001:  mov     eax, dword [ebp+14H]                    ; 0014 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0017 _ 89. 45, F8
        jmp     ?_003                                   ; 001A _ EB, 1F

?_002:  mov     eax, dword [ebp-4H]                     ; 001C _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 001F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0023 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0025 _ 8B. 45, F8
        add     eax, edx                                ; 0028 _ 01. D0
        mov     edx, eax                                ; 002A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 002C _ 8B. 45, 08
        add     edx, eax                                ; 002F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0031 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0035 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0037 _ 83. 45, F8, 01
?_003:  mov     eax, dword [ebp-8H]                     ; 003B _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 003E _ 3B. 45, 1C
        jle     ?_002                                   ; 0041 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0043 _ 83. 45, FC, 01
?_004:  mov     eax, dword [ebp-4H]                     ; 0047 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 004A _ 3B. 45, 20
        jle     ?_001                                   ; 004D _ 7E, C5
        nop                                             ; 004F _ 90
        leave                                           ; 0050 _ C9
        ret                                             ; 0051 _ C3
; boxfill8 End of function

getAddrOffsetAlpha:; Function begin
        push    ebp                                     ; 0052 _ 55
        mov     ebp, esp                                ; 0053 _ 89. E5
        sub     esp, 20                                 ; 0055 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0058 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 005B _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 005E _ 0F BE. 45, EC
        sub     eax, 97                                 ; 0062 _ 83. E8, 61
        shl     eax, 4                                  ; 0065 _ C1. E0, 04
        add     eax, ALPHA_FONT_LIST                    ; 0068 _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 006D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0070 _ 8B. 45, FC
        leave                                           ; 0073 _ C9
        ret                                             ; 0074 _ C3
; getAddrOffsetAlpha End of function

getAddrOffsetNumber:; Function begin
        push    ebp                                     ; 0075 _ 55
        mov     ebp, esp                                ; 0076 _ 89. E5
        sub     esp, 20                                 ; 0078 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 007B _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 007E _ 88. 45, EC
        movsx   eax, byte [ebp-14H]                     ; 0081 _ 0F BE. 45, EC
        sub     eax, 48                                 ; 0085 _ 83. E8, 30
        shl     eax, 4                                  ; 0088 _ C1. E0, 04
        add     eax, NUMBER_FONT_LIST                   ; 008B _ 05, 00000000(d)
        mov     dword [ebp-4H], eax                     ; 0090 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 0093 _ 8B. 45, FC
        leave                                           ; 0096 _ C9
        ret                                             ; 0097 _ C3
; getAddrOffsetNumber End of function

showFont8:; Function begin
        push    ebp                                     ; 0098 _ 55
        mov     ebp, esp                                ; 0099 _ 89. E5
        sub     esp, 20                                 ; 009B _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 009E _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 00A1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 00A4 _ C7. 45, FC, 00000000
        jmp     ?_014                                   ; 00AB _ E9, 0000016C

?_005:  mov     edx, dword [ebp-4H]                     ; 00B0 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 00B3 _ 8B. 45, 1C
        add     eax, edx                                ; 00B6 _ 01. D0
        movzx   eax, byte [eax]                         ; 00B8 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 00BB _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 00BE _ 80. 7D, FB, 00
        jns     ?_006                                   ; 00C2 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 00C4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00C7 _ 8B. 45, FC
        add     eax, edx                                ; 00CA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 00CC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00D0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00D2 _ 8B. 45, 10
        add     eax, edx                                ; 00D5 _ 01. D0
        mov     edx, eax                                ; 00D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 00D9 _ 8B. 45, 08
        add     edx, eax                                ; 00DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 00DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 00E2 _ 88. 02
?_006:  movsx   eax, byte [ebp-5H]                      ; 00E4 _ 0F BE. 45, FB
        and     eax, 40H                                ; 00E8 _ 83. E0, 40
        test    eax, eax                                ; 00EB _ 85. C0
        jz      ?_007                                   ; 00ED _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 00EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 00F2 _ 8B. 45, FC
        add     eax, edx                                ; 00F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 00F7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 00FB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00FD _ 8B. 45, 10
        add     eax, edx                                ; 0100 _ 01. D0
        lea     edx, [eax+1H]                           ; 0102 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0105 _ 8B. 45, 08
        add     edx, eax                                ; 0108 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 010A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 010E _ 88. 02
?_007:  movsx   eax, byte [ebp-5H]                      ; 0110 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0114 _ 83. E0, 20
        test    eax, eax                                ; 0117 _ 85. C0
        jz      ?_008                                   ; 0119 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 011B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 011E _ 8B. 45, FC
        add     eax, edx                                ; 0121 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0123 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0127 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0129 _ 8B. 45, 10
        add     eax, edx                                ; 012C _ 01. D0
        lea     edx, [eax+2H]                           ; 012E _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0131 _ 8B. 45, 08
        add     edx, eax                                ; 0134 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0136 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 013A _ 88. 02
?_008:  movsx   eax, byte [ebp-5H]                      ; 013C _ 0F BE. 45, FB
        and     eax, 10H                                ; 0140 _ 83. E0, 10
        test    eax, eax                                ; 0143 _ 85. C0
        jz      ?_009                                   ; 0145 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0147 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 014A _ 8B. 45, FC
        add     eax, edx                                ; 014D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 014F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0153 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0155 _ 8B. 45, 10
        add     eax, edx                                ; 0158 _ 01. D0
        lea     edx, [eax+3H]                           ; 015A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 015D _ 8B. 45, 08
        add     edx, eax                                ; 0160 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0162 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0166 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0168 _ 0F BE. 45, FB
        and     eax, 08H                                ; 016C _ 83. E0, 08
        test    eax, eax                                ; 016F _ 85. C0
        jz      ?_010                                   ; 0171 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0173 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0176 _ 8B. 45, FC
        add     eax, edx                                ; 0179 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 017B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 017F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0181 _ 8B. 45, 10
        add     eax, edx                                ; 0184 _ 01. D0
        lea     edx, [eax+4H]                           ; 0186 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0189 _ 8B. 45, 08
        add     edx, eax                                ; 018C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 018E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0192 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0194 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0198 _ 83. E0, 04
        test    eax, eax                                ; 019B _ 85. C0
        jz      ?_011                                   ; 019D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 019F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01A2 _ 8B. 45, FC
        add     eax, edx                                ; 01A5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01A7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01AB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01AD _ 8B. 45, 10
        add     eax, edx                                ; 01B0 _ 01. D0
        lea     edx, [eax+5H]                           ; 01B2 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 01B5 _ 8B. 45, 08
        add     edx, eax                                ; 01B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01BE _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 01C0 _ 0F BE. 45, FB
        and     eax, 02H                                ; 01C4 _ 83. E0, 02
        test    eax, eax                                ; 01C7 _ 85. C0
        jz      ?_012                                   ; 01C9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01CB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01CE _ 8B. 45, FC
        add     eax, edx                                ; 01D1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01D3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01D7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 01D9 _ 8B. 45, 10
        add     eax, edx                                ; 01DC _ 01. D0
        lea     edx, [eax+6H]                           ; 01DE _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 01E1 _ 8B. 45, 08
        add     edx, eax                                ; 01E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01EA _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 01EC _ 0F BE. 45, FB
        and     eax, 01H                                ; 01F0 _ 83. E0, 01
        test    eax, eax                                ; 01F3 _ 85. C0
        jz      ?_013                                   ; 01F5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 01F7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 01FA _ 8B. 45, FC
        add     eax, edx                                ; 01FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 01FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0203 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0205 _ 8B. 45, 10
        add     eax, edx                                ; 0208 _ 01. D0
        lea     edx, [eax+7H]                           ; 020A _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 020D _ 8B. 45, 08
        add     edx, eax                                ; 0210 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0212 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0216 _ 88. 02
?_013:  add     dword [ebp-4H], 1                       ; 0218 _ 83. 45, FC, 01
?_014:  cmp     dword [ebp-4H], 15                      ; 021C _ 83. 7D, FC, 0F
        jle     ?_005                                   ; 0220 _ 0F 8E, FFFFFE8A
        nop                                             ; 0226 _ 90
        leave                                           ; 0227 _ C9
        ret                                             ; 0228 _ C3
; showFont8 End of function

Print:  ; Function begin
        push    ebp                                     ; 0229 _ 55
        mov     ebp, esp                                ; 022A _ 89. E5
        push    ebx                                     ; 022C _ 53
        sub     esp, 16                                 ; 022D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0230 _ C7. 45, F8, 00000000
        jmp     ?_016                                   ; 0237 _ EB, 49

?_015:  mov     edx, dword [ebp-8H]                     ; 0239 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 023C _ 8B. 45, 24
        add     eax, edx                                ; 023F _ 01. D0
        movzx   eax, byte [eax]                         ; 0241 _ 0F B6. 00
        mov     byte [ebp-9H], al                       ; 0244 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0247 _ 0F BE. 45, F7
        push    eax                                     ; 024B _ 50
        call    getAddrOffsetNumber                     ; 024C _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0251 _ 83. C4, 04
        mov     ebx, eax                                ; 0254 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 0256 _ 8B. 45, 20
        movsx   eax, al                                 ; 0259 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 025C _ 8B. 55, 18
        mov     ecx, edx                                ; 025F _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0261 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 0265 _ 8B. 55, 10
        add     edx, ecx                                ; 0268 _ 01. CA
        push    ebx                                     ; 026A _ 53
        push    eax                                     ; 026B _ 50
        push    dword [ebp+14H]                         ; 026C _ FF. 75, 14
        push    edx                                     ; 026F _ 52
        push    dword [ebp+0CH]                         ; 0270 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0273 _ FF. 75, 08
        call    showFont8                               ; 0276 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 027B _ 83. C4, 18
        add     dword [ebp-8H], 1                       ; 027E _ 83. 45, F8, 01
?_016:  mov     edx, dword [ebp-8H]                     ; 0282 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 0285 _ 8B. 45, 24
        add     eax, edx                                ; 0288 _ 01. D0
        movzx   eax, byte [eax]                         ; 028A _ 0F B6. 00
        test    al, al                                  ; 028D _ 84. C0
        jnz     ?_015                                   ; 028F _ 75, A8
        nop                                             ; 0291 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0292 _ 8B. 5D, FC
        leave                                           ; 0295 _ C9
        ret                                             ; 0296 _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 0297 _ 55
        mov     ebp, esp                                ; 0298 _ 89. E5
        sub     esp, 4                                  ; 029A _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 029D _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 02A0 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 02A3 _ 80. 7D, FC, 2A
        jnz     ?_017                                   ; 02A7 _ 75, 0A
        mov     eax, 0                                  ; 02A9 _ B8, 00000000
        jmp     ?_032                                   ; 02AE _ E9, 000000D2

?_017:  cmp     byte [ebp-4H], 114                      ; 02B3 _ 80. 7D, FC, 72
        jnz     ?_018                                   ; 02B7 _ 75, 0A
        mov     eax, 1                                  ; 02B9 _ B8, 00000001
        jmp     ?_032                                   ; 02BE _ E9, 000000C2

?_018:  cmp     byte [ebp-4H], 103                      ; 02C3 _ 80. 7D, FC, 67
        jnz     ?_019                                   ; 02C7 _ 75, 0A
        mov     eax, 2                                  ; 02C9 _ B8, 00000002
        jmp     ?_032                                   ; 02CE _ E9, 000000B2

?_019:  cmp     byte [ebp-4H], 121                      ; 02D3 _ 80. 7D, FC, 79
        jnz     ?_020                                   ; 02D7 _ 75, 0A
        mov     eax, 3                                  ; 02D9 _ B8, 00000003
        jmp     ?_032                                   ; 02DE _ E9, 000000A2

?_020:  cmp     byte [ebp-4H], 98                       ; 02E3 _ 80. 7D, FC, 62
        jnz     ?_021                                   ; 02E7 _ 75, 0A
        mov     eax, 4                                  ; 02E9 _ B8, 00000004
        jmp     ?_032                                   ; 02EE _ E9, 00000092

?_021:  cmp     byte [ebp-4H], 112                      ; 02F3 _ 80. 7D, FC, 70
        jnz     ?_022                                   ; 02F7 _ 75, 0A
        mov     eax, 5                                  ; 02F9 _ B8, 00000005
        jmp     ?_032                                   ; 02FE _ E9, 00000082

?_022:  cmp     byte [ebp-4H], 108                      ; 0303 _ 80. 7D, FC, 6C
        jnz     ?_023                                   ; 0307 _ 75, 07
        mov     eax, 6                                  ; 0309 _ B8, 00000006
        jmp     ?_032                                   ; 030E _ EB, 75

?_023:  cmp     byte [ebp-4H], 119                      ; 0310 _ 80. 7D, FC, 77
        jnz     ?_024                                   ; 0314 _ 75, 07
        mov     eax, 7                                  ; 0316 _ B8, 00000007
        jmp     ?_032                                   ; 031B _ EB, 68

?_024:  cmp     byte [ebp-4H], 45                       ; 031D _ 80. 7D, FC, 2D
        jnz     ?_025                                   ; 0321 _ 75, 07
        mov     eax, 8                                  ; 0323 _ B8, 00000008
        jmp     ?_032                                   ; 0328 _ EB, 5B

?_025:  cmp     byte [ebp-4H], 82                       ; 032A _ 80. 7D, FC, 52
        jnz     ?_026                                   ; 032E _ 75, 07
        mov     eax, 9                                  ; 0330 _ B8, 00000009
        jmp     ?_032                                   ; 0335 _ EB, 4E

?_026:  cmp     byte [ebp-4H], 71                       ; 0337 _ 80. 7D, FC, 47
        jnz     ?_027                                   ; 033B _ 75, 07
        mov     eax, 10                                 ; 033D _ B8, 0000000A
        jmp     ?_032                                   ; 0342 _ EB, 41

?_027:  cmp     byte [ebp-4H], 89                       ; 0344 _ 80. 7D, FC, 59
        jnz     ?_028                                   ; 0348 _ 75, 07
        mov     eax, 11                                 ; 034A _ B8, 0000000B
        jmp     ?_032                                   ; 034F _ EB, 34

?_028:  cmp     byte [ebp-4H], 66                       ; 0351 _ 80. 7D, FC, 42
        jnz     ?_029                                   ; 0355 _ 75, 07
        mov     eax, 12                                 ; 0357 _ B8, 0000000C
        jmp     ?_032                                   ; 035C _ EB, 27

?_029:  cmp     byte [ebp-4H], 80                       ; 035E _ 80. 7D, FC, 50
        jnz     ?_030                                   ; 0362 _ 75, 07
        mov     eax, 13                                 ; 0364 _ B8, 0000000D
        jmp     ?_032                                   ; 0369 _ EB, 1A

?_030:  cmp     byte [ebp-4H], 115                      ; 036B _ 80. 7D, FC, 73
        jnz     ?_031                                   ; 036F _ 75, 07
        mov     eax, 14                                 ; 0371 _ B8, 0000000E
        jmp     ?_032                                   ; 0376 _ EB, 0D

?_031:  cmp     byte [ebp-4H], 61                       ; 0378 _ 80. 7D, FC, 3D
        jnz     ?_032                                   ; 037C _ 75, 07
        mov     eax, 15                                 ; 037E _ B8, 0000000F
        jmp     ?_032                                   ; 0383 _ EB, 00

?_032:  leave                                           ; 0385 _ C9
        ret                                             ; 0386 _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 0387 _ 55
        mov     ebp, esp                                ; 0388 _ 89. E5
        push    ebx                                     ; 038A _ 53
        sub     esp, 16                                 ; 038B _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 038E _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0395 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 039C _ C7. 45, F8, 00000000
?_033:  mov     edx, dword [ebp-8H]                     ; 03A3 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 03A6 _ 8B. 45, 18
        add     eax, edx                                ; 03A9 _ 01. D0
        movzx   eax, byte [eax]                         ; 03AB _ 0F B6. 00
        test    al, al                                  ; 03AE _ 84. C0
        jnz     ?_034                                   ; 03B0 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 03B2 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 03B5 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 03B8 _ 8B. 45, 18
        add     eax, edx                                ; 03BB _ 01. D0
        movzx   eax, byte [eax]                         ; 03BD _ 0F B6. 00
        test    al, al                                  ; 03C0 _ 84. C0
        jz      ?_037                                   ; 03C2 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 03C4 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 03C8 _ C7. 45, F4, 00000000
        jmp     ?_036                                   ; 03CF _ EB, 4C

?_034:  mov     edx, dword [ebp-8H]                     ; 03D1 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 03D4 _ 8B. 45, 18
        add     eax, edx                                ; 03D7 _ 01. D0
        movzx   eax, byte [eax]                         ; 03D9 _ 0F B6. 00
        cmp     al, 46                                  ; 03DC _ 3C, 2E
        jz      ?_035                                   ; 03DE _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 03E0 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 03E3 _ 8B. 45, F0
        add     eax, edx                                ; 03E6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 03E8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03EC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 03EE _ 8B. 45, 10
        add     edx, eax                                ; 03F1 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 03F3 _ 8B. 45, F4
        add     eax, edx                                ; 03F6 _ 01. D0
        mov     edx, eax                                ; 03F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 03FA _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 03FD _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0400 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0403 _ 8B. 45, 18
        add     eax, edx                                ; 0406 _ 01. D0
        movzx   eax, byte [eax]                         ; 0408 _ 0F B6. 00
        movsx   eax, al                                 ; 040B _ 0F BE. C0
        push    eax                                     ; 040E _ 50
        call    charToPictColor                         ; 040F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0414 _ 83. C4, 04
        mov     byte [ebx], al                          ; 0417 _ 88. 03
?_035:  add     dword [ebp-0CH], 1                      ; 0419 _ 83. 45, F4, 01
?_036:  add     dword [ebp-8H], 1                       ; 041D _ 83. 45, F8, 01
        jmp     ?_033                                   ; 0421 _ EB, 80

?_037:  nop                                             ; 0423 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0424 _ 8B. 5D, FC
        leave                                           ; 0427 _ C9
        ret                                             ; 0428 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0429 _ 55
        mov     ebp, esp                                ; 042A _ 89. E5
        sub     esp, 16                                 ; 042C _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 042F _ C7. 45, FC, 00000000
        jmp     ?_039                                   ; 0436 _ EB, 11

?_038:  mov     edx, dword [ebp-4H]                     ; 0438 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 043B _ 8B. 45, 08
        add     eax, edx                                ; 043E _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0440 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 0443 _ 88. 10
        add     dword [ebp-4H], 1                       ; 0445 _ 83. 45, FC, 01
?_039:  cmp     dword [ebp-4H], 65534                   ; 0449 _ 81. 7D, FC, 0000FFFE
        jle     ?_038                                   ; 0450 _ 7E, E6
        nop                                             ; 0452 _ 90
        leave                                           ; 0453 _ C9
        ret                                             ; 0454 _ C3
; fillAll End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0455 _ 55
        mov     ebp, esp                                ; 0456 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0458 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 045B _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0461 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0464 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 046A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 046D _ 66: C7. 40, 06, 00C8
        nop                                             ; 0473 _ 90
        pop     ebp                                     ; 0474 _ 5D
        ret                                             ; 0475 _ C3
; initBootInfo End of function

set_pict:; Function begin
        push    ebp                                     ; 0476 _ 55
        mov     ebp, esp                                ; 0477 _ 89. E5
        sub     esp, 24                                 ; 0479 _ 83. EC, 18
        call    io_load_eflags                          ; 047C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0481 _ 89. 45, F4
        call    io_cli                                  ; 0484 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0489 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 048C _ FF. 75, 14
        push    968                                     ; 048F _ 68, 000003C8
        call    io_out8                                 ; 0494 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0499 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 049C _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 049F _ 89. 45, F0
        jmp     ?_041                                   ; 04A2 _ EB, 65

?_040:  mov     eax, dword [ebp+10H]                    ; 04A4 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04A7 _ 0F B6. 00
        shr     al, 2                                   ; 04AA _ C0. E8, 02
        movzx   eax, al                                 ; 04AD _ 0F B6. C0
        sub     esp, 8                                  ; 04B0 _ 83. EC, 08
        push    eax                                     ; 04B3 _ 50
        push    969                                     ; 04B4 _ 68, 000003C9
        call    io_out8                                 ; 04B9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04BE _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 04C1 _ 8B. 45, 10
        add     eax, 1                                  ; 04C4 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 04C7 _ 0F B6. 00
        shr     al, 2                                   ; 04CA _ C0. E8, 02
        movzx   eax, al                                 ; 04CD _ 0F B6. C0
        sub     esp, 8                                  ; 04D0 _ 83. EC, 08
        push    eax                                     ; 04D3 _ 50
        push    969                                     ; 04D4 _ 68, 000003C9
        call    io_out8                                 ; 04D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DE _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 04E1 _ 8B. 45, 10
        add     eax, 2                                  ; 04E4 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 04E7 _ 0F B6. 00
        shr     al, 2                                   ; 04EA _ C0. E8, 02
        movzx   eax, al                                 ; 04ED _ 0F B6. C0
        sub     esp, 8                                  ; 04F0 _ 83. EC, 08
        push    eax                                     ; 04F3 _ 50
        push    969                                     ; 04F4 _ 68, 000003C9
        call    io_out8                                 ; 04F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04FE _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0501 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0505 _ 83. 45, F0, 01
?_041:  mov     eax, dword [ebp-10H]                    ; 0509 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 050C _ 3B. 45, 0C
        jl      ?_040                                   ; 050F _ 7C, 93
        sub     esp, 12                                 ; 0511 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0514 _ FF. 75, F4
        call    io_store_eflags                         ; 0517 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 051C _ 83. C4, 10
        nop                                             ; 051F _ 90
        leave                                           ; 0520 _ C9
        ret                                             ; 0521 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 0522 _ 55
        mov     ebp, esp                                ; 0523 _ 89. E5
        sub     esp, 8                                  ; 0525 _ 83. EC, 08
        push    0                                       ; 0528 _ 6A, 00
        push    pict1                                   ; 052A _ 68, 00000000(d)
        push    16                                      ; 052F _ 6A, 10
        push    0                                       ; 0531 _ 6A, 00
        call    set_pict                                ; 0533 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0538 _ 83. C4, 10
        nop                                             ; 053B _ 90
        leave                                           ; 053C _ C9
        ret                                             ; 053D _ C3
; pict_init End of function

CMain:  ; Function begin
        push    ebp                                     ; 053E _ 55
        mov     ebp, esp                                ; 053F _ 89. E5
        sub     esp, 40                                 ; 0541 _ 83. EC, 28
        call    pict_init                               ; 0544 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 655360                 ; 0549 _ C7. 45, F0, 000A0000
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-0CH], 320                     ; 0550 _ 66: C7. 45, F4, 0140
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-0AH], 200                     ; 0556 _ 66: C7. 45, F6, 00C8
        mov     eax, dword [ebp-10H]                    ; 055C _ 8B. 45, F0
        mov     dword [ebp-24H], eax                    ; 055F _ 89. 45, DC
        movzx   eax, word [ebp-0CH]                     ; 0562 _ 0F B7. 45, F4
        cwde                                            ; 0566 _ 98
        mov     dword [ebp-20H], eax                    ; 0567 _ 89. 45, E0
        movzx   eax, word [ebp-0AH]                     ; 056A _ 0F B7. 45, F6
        cwde                                            ; 056E _ 98
        mov     dword [ebp-1CH], eax                    ; 056F _ 89. 45, E4
        mov     dword [ebp-18H], 8                      ; 0572 _ C7. 45, E8, 00000008
        mov     dword [ebp-14H], 16                     ; 0579 _ C7. 45, EC, 00000010
        sub     esp, 8                                  ; 0580 _ 83. EC, 08
        push    15                                      ; 0583 _ 6A, 0F
        push    dword [ebp-24H]                         ; 0585 _ FF. 75, DC
        call    fillAll                                 ; 0588 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 058D _ 83. C4, 10
        sub     esp, 12                                 ; 0590 _ 83. EC, 0C
        push    cursor                                  ; 0593 _ 68, 00000000(d)
        push    20                                      ; 0598 _ 6A, 14
        push    20                                      ; 059A _ 6A, 14
        push    dword [ebp-20H]                         ; 059C _ FF. 75, E0
        push    dword [ebp-24H]                         ; 059F _ FF. 75, DC
        call    PrintRGB                                ; 05A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05A7 _ 83. C4, 20
?_042:  call    io_hlt                                  ; 05AA _ E8, FFFFFFFC(rel)
        jmp     ?_042                                   ; 05AF _ EB, F9
; CMain End of function



pict1:                                                  ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........

cursor:                                                 ; byte
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0040 _ *.......
        db 00H, 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0048 _ .**.....
        db 2EH, 00H, 2AH, 77H, 2AH, 2EH, 2EH, 2EH       ; 0050 _ ..*w*...
        db 2EH, 2EH, 00H, 2AH, 77H, 77H, 2AH, 2EH       ; 0058 _ ...*ww*.
        db 2EH, 2EH, 2EH, 00H, 2AH, 77H, 77H, 77H       ; 0060 _ ....*www
        db 2AH, 2EH, 2EH, 2EH, 00H, 2AH, 77H, 2AH       ; 0068 _ *....*w*
        db 2AH, 2AH, 2AH, 2EH, 2EH, 00H, 2AH, 2AH       ; 0070 _ ***...**
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 00H, 2AH       ; 0078 _ **.....*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 00H       ; 0080 _ ........
        db 00H, 00H                                     ; 0088 _ ..




