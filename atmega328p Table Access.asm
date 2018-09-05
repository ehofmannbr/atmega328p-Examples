;
; Acessoatabelas.asm
;
; Created: 12/07/2018 14:56:04
; Author : Home
;
.include "m328pdef.inc"

;Dois pontos eh ligado quando o bit 7 da centena esta ligado
#define NUM0 0x003f;0b00111111;0x3f
#define NUM1 0x0006;0b00000110;0x06
#define NUM2 0x005B;0b01011011;0x5B
#define NUM3 0x004F;0b01001111;0x4F
#define NUM4 0x0066;0b01100110;0x66
#define NUM5 0x006B;0b01101101;0x6B
#define NUM6 0x007B;0b01111101;0x7B
#define NUM7 0x0007;0b00000111;0x07
#define NUM8 0x007F;0b01111111;0x7F
#define NUM9 0x006F;0b01101111;0x6F
#define NUMA 0x0077;0b01110111;0x77
#define NUMB 0x007C;0b01111100;0x7C
#define NUMC 0x0039;0b00111001;0x39
#define NUMD 0x005E;0b01011110;0x5E
#define NUME 0x0079;0b01111001;0x79
#define NUMF 0x0031;0b01110001;0x31
#define NOFF 0x0000;0b00000000;0x00

.org 0x00
jmp start

start:
;usar R31 e R30 (Z) pointer para a tabela hex2seg 
ldi r16, 0
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 1
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 2
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 3
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 4
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 5
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 6
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 7
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 8
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 9
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 0x0a
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 0x0b
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 0x0c
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 0x0d
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 0x0e
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
ldi r16, 0x0f
rol r16
ldi ZH, high(hex2seg<<1)
ldi ZL, low(hex2seg<<1)
add ZL, r16
lpm r17, Z
rjmp start
hex2seg: .DW NUM0, NUM1, NUM2, NUM3, NUM4, NUM5, NUM6, NUM7, NUM8, NUM9, NUMA, NUMB, NUMC, NUMD, NUME, NUMF

.dseg
dp_m: .byte 1
dp_c: .byte 1
dp_d: .byte 1
dp_u: .byte 1
temp_h: .byte 1
temp_l: .byte 1
