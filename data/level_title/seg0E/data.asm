lvlLevelTitleEntry:
    .dw 0x1B040000
.ifdef MIO0_ROM
    .dw 0x1A0C000A, seg80LevelTitleStart, seg80LevelTitleEnd
    .dw 0x180C0007, seg07LevelTitleStart, seg07LevelTitleEnd
.else
    .dw 0x16100000, gMio0DestBuf, seg80LevelTitleStart, seg80LevelTitleEnd
    .dw 0x170C0007, seg07LevelTitleStart, seg07LevelTitleEnd
.endif
    .dw 0x1D040000

    .dw 0x1F080100, rigLevelTitle01
    .dw 0x20040000
    .dw 0x1E040000

    .dw 0x11080000, lvl_title_fb_preamble
    .dw 0x03040003

    .dw 0x29040100
    .dw 0x11080000, lvl_title_snd_hwtest
    .dw 0x33080010, 0x00000000
    .dw 0x03040020
    .dw 0x12080000, lvl_title_halt_on_err
    .dw 0x33080110, 0x00000000
    .dw 0x03040010

    .dw 0x1C040000
    .dw 0x03040002
    .dw 0x13040001
    .dw 0x01100015, 0x002ABCA0, 0x002AC6B0, lvlBootEntry
    ; .dw 0x01100014, 0x00269EA0, 0x0026A3A0, 0x14000190
