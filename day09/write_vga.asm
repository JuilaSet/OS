; Disassembly of file: main.o
; Sat Oct 26 06:55:30 2019
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
        jmp     ?_020                                   ; 0237 _ E9, 000000A6

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
        jmp     ?_019                                   ; 028D _ EB, 4F

?_016:  cmp     byte [ebp-9H], 122                      ; 028F _ 80. 7D, F7, 7A
        jg      ?_017                                   ; 0293 _ 7F, 06
        cmp     byte [ebp-9H], 96                       ; 0295 _ 80. 7D, F7, 60
        jg      ?_018                                   ; 0299 _ 7F, 0C
?_017:  cmp     byte [ebp-9H], 90                       ; 029B _ 80. 7D, F7, 5A
        jg      ?_019                                   ; 029F _ 7F, 3D
        cmp     byte [ebp-9H], 64                       ; 02A1 _ 80. 7D, F7, 40
        jle     ?_019                                   ; 02A5 _ 7E, 37
?_018:  movsx   eax, byte [ebp-9H]                      ; 02A7 _ 0F BE. 45, F7
        push    eax                                     ; 02AB _ 50
        call    getAddrOffsetAlpha                      ; 02AC _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 02B1 _ 83. C4, 04
        mov     ebx, eax                                ; 02B4 _ 89. C3
        mov     eax, dword [ebp+20H]                    ; 02B6 _ 8B. 45, 20
        movsx   eax, al                                 ; 02B9 _ 0F BE. C0
        mov     edx, dword [ebp+18H]                    ; 02BC _ 8B. 55, 18
        mov     ecx, edx                                ; 02BF _ 89. D1
        imul    ecx, dword [ebp-8H]                     ; 02C1 _ 0F AF. 4D, F8
        mov     edx, dword [ebp+10H]                    ; 02C5 _ 8B. 55, 10
        add     edx, ecx                                ; 02C8 _ 01. CA
        push    ebx                                     ; 02CA _ 53
        push    eax                                     ; 02CB _ 50
        push    dword [ebp+14H]                         ; 02CC _ FF. 75, 14
        push    edx                                     ; 02CF _ 52
        push    dword [ebp+0CH]                         ; 02D0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 02D3 _ FF. 75, 08
        call    showFont8                               ; 02D6 _ E8, FFFFFFFC(rel)
        add     esp, 24                                 ; 02DB _ 83. C4, 18
?_019:  add     dword [ebp-8H], 1                       ; 02DE _ 83. 45, F8, 01
?_020:  mov     edx, dword [ebp-8H]                     ; 02E2 _ 8B. 55, F8
        mov     eax, dword [ebp+24H]                    ; 02E5 _ 8B. 45, 24
        add     eax, edx                                ; 02E8 _ 01. D0
        movzx   eax, byte [eax]                         ; 02EA _ 0F B6. 00
        test    al, al                                  ; 02ED _ 84. C0
        jne     ?_015                                   ; 02EF _ 0F 85, FFFFFF47
        nop                                             ; 02F5 _ 90
        mov     ebx, dword [ebp-4H]                     ; 02F6 _ 8B. 5D, FC
        leave                                           ; 02F9 _ C9
        ret                                             ; 02FA _ C3
; Print End of function

charToPictColor:; Function begin
        push    ebp                                     ; 02FB _ 55
        mov     ebp, esp                                ; 02FC _ 89. E5
        sub     esp, 4                                  ; 02FE _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0301 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0304 _ 88. 45, FC
        cmp     byte [ebp-4H], 42                       ; 0307 _ 80. 7D, FC, 2A
        jnz     ?_021                                   ; 030B _ 75, 0A
        mov     eax, 0                                  ; 030D _ B8, 00000000
        jmp     ?_036                                   ; 0312 _ E9, 000000D2

?_021:  cmp     byte [ebp-4H], 114                      ; 0317 _ 80. 7D, FC, 72
        jnz     ?_022                                   ; 031B _ 75, 0A
        mov     eax, 1                                  ; 031D _ B8, 00000001
        jmp     ?_036                                   ; 0322 _ E9, 000000C2

