; controller struct
contRawStickX  equ 0x00
contRawStickY  equ 0x02
contStickX     equ 0x04
contStickY     equ 0x08
contStickMag   equ 0x0C
contBtnDown    equ 0x10
contBtnPressed equ 0x12
contStatusPtr  equ 0x14
contPadPtr     equ 0x18

; controller defines
A_BUTTON     equ 0x8000
B_BUTTON     equ 0x4000
Z_TRIG       equ 0x2000
START_BUTTON equ 0x1000
U_JPAD       equ 0x0800
D_JPAD       equ 0x0400
L_JPAD       equ 0x0200
R_JPAD       equ 0x0100
L_TRIG       equ 0x0020
R_TRIG       equ 0x0010
U_CBUTTONS   equ 0x0008
D_CBUTTONS   equ 0x0004
L_CBUTTONS   equ 0x0002
R_CBUTTONS   equ 0x0001