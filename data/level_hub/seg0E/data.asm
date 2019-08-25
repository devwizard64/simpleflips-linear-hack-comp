lvlLevelHubEntry:
    .dw 0x1B040000
    .dw 0x16100000, gCodeDest, seg80LevelHubStart, seg80LevelHubEnd
.ifdef MIO0_ROM
    .dw 0x180C0007, seg07LevelHubStart, seg07LevelHubEnd
.else
    .dw 0x170C0007, seg07LevelHubStart, seg07LevelHubEnd
.endif
    .dw 0x1D040000

    .dw 0x220800C0, rigObjPipe
    .dw 0x220800C1, rigObjBlanket
    .dw 0x250C0001, 0x00000001, bhvObjMario

    .dw 0x1F080100, rigLevelHub01
        lvl_object   1552,   1024,   1680,   0, 225,   0, 0x001F, 0x0000, 0x1F, 0x00, bhvObjWarpSpawnSpin
        lvl_object   1552,    256,   1680,   0, 225,   0, 0x0011, 0x0000, 0x1F, 0x00, bhvObjWarpDeathFall
        lvl_object   1552,    -57,      0,   0, 315,   0, 0x0002, 0x0000, 0x1F, 0xC0, bhvObjWarpPipeDW
        lvl_object   1552,    148,      0,   0, 135,   0, 0x0002, 0x0000, 0x1F, 0x00, bhvObjWarpDeathKB
        .dw 0x26081F01, 0x011F0000
        .dw 0x2608F001, 0x01100000
        .dw 0x2608F101, 0x01110000
        .dw 0x26080201, 0x01020000

        lvl_object   -272,    -58,   1664,   0,  90,   0, 0x0001, 0x0000, 0x1F, 0x7C, bhvObjGPSignpost
        lvl_object   -128,   1730,    192,   0,   0,   0, 0x0003, 0x0000, 0x1F, 0x7C, bhvObjSignpost
        lvl_object     76,     20,      0,   0,   0, 356, 0x0000, 0x0000, 0x1F, 0xC1, bhvObjBlanket

        .dw 0x2E080000, colLevelHub01
        .dw 0x31040005
        .dw 0x30040000
        .dw 0x36080001, 0x00040000
    .dw 0x20040000
    .dw 0x1E040000

    .dw 0x2B0C0100, 0x00E10610, 0x04000690
    .dw 0x11080000, level_update
    .dw 0x11080000, lvl_hub_set_dialogue
    .dw 0x12080001, level_update

    .dw 0x1C040000
    .dw 0x04040001
    .dw 0x02040000
