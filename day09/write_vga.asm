; Disassembly of file: write_vga.o
; Fri Oct 18 03:33:54 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386

















extern io_hlt                                           ; near
extern io_store_eflags                                  ; near
extern io_out8                                          ; near
extern io_cli                                           ; near
extern io_load_eflags                                   ; near
extern NUMBER_FONT_LIST                                 ; byte
extern ALPHA_FONT_LIST                                  ; byte




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
        jmp     ?_018                                   ; 0237 _ E9, 0000009A

?_015:  mov     edx, dword [ebp-8H]                     ; 023C _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 023F _ 8B. 45, 24
        add     eax, edx                                ; 0242 _ 01. D0
        movzx   eax, byte [eax]                         ; 0244 _ 0F B6. 00
        mov     byte [ebp-9H], al                       ; 0247 _ 88. 45, F7
        cmp     byte [ebp-9H], 57                       ; 024A _ 80. 7D, F7, 39
        jg      ?_016                                   ; 024E _ 7F, 3F
        cmp     byte [ebp-9H], 47                       ; 0250 _ 80. 7D, F7, 2F
        jle     ?_016                                   ; 0254 _ 7E, 39
        movsx   eax, byte [ebp-9H]                      ; 0256 _ 0F BE. 45, F7
        push    eax                                     ; 025A _ 50
        call    getAddrOffsetNumber                     ; 025B _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0260 _ 83. C4, 04
        mov     ebx, eax                                ; 0263 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 0265 _ 8B. 45, 20
        movsx   eax, al                                 ; 0268 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 026B _ 8B. 55, 18
        mov     ecx, edx                                ; 026E _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 0270 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 0274 _ 8B. 55, 10
        add     edx, ecx                                ; 0277 _ 01. CA
        push    ebx                                     ; 0279 _ 53
        push    eax                                     ; 027A _ 50
        push    dword [ebp+14H]                         ; 027B _ FF. 75, 14
        push    edx                                     ; 027E _ 52
        push    dword [ebp+0CH]                         ; 027F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0282 _ FF. 75, 08
        call    showFont8                               ; 0285 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 028A _ 83. C4, 18
        jmp     ?_017                                   ; 028D _ EB, 43

?_016:  cmp     byte [ebp-9H], 122                      ; 028F _ 80. 7D, F7, 7A
        jg      ?_017                                   ; 0293 _ 7F, 3D
        cmp     byte [ebp-9H], 96                       ; 0295 _ 80. 7D, F7, 60
        jle     ?_017                                   ; 0299 _ 7E, 37
        movsx   eax, byte [ebp-9H]                      ; 029B _ 0F BE. 45, F7
        push    eax                                     ; 029F _ 50
        call    getAddrOffsetAlpha                      ; 02A0 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 02A5 _ 83. C4, 04
        mov     ebx, eax                                ; 02A8 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 02AA _ 8B. 45, 20
        movsx   eax, al                                 ; 02AD _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 02B0 _ 8B. 55, 18
        mov     ecx, edx                                ; 02B3 _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 02B5 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 02B9 _ 8B. 55, 10
        add     edx, ecx                                ; 02BC _ 01. CA
        push    ebx                                     ; 02BE _ 53
        push    eax                                     ; 02BF _ 50
        push    dword [ebp+14H]                         ; 02C0 _ FF. 75, 14
        push    edx                                     ; 02C3 _ 52
        push    dword [ebp+0CH]                         ; 02C4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 02C7 _ FF. 75, 08
        call    showFont8                               ; 02CA _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 02CF _ 83. C4, 18
