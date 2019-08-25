.align 4
bhvObjBlanket:
    .dw 0x00080000
    .dw 0x11010001
    .dw 0x101B0000 ; 0x00F4 / oBlanketTimer
    .dw 0x101C0000 ; 0x00F8 / oBlanketUpdate
    .dw 0x08000000
        .dw 0x0C000000, bhv_blanket_loop
    .dw 0x09000000