?_022:  cmp     byte [ebp-4H], 103                      ; 0327 _ 80. 7D, FC, 67
        jnz     ?_023                                   ; 032B _ 75, 0A
        mov     eax, 2                                  ; 032D _ B8, 00000002
        jmp     ?_036                                   ; 0332 _ E9, 000000B2

?_023:  cmp     byte [ebp-4H], 121                      ; 0337 _ 80. 7D, FC, 79
        jnz     ?_024                                   ; 033B _ 75, 0A
        mov     eax, 3                                  ; 033D _ B8, 00000003
        jmp     ?_036                                   ; 0342 _ E9, 000000A2

?_024:  cmp     byte [ebp-4H], 98                       ; 0347 _ 80. 7D, FC, 62
        jnz     ?_025                                   ; 034B _ 75, 0A
        mov     eax, 4                                  ; 034D _ B8, 00000004
        jmp     ?_036                                   ; 0352 _ E9, 00000092

?_025:  cmp     byte [ebp-4H], 112                      ; 0357 _ 80. 7D, FC, 70
        jnz     ?_026                                   ; 035B _ 75, 0A
        mov     eax, 5                                  ; 035D _ B8, 00000005
        jmp     ?_036                                   ; 0362 _ E9, 00000082

?_026:  cmp     byte [ebp-4H], 108                      ; 0367 _ 80. 7D, FC, 6C
        jnz     ?_027                                   ; 036B _ 75, 07
        mov     eax, 6                                  ; 036D _ B8, 00000006
        jmp     ?_036                                   ; 0372 _ EB, 75

?_027:  cmp     byte [ebp-4H], 119                      ; 0374 _ 80. 7D, FC, 77
        jnz     ?_028                                   ; 0378 _ 75, 07
        mov     eax, 7                                  ; 037A _ B8, 00000007
        jmp     ?_036                                   ; 037F _ EB, 68

?_028:  cmp     byte [ebp-4H], 45                       ; 0381 _ 80. 7D, FC, 2D
        jnz     ?_029                                   ; 0385 _ 75, 07
        mov     eax, 8                                  ; 0387 _ B8, 00000008
        jmp     ?_036                                   ; 038C _ EB, 5B

?_029:  cmp     byte [ebp-4H], 82                       ; 038E _ 80. 7D, FC, 52
        jnz     ?_030                                   ; 0392 _ 75, 07
        mov     eax, 9                                  ; 0394 _ B8, 00000009
        jmp     ?_036                                   ; 0399 _ EB, 4E

?_030:  cmp     byte [ebp-4H], 71                       ; 039B _ 80. 7D, FC, 47
        jnz     ?_031                                   ; 039F _ 75, 07
        mov     eax, 10                                 ; 03A1 _ B8, 0000000A
        jmp     ?_036                                   ; 03A6 _ EB, 41

?_031:  cmp     byte [ebp-4H], 89                       ; 03A8 _ 80. 7D, FC, 59
        jnz     ?_032                                   ; 03AC _ 75, 07
        mov     eax, 11                                 ; 03AE _ B8, 0000000B
        jmp     ?_036                                   ; 03B3 _ EB, 34

?_032:  cmp     byte [ebp-4H], 66                       ; 03B5 _ 80. 7D, FC, 42
        jnz     ?_033                                   ; 03B9 _ 75, 07
        mov     eax, 12                                 ; 03BB _ B8, 0000000C
        jmp     ?_036                                   ; 03C0 _ EB, 27

?_033:  cmp     byte [ebp-4H], 80                       ; 03C2 _ 80. 7D, FC, 50
        jnz     ?_034                                   ; 03C6 _ 75, 07
        mov     eax, 13                                 ; 03C8 _ B8, 0000000D
        jmp     ?_036                                   ; 03CD _ EB, 1A

?_034:  cmp     byte [ebp-4H], 115                      ; 03CF _ 80. 7D, FC, 73
        jnz     ?_035                                   ; 03D3 _ 75, 07
        mov     eax, 14                                 ; 03D5 _ B8, 0000000E
        jmp     ?_036                                   ; 03DA _ EB, 0D