?_017:  add     dword [ebp-8H], 1                       ; 02D2 _ 83. 45, F8, 01
?_018:  mov     edx, dword [ebp-8H]                     ; 02D6 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 02D9 _ 8B. 45, 24
        add     eax, edx                                ; 02DC _ 01. D0
        movzx   eax, byte [eax]                         ; 02DE _ 0F B6. 00
        test    al, al                                  ; 02E1 _ 84. C0
        jne     ?_015                                   ; 02E3 _ 0F 85, FFFFFF53
        nop                                             ; 02E9 _ 90
        mov     ebx, dword [ebp-4H]                     ; 02EA _ 8B. 5D, FC
        leave                                           ; 02ED _ C9
        ret                                             ; 02EE _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 02EF _ 55
        mov     ebp, esp                                ; 02F0 _ 89. E5
        sub     esp, 4                                  ; 02F2 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 02F5 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 02F8 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 02FB _ 80. 7D, FC, 2A
        jnz     ?_019                                   ; 02FF _ 75, 0A
        mov     eax, 0                                  ; 0301 _ B8, 00000000
        jmp     ?_034                                   ; 0306 _ E9, 000000D2

?_019:  cmp     byte [ebp-4H], 114                      ; 030B _ 80. 7D, FC, 72
        jnz     ?_020                                   ; 030F _ 75, 0A
        mov     eax, 1                                  ; 0311 _ B8, 00000001
        jmp     ?_034                                   ; 0316 _ E9, 000000C2

?_020:  cmp     byte [ebp-4H], 103                      ; 031B _ 80. 7D, FC, 67
        jnz     ?_021                                   ; 031F _ 75, 0A
        mov     eax, 2                                  ; 0321 _ B8, 00000002
        jmp     ?_034                                   ; 0326 _ E9, 000000B2

?_021:  cmp     byte [ebp-4H], 121                      ; 032B _ 80. 7D, FC, 79
        jnz     ?_022                                   ; 032F _ 75, 0A
        mov     eax, 3                                  ; 0331 _ B8, 00000003
        jmp     ?_034                                   ; 0336 _ E9, 000000A2

?_022:  cmp     byte [ebp-4H], 98                       ; 033B _ 80. 7D, FC, 62
        jnz     ?_023                                   ; 033F _ 75, 0A
        mov     eax, 4                                  ; 0341 _ B8, 00000004
        jmp     ?_034                                   ; 0346 _ E9, 00000092

?_023:  cmp     byte [ebp-4H], 112                      ; 034B _ 80. 7D, FC, 70
        jnz     ?_024                                   ; 034F _ 75, 0A
        mov     eax, 5                                  ; 0351 _ B8, 00000005
        jmp     ?_034                                   ; 0356 _ E9, 00000082

?_024:  cmp     byte [ebp-4H], 108                      ; 035B _ 80. 7D, FC, 6C
        jnz     ?_025                                   ; 035F _ 75, 07
        mov     eax, 6                                  ; 0361 _ B8, 00000006
        jmp     ?_034                                   ; 0366 _ EB, 75

?_025:  cmp     byte [ebp-4H], 119                      ; 0368 _ 80. 7D, FC, 77
        jnz     ?_026                                   ; 036C _ 75, 07
        mov     eax, 7                                  ; 036E _ B8, 00000007
        jmp     ?_034                                   ; 0373 _ EB, 68

?_026:  cmp     byte [ebp-4H], 45                       ; 0375 _ 80. 7D, FC, 2D
        jnz     ?_027                                   ; 0379 _ 75, 07
        mov     eax, 8                                  ; 037B _ B8, 00000008
        jmp     ?_034                                   ; 0380 _ EB, 5B

?_027:  cmp     byte [ebp-4H], 82                       ; 0382 _ 80. 7D, FC, 52
        jnz     ?_028                                   ; 0386 _ 75, 07
        mov     eax, 9                                  ; 0388 _ B8, 00000009
        jmp     ?_034                                   ; 038D _ EB, 4E

?_028:  cmp     byte [ebp-4H], 71                       ; 038F _ 80. 7D, FC, 47
        jnz     ?_029                                   ; 0393 _ 75, 07
        mov     eax, 10                                 ; 0395 _ B8, 0000000A
        jmp     ?_034                                   ; 039A _ EB, 41

