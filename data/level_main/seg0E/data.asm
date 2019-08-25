lvlLevelMainEntry:
    .dw 0x1B040000
    .dw 0x180C0006, 0x001D8310, 0x001E4BF0
    .dw 0x170C000D, 0x001E4BF0, 0x001E51F0
    .dw 0x180C0008, 0x001F2200, 0x002008D0
    .dw 0x170C000F, 0x002008D0, 0x00201410
.ifdef MIO0_ROM
    .dw 0x180C0007, seg07LevelMainStart, seg07LevelMainEnd
    .dw 0x180C000A, seg0ALevelMainStart, seg0ALevelMainEnd
.else
    .dw 0x170C0007, seg07LevelMainStart, seg07LevelMainEnd
    .dw 0x170C000A, seg0ALevelMainStart, seg0ALevelMainEnd
.endif
    .dw 0x16100000, gCodeDest, seg80LevelMainStart, seg80LevelMainEnd
    .dw 0x1D040000

    .dw 0x06080000, lvlLoadRigCommon0
    .dw 0x220800DD, rigObjToad
    .dw 0x220800DE, rigObjWarpPipe

    .dw 0x250C0001, 0x00000001, bhvObjMario

    .dw 0x1F080100, rigLevelMain01
        lvl_object  -7200,    256,      0,   0,  90,   0, 0x0001, 0x0000, 0x1F, 0x00, bhvObjWarpSpawnSpin
        lvl_object   1792,   2320,  -2944,   0,   0,   0, 0x0005, 0x0000, 0x1F, 0xDE, bhvObjWarpPipeLevelSel
        .dw 0x2608F004, 0x01010000
        .dw 0x2608F101, 0x01020000
        .dw 0x2608F303, 0x01010000
        .dw 0x26080103, 0x01010000

        lvl_object  -1168,   3664,  -2240,   0, 180,   0, 0x0000, 0x0000, 0x1F, 0xDD, bhvObjToad
        lvl_object  -4256,    724,   -160,   0,   0,   0, 0x0001, 0x0000, 0x1F, 0x7C, bhvObjSignpost
        lvl_object     32,   2320,   -416,   0,   0,   0, 0x0002, 0x0000, 0x1F, 0x7C, bhvObjSignpost
        lvl_object  -5312,   8784,  -6160,   0,   0,   0, 0x0003, 0x0000, 0x1F, 0x7C, bhvObjSignpost

        lvl_object    512,   2320,  -1392,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xDF, bhvObjChuckya
        lvl_object  -4512,   9168,  -3104,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjGoombaGrp
        lvl_object  -4512,   9168,  -3104,   0,  60,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjGoombaGrp
        lvl_object  -5248,   5456,  -4544,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xBC, bhvObjBobomb

        lvl_object  -5456,    724,      0,   0,  90,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object  -5392,    724,      0,   0,  90,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object  -4624,    724,      0,   0,  90,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object  -4688,    724,      0,   0,  90,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object    512,   2320,      0,   0,   0,   0, 0x0002, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object   -928,   2384,  -3136,   0,   0,   0, 0x0001, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object  -2464,   4688,  -2304,   0, 270,   0, 0x0004, 0x0000, 0x1F, 0x00, bhvObjCoinGrp
        lvl_object  -4512,   9168,  -6496,   0,   0,   0, 0x0003, 0x0000, 0x1F, 0x89, bhvObjExBox
        lvl_object   3008,   9168,  -1728,   0,   0,   0, 0x000A, 0x0000, 0x1F, 0x89, bhvObjExBox

        lvl_object  -4992,   8784,  -6496,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0x00, bhvObjRedCoinMgr
        lvl_object  -4262,   1236,      0,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object   1216,   2448,    640,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object  -1168,   4304,  -2240,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object  -5376,   5104,  -3968,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object  -4672,   5968,  -4736,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object  -3712,   6992,  -4736,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object  -5488,   8848,  -5280,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin
        lvl_object   1920,   8830,  -7296,   0,   0,   0, 0x0000, 0x0000, 0x1F, 0xD7, bhvObjRedCoin

        .dw 0x2E080000, colLevelMain01
        .dw 0x31040005
        .dw 0x36080001, 0x000A0000
    .dw 0x20040000
    .dw 0x1E040000

    .dw 0x2B0C0100, 0x005AE3E0, 0x00000000
    .dw 0x11080000, level_update
    .dw 0x11080000, level_main_set_dialogue
    .dw 0x12080001, level_update

    .dw 0x1C040000
    .dw 0x04040001
    .dw 0x02040000