?_035:  cmp     byte [ebp-4H], 61                       ; 03DC _ 80. 7D, FC, 3D
        jnz     ?_036                                   ; 03E0 _ 75, 07
        mov     eax, 15                                 ; 03E2 _ B8, 0000000F
        jmp     ?_036                                   ; 03E7 _ EB, 00

?_036:  leave                                           ; 03E9 _ C9
        ret                                             ; 03EA _ C3
; charToPictColor End of function

PrintRGB:; Function begin
        push    ebp                                     ; 03EB _ 55
        mov     ebp, esp                                ; 03EC _ 89. E5
        push    ebx                                     ; 03EE _ 53
        sub     esp, 16                                 ; 03EF _ 83. EC, 10
        mov     dword [ebp-10H], 0                      ; 03F2 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 03F9 _ C7. 45, F4, 00000000
        mov     dword [ebp-8H], 0                       ; 0400 _ C7. 45, F8, 00000000
?_037:  mov     edx, dword [ebp-8H]                     ; 0407 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 040A _ 8B. 45, 18
        add     eax, edx                                ; 040D _ 01. D0
        movzx   eax, byte [eax]                         ; 040F _ 0F B6. 00
        test    al, al                                  ; 0412 _ 84. C0
        jnz     ?_038                                   ; 0414 _ 75, 1F
        mov     eax, dword [ebp-8H]                     ; 0416 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 0419 _ 8D. 50, 01
        mov     eax, dword [ebp+18H]                    ; 041C _ 8B. 45, 18
        add     eax, edx                                ; 041F _ 01. D0
        movzx   eax, byte [eax]                         ; 0421 _ 0F B6. 00
        test    al, al                                  ; 0424 _ 84. C0
        jz      ?_041                                   ; 0426 _ 74, 5F
        add     dword [ebp-10H], 1                      ; 0428 _ 83. 45, F0, 01
        mov     dword [ebp-0CH], 0                      ; 042C _ C7. 45, F4, 00000000
        jmp     ?_040                                   ; 0433 _ EB, 4C

?_038:  mov     edx, dword [ebp-8H]                     ; 0435 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0438 _ 8B. 45, 18
        add     eax, edx                                ; 043B _ 01. D0
        movzx   eax, byte [eax]                         ; 043D _ 0F B6. 00
        cmp     al, 46                                  ; 0440 _ 3C, 2E
        jz      ?_039                                   ; 0442 _ 74, 39
        mov     edx, dword [ebp+14H]                    ; 0444 _ 8B. 55, 14
        mov     eax, dword [ebp-10H]                    ; 0447 _ 8B. 45, F0
        add     eax, edx                                ; 044A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 044C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0450 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0452 _ 8B. 45, 10
        add     edx, eax                                ; 0455 _ 01. C2
        mov     eax, dword [ebp-0CH]                    ; 0457 _ 8B. 45, F4
        add     eax, edx                                ; 045A _ 01. D0
        mov     edx, eax                                ; 045C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 045E _ 8B. 45, 08
        lea     ebx, [edx+eax]                          ; 0461 _ 8D. 1C 02
        mov     edx, dword [ebp-8H]                     ; 0464 _ 8B. 55, F8
        mov     eax, dword [ebp+18H]                    ; 0467 _ 8B. 45, 18
        add     eax, edx                                ; 046A _ 01. D0
        movzx   eax, byte [eax]                         ; 046C _ 0F B6. 00
        movsx   eax, al                                 ; 046F _ 0F BE. C0
        push    eax                                     ; 0472 _ 50
        call    charToPictColor                         ; 0473 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0478 _ 83. C4, 04
        mov     byte [ebx], al                          ; 047B _ 88. 03
?_039:  add     dword [ebp-0CH], 1                      ; 047D _ 83. 45, F4, 01
?_040:  add     dword [ebp-8H], 1                       ; 0481 _ 83. 45, F8, 01
        jmp     ?_037                                   ; 0485 _ EB, 80