?_029:  cmp     byte [ebp-4H], 89                       ; 039C _ 80. 7D, FC, 59
        jnz     ?_030                                   ; 03A0 _ 75, 07
        mov     eax, 11                                 ; 03A2 _ B8, 0000000B
        jmp     ?_034                                   ; 03A7 _ EB, 34

?_030:  cmp     byte [ebp-4H], 66                       ; 03A9 _ 80. 7D, FC, 42
        jnz     ?_031                                   ; 03AD _ 75, 07
        mov     eax, 12                                 ; 03AF _ B8, 0000000C
        jmp     ?_034                                   ; 03B4 _ EB, 27

?_031:  cmp     byte [ebp-4H], 80                       ; 03B6 _ 80. 7D, FC, 50
        jnz     ?_032                                   ; 03BA _ 75, 07
        mov     eax, 13                                 ; 03BC _ B8, 0000000D
        jmp     ?_034                                   ; 03C1 _ EB, 1A

?_032:  cmp     byte [ebp-4H], 115                      ; 03C3 _ 80. 7D, FC, 73
        jnz     ?_033                                   ; 03C7 _ 75, 07
        mov     eax, 14                                 ; 03C9 _ B8, 0000000E
        jmp     ?_034                                   ; 03CE _ EB, 0D

?_033:  cmp     byte [ebp-4H], 61                       ; 03D0 _ 80. 7D, FC, 3D
        jnz     ?_034                                   ; 03D4 _ 75, 07
        mov     eax, 15                                 ; 03D6 _ B8, 0000000F
        jmp     ?_034                                   ; 03DB _ EB, 00

?_034:  leave                                           ; 03DD _ C9
        ret                                             ; 03DE _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 03DF _ 55
        mov     ebp, esp                                ; 03E0 _ 89. E5
        push    ebx                                     ; 03E2 _ 53
        sub     esp, 16                                 ; 03E3 _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 03E6 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 03ED _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 03F4 _ C7. 45, F8, 00000000
?_035:  mov     edx, dword [ebp-8H]                     ; 03FB _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 03FE _ 8B. 45, 18
        add     eax, edx                                ; 0401 _ 01. D0
        movzx   eax, byte [eax]                         ; 0403 _ 0F B6. 00
        test    al, al                                  ; 0406 _ 84. C0
        jnz     ?_036                                   ; 0408 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 040A _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 040D _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 0410 _ 8B. 45, 18
        add     eax, edx                                ; 0413 _ 01. D0
        movzx   eax, byte [eax]                         ; 0415 _ 0F B6. 00
        test    al, al                                  ; 0418 _ 84. C0
        jz      ?_039                                   ; 041A _ 74, 5F
        add     dword [ebp-10H], 1                      ; 041C _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 0420 _ C7. 45, F4, 00000000
        jmp     ?_038                                   ; 0427 _ EB, 4C

?_036:  mov     edx, dword [ebp-8H]                     ; 0429 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 042C _ 8B. 45, 18
        add     eax, edx                                ; 042F _ 01. D0
        movzx   eax, byte [eax]                         ; 0431 _ 0F B6. 00
        cmp     al, 46                                  ; 0434 _ 3C, 2E
        jz      ?_037                                   ; 0436 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0438 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 043B _ 8B. 45, F0
        add     eax, edx                                ; 043E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0440 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0444 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0446 _ 8B. 45, 10
        add     edx, eax                                ; 0449 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 044B _ 8B. 45, F4
        add     eax, edx                                ; 044E _ 01. D0
        mov     edx, eax                                ; 0450 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0452 _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0455 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0458 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 045B _ 8B. 45, 18
        add     eax, edx                                ; 045E _ 01. D0
        movzx   eax, byte [eax]                         ; 0460 _ 0F B6. 00
        movsx   eax, al                                 ; 0463 _ 0F BE. C0
        push    eax                                     ; 0466 _ 50
        call    charToPictColor                         ; 0467 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 046C _ 83. C4, 04
        mov     byte [ebx], al                          ; 046F _ 88. 03
