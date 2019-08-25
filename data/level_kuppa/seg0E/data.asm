lvlLevelKuppaEntry:
    .dw 0x1B040000
.ifdef MIO0_ROM
    .dw 0x180C0007, seg07LevelKuppaStart, seg07LevelKuppaEnd
    .dw 0x180C000A, seg0AStarBgStart, seg0AStarBgEnd
.else
    .dw 0x170C0007, seg07LevelKuppaStart, seg07LevelKuppaEnd
    .dw 0x170C000A, seg0AStarBgStart, seg0AStarBgEnd
.endif
    .dw 0x16100000, gCodeDest, seg80StarBgStart, seg80StarBgEnd
    .dw 0x16100000, gCodeDestExt, seg80LevelKuppaStart, seg80LevelKuppaEnd
    .dw 0x180C0006, 0x00188440, 0x001B9070
    .dw 0x170C000D, 0x001B9070, 0x001B9CC0
    .dw 0x1D040000

    .dw 0x06080000, 0x150008D8
    .dw 0x2208007A, rigObjAaaaaaaaa2
    .dw 0x220800CC, rigObjAaaaaaaaa

    .dw 0x250C0001, 0x00000001, bhvObjMario

    .dw 0x1F080100, rigLevelKuppa01
        lvl_object      0,    512,   1792,   0, 180,   0, 0x0001, 0x0000, 0x1F, 0x00, bhvObjWarpSpawnSpin
        .dw 0x2608F004, 0x02010000
        .dw 0x2608F103, 0x01010000
        .dw 0x26080104, 0x01010000

        lvl_object      0,    512,  -1280,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0x64, bhvObjBowser
        lvl_object      0,   2560,      0,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0x65, bhvObjBowserMine
        ; lvl_object      0,    512,  -1024,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0x65, bhvObjBowserMine

        .dw 0x2E080000, colLevelKuppa01
        .dw 0x31040005
        .dw 0x36080001, 0x000C0000
    .dw 0x20040000
    .dw 0x1F080200, rigLevelKuppa02
        lvl_object      0,    512,      0,   0,   0,   0, 0x0001, 0x0000, 0x1F, 0x00, bhvObjWarpSpawnSpin
        .dw 0x26080104, 0x02010000

        .dw 0x2E080000, colLevelKuppa02
        .dw 0x31040005
        .dw 0x36080001, 0x00070000
    .dw 0x20040000
    .dw 0x1E040000

    .dw 0x0304001E

    .dw 0x2B0C0100, 0x00B40000, 0x02000700
    .dw 0x11080000, level_update
    .dw 0x11080000, level_kuppa_set_dialogue
@@loop:
    .dw 0x11080001, level_update
    .dw 0x11080000, level_kuppa_heal_mario
    .dw 0x03040001
    .dw 0x0C0C0200, 0, @@loop

    .dw 0x1C040000
    .dw 0x04040001
    .dw 0x02040000