?_041:  nop                                             ; 0487 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0488 _ 8B. 5D, FC
        leave                                           ; 048B _ C9
        ret                                             ; 048C _ C3
; PrintRGB End of function

fillAll:; Function begin
        push    ebp                                     ; 048D _ 55
        mov     ebp, esp                                ; 048E _ 89. E5
        sub     esp, 16                                 ; 0490 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0493 _ C7. 45, FC, 00000000
        jmp     ?_043                                   ; 049A _ EB, 11

?_042:  mov     edx, dword [ebp-4H]                     ; 049C _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 049F _ 8B. 45, 08
        add     eax, edx                                ; 04A2 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 04A4 _ 8B. 55, 0C
        mov     byte [eax], dl                          ; 04A7 _ 88. 10
        add     dword [ebp-4H], 1                       ; 04A9 _ 83. 45, FC, 01
?_043:  cmp     dword [ebp-4H], 65534                   ; 04AD _ 81. 7D, FC, 0000FFFE
        jle     ?_042                                   ; 04B4 _ 7E, E6
        nop                                             ; 04B6 _ 90
        leave                                           ; 04B7 _ C9
        ret                                             ; 04B8 _ C3
; fillAll End of function

initBootInfo:; Function begin
        push    ebp                                     ; 04B9 _ 55
        mov     ebp, esp                                ; 04BA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04BC _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 04BF _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 04C5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 04C8 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 04CE _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 04D1 _ 66: C7. 40, 06, 00C8
        nop                                             ; 04D7 _ 90
        pop     ebp                                     ; 04D8 _ 5D
        ret                                             ; 04D9 _ C3
; initBootInfo End of function

set_pict:; Function begin
        push    ebp                                     ; 04DA _ 55
        mov     ebp, esp                                ; 04DB _ 89. E5
        sub     esp, 24                                 ; 04DD _ 83. EC, 18
        call    io_load_eflags                          ; 04E0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 04E5 _ 89. 45, F4
        call    io_cli                                  ; 04E8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 04ED _ 83. EC, 08
        push    dword [ebp+14H]                         ; 04F0 _ FF. 75, 14
        push    968                                     ; 04F3 _ 68, 000003C8
        call    io_out8                                 ; 04F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04FD _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0500 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0503 _ 89. 45, F0
        jmp     ?_045                                   ; 0506 _ EB, 65

?_044:  mov     eax, dword [ebp+10H]                    ; 0508 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 050B _ 0F B6. 00
        shr     al, 2                                   ; 050E _ C0. E8, 02
        movzx   eax, al                                 ; 0511 _ 0F B6. C0
        sub     esp, 8                                  ; 0514 _ 83. EC, 08
        push    eax                                     ; 0517 _ 50
        push    969                                     ; 0518 _ 68, 000003C9
        call    io_out8                                 ; 051D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0522 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0525 _ 8B. 45, 10
        add     eax, 1                                  ; 0528 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 052B _ 0F B6. 00
        shr     al, 2                                   ; 052E _ C0. E8, 02
        movzx   eax, al                                 ; 0531 _ 0F B6. C0
        sub     esp, 8                                  ; 0534 _ 83. EC, 08
        push    eax                                     ; 0537 _ 50
        push    969                                     ; 0538 _ 68, 000003C9
        call    io_out8                                 ; 053D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0542 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0545 _ 8B. 45, 10
        add     eax, 2                                  ; 0548 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 054B _ 0F B6. 00
        shr     al, 2                                   ; 054E _ C0. E8, 02
        movzx   eax, al                                 ; 0551 _ 0F B6. C0
        sub     esp, 8                                  ; 0554 _ 83. EC, 08
        push    eax                                     ; 0557 _ 50
        push    969                                     ; 0558 _ 68, 000003C9
        call    io_out8                                 ; 055D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0562 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0565 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0569 _ 83. 45, F0, 01