?_037:  add     dword [ebp-0CH], 1                      ; 0471 _ 83. 45, F4, 01
?_038:  add     dword [ebp-8H], 1                       ; 0475 _ 83. 45, F8, 01
        jmp     ?_035                                   ; 0479 _ EB, 80

?_039:  nop                                             ; 047B _ 90
        mov     ebx, dword [ebp-4H]                     ; 047C _ 8B. 5D, FC
        leave                                           ; 047F _ C9
        ret                                             ; 0480 _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 0481 _ 55
        mov     ebp, esp                                ; 0482 _ 89. E5
        sub     esp, 16                                 ; 0484 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0487 _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 048E _ EB, 11

?_040:  mov     edx, dword [ebp-4H]                     ; 0490 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 0493 _ 8B. 45, 08
        add     eax, edx                                ; 0496 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 0498 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 049B _ 88. 10
        add     dword [ebp-4H], 1                       ; 049D _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 65534                   ; 04A1 _ 81. 7D, FC, 0000FFFE
        jle     ?_040                                   ; 04A8 _ 7E, E6
        nop                                             ; 04AA _ 90
        leave                                           ; 04AB _ C9
        ret                                             ; 04AC _ C3
; fillAll End of function

initBootInfo:; Function begin
        push    ebp                                     ; 04AD _ 55
        mov     ebp, esp                                ; 04AE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04B0 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 04B3 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 04B9 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 04BC _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 04C2 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 04C5 _ 66: C7. 40, 06, 00C8
        nop                                             ; 04CB _ 90
        pop     ebp                                     ; 04CC _ 5D
        ret                                             ; 04CD _ C3
; initBootInfo End of function

set_pict:; Function begin
        push    ebp                                     ; 04CE _ 55
        mov     ebp, esp                                ; 04CF _ 89. E5
        sub     esp, 24                                 ; 04D1 _ 83. EC, 18
        call    io_load_eflags                          ; 04D4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 04D9 _ 89. 45, F4
        call    io_cli                                  ; 04DC _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 04E1 _ 83. EC, 08
        push    dword [ebp+14H]                         ; 04E4 _ FF. 75, 14
        push    968                                     ; 04E7 _ 68, 000003C8
        call    io_out8                                 ; 04EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F1 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 04F4 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 04F7 _ 89. 45, F0
        jmp     ?_043                                   ; 04FA _ EB, 65

?_042:  mov     eax, dword [ebp+10H]                    ; 04FC _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04FF _ 0F B6. 00
        shr     al, 2                                   ; 0502 _ C0. E8, 02
        movzx   eax, al                                 ; 0505 _ 0F B6. C0
        sub     esp, 8                                  ; 0508 _ 83. EC, 08
        push    eax                                     ; 050B _ 50
        push    969                                     ; 050C _ 68, 000003C9
        call    io_out8                                 ; 0511 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0516 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0519 _ 8B. 45, 10
        add     eax, 1                                  ; 051C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 051F _ 0F B6. 00
        shr     al, 2                                   ; 0522 _ C0. E8, 02
        movzx   eax, al                                 ; 0525 _ 0F B6. C0
        sub     esp, 8                                  ; 0528 _ 83. EC, 08
        push    eax                                     ; 052B _ 50
        push    969                                     ; 052C _ 68, 000003C9
        call    io_out8                                 ; 0531 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0536 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0539 _ 8B. 45, 10
        add     eax, 2                                  ; 053C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 053F _ 0F B6. 00
        shr     al, 2                                   ; 0542 _ C0. E8, 02
        movzx   eax, al                                 ; 0545 _ 0F B6. C0
        sub     esp, 8                                  ; 0548 _ 83. EC, 08
        push    eax                                     ; 054B _ 50
        push    969                                     ; 054C _ 68, 000003C9
        call    io_out8                                 ; 0551 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0556 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0559 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 055D _ 83. 45, F0, 01
