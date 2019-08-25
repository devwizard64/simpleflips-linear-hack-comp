lvlLevelRickrollEntry:
    .dw 0x1B040000
    .dw 0x16100000, gCodeDestExt, seg80LevelRickrollStart, seg80LevelRickrollEnd
.ifdef MIO0_ROM
    .dw 0x180C0007, seg07LevelRickrollStart, seg07LevelRickrollEnd
.else
    .dw 0x170C0007, seg07LevelRickrollStart, seg07LevelRickrollEnd
.endif
    .dw 0x1D040000

    .dw 0x1F080100, rigLevelRickroll01
    .dw 0x20040000
    .dw 0x1E040000

    .dw 0x29040100
    .dw 0x33080001, 0x00000000
    .dw 0x0304001E
    .dw 0x34040000
    .dw 0x11080000, lvl_rickroll_play_sound
    .dw 0x12080000, lvl_rickroll_dma_texture
    .dw 0x0304002D

    .dw 0x1C040000
    .dw 0x03040002
    .dw 0x13040003
    .dw 0x3C040003
    .dw 0x0110000E, seg0ELevelMainStart, seg0ELevelMainEnd, lvlLevelMainEntry