?_045:  mov     eax, dword [ebp-10H]                    ; 056D _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0570 _ 3B. 45, 0C
        jl      ?_044                                   ; 0573 _ 7C, 93
        sub     esp, 12                                 ; 0575 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0578 _ FF. 75, F4
        call    io_store_eflags                         ; 057B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0580 _ 83. C4, 10
        nop                                             ; 0583 _ 90
        leave                                           ; 0584 _ C9
        ret                                             ; 0585 _ C3
; set_pict End of function

pict_init:; Function begin
        push    ebp                                     ; 0586 _ 55
        mov     ebp, esp                                ; 0587 _ 89. E5
        sub     esp, 8                                  ; 0589 _ 83. EC, 08
        push    0                                       ; 058C _ 6A, 00
        push    pict1                                   ; 058E _ 68, 00000000(d)
        push    16                                      ; 0593 _ 6A, 10
        push    0                                       ; 0595 _ 6A, 00
        call    set_pict                                ; 0597 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 059C _ 83. C4, 10
        nop                                             ; 059F _ 90
        leave                                           ; 05A0 _ C9
        ret                                             ; 05A1 _ C3
; pict_init End of function

CMain:  ; Function begin
        push    ebp                                     ; 05A2 _ 55
        mov     ebp, esp                                ; 05A3 _ 89. E5
        sub     esp, 40                                 ; 05A5 _ 83. EC, 28
        call    pict_init                               ; 05A8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 655360                 ; 05AD _ C7. 45, F0, 000A0000
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-0CH], 320                     ; 05B4 _ 66: C7. 45, F4, 0140
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-0AH], 200                     ; 05BA _ 66: C7. 45, F6, 00C8
        mov     eax, dword [ebp-10H]                    ; 05C0 _ 8B. 45, F0
        mov     dword [ebp-24H], eax                    ; 05C3 _ 89. 45, DC
        movzx   eax, word [ebp-0CH]                     ; 05C6 _ 0F B7. 45, F4
        cwde                                            ; 05CA _ 98
        mov     dword [ebp-20H], eax                    ; 05CB _ 89. 45, E0
        movzx   eax, word [ebp-0AH]                     ; 05CE _ 0F B7. 45, F6
        cwde                                            ; 05D2 _ 98
        mov     dword [ebp-1CH], eax                    ; 05D3 _ 89. 45, E4
        mov     dword [ebp-18H], 8                      ; 05D6 _ C7. 45, E8, 00000008
        mov     dword [ebp-14H], 16                     ; 05DD _ C7. 45, EC, 00000010
        sub     esp, 8                                  ; 05E4 _ 83. EC, 08
        push    15                                      ; 05E7 _ 6A, 0F
        push    dword [ebp-24H]                         ; 05E9 _ FF. 75, DC
        call    fillAll                                 ; 05EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05F1 _ 83. C4, 10
        sub     esp, 12                                 ; 05F4 _ 83. EC, 0C
        push    cursor                                  ; 05F7 _ 68, 00000000(d)
        push    20                                      ; 05FC _ 6A, 14
        push    20                                      ; 05FE _ 6A, 14
        push    dword [ebp-20H]                         ; 0600 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0603 _ FF. 75, DC
        call    PrintRGB                                ; 0606 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 060B _ 83. C4, 20
        push    ?_047                                   ; 060E _ 68, 00000000(d)
        push    7                                       ; 0613 _ 6A, 07
        push    dword [ebp-14H]                         ; 0615 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0618 _ FF. 75, E8
        push    20                                      ; 061B _ 6A, 14
        push    20                                      ; 061D _ 6A, 14
        push    dword [ebp-20H]                         ; 061F _ FF. 75, E0
        push    dword [ebp-24H]                         ; 0622 _ FF. 75, DC
        call    Print                                   ; 0625 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 062A _ 83. C4, 20
?_046:  call    io_hlt                                  ; 062D _ E8, FFFFFFFC(rel)
        jmp     ?_046                                   ; 0632 _ EB, F9
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







?_047:                                                  ; byte
        db 30H, 31H, 32H, 33H, 34H, 61H, 62H, 63H       ; 0000 _ 01234abc
        db 64H, 65H, 66H, 00H                           ; 0008 _ def.