?_043:  mov     eax, dword [ebp-10H]                    ; 0561 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0564 _ 3B. 45, 0C
        jl      ?_042                                   ; 0567 _ 7C, 93
        sub     esp, 12                                 ; 0569 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 056C _ FF. 75, F4
        call    io_store_eflags                         ; 056F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0574 _ 83. C4, 10
        nop                                             ; 0577 _ 90
        leave                                           ; 0578 _ C9
        ret                                             ; 0579 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 057A _ 55
        mov     ebp, esp                                ; 057B _ 89. E5
        sub     esp, 8                                  ; 057D _ 83. EC, 08
        push    0                                       ; 0580 _ 6A, 00
        push    pict1                                   ; 0582 _ 68, 00000000(d)
        push    16                                      ; 0587 _ 6A, 10
        push    0                                       ; 0589 _ 6A, 00
        call    set_pict                                ; 058B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0590 _ 83. C4, 10
        nop                                             ; 0593 _ 90
        leave                                           ; 0594 _ C9
        ret                                             ; 0595 _ C3
; pict_init End of function

CMain:  ; Function begin
        push    ebp                                     ; 0596 _ 55
        mov     ebp, esp                                ; 0597 _ 89. E5
        sub     esp, 40                                 ; 0599 _ 83. EC, 28
        call    pict_init                               ; 059C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 655360                 ; 05A1 _ C7. 45, F0, 000A0000
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-0CH], 320                     ; 05A8 _ 66: C7. 45, F4, 0140
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-0AH], 200                     ; 05AE _ 66: C7. 45, F6, 00C8
        mov     eax, dword [ebp-10H]                    ; 05B4 _ 8B. 45, F0
        mov     dword [ebp-24H], eax                    ; 05B7 _ 89. 45, DC
        movzx   eax, word [ebp-0CH]                     ; 05BA _ 0F B7. 45, F4
        cwde                                            ; 05BE _ 98
        mov     dword [ebp-20H], eax                    ; 05BF _ 89. 45, E0
        movzx   eax, word [ebp-0AH]                     ; 05C2 _ 0F B7. 45, F6
        cwde                                            ; 05C6 _ 98
        mov     dword [ebp-1CH], eax                    ; 05C7 _ 89. 45, E4
        mov     dword [ebp-18H], 8                      ; 05CA _ C7. 45, E8, 00000008
        mov     dword [ebp-14H], 16                     ; 05D1 _ C7. 45, EC, 00000010
        sub     esp, 8                                  ; 05D8 _ 83. EC, 08
        push    15                                      ; 05DB _ 6A, 0F
        push    dword [ebp-24H]                         ; 05DD _ FF. 75, DC
        call    fillAll                                 ; 05E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05E5 _ 83. C4, 10
        push    ?_045                                   ; 05E8 _ 68, 00000000(d)
        push    7                                       ; 05ED _ 6A, 07
        push    dword [ebp-14H]                         ; 05EF _ FF. 75, EC
        push    dword [ebp-18H]                         ; 05F2 _ FF. 75, E8
        push    20                                      ; 05F5 _ 6A, 14
        push    20                                      ; 05F7 _ 6A, 14
        push    dword [ebp-20H]                         ; 05F9 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 05FC _ FF. 75, DC
        call    Print                                   ; 05FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0604 _ 83. C4, 20
        sub     esp, 12                                 ; 0607 _ 83. EC, 0C
        push    cursor                                  ; 060A _ 68, 00000000(d)
        push    20                                      ; 060F _ 6A, 14
        push    20                                      ; 0611 _ 6A, 14
        push    dword [ebp-20H]                         ; 0613 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0616 _ FF. 75, DC
        call    PrintRGB                                ; 0619 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 061E _ 83. C4, 20
?_044:  call    io_hlt                                  ; 0621 _ E8, FFFFFFFC(rel)
        jmp     ?_044                                   ; 0626 _ EB, F9
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







?_045:                                                  ; byte
        db 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H       ; 0000 _ 01234567
        db 38H, 39H, 00H                                ; 0008 _ 89.


