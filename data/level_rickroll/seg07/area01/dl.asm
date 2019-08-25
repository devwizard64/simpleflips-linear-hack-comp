dlLevelRickroll01:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xB600000000020000 ; G_CLEARGEOMETRYMODE
    .dd 0xFCFFFFFFFFFCF279 ; G_SETCOMBINE
    .dd 0xBB00000180008000 ; G_TEXTURE
    load_vtxs vtxLevelRickroll01n0000, 14
    load_texture texLevelRickroll01n0000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  2,  3,  1
    tri  2,  1,  0
    load_texture texLevelRickroll01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  4,  5,  3
    tri  4,  3,  2
    load_texture texLevelRickroll01n0002, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  6,  7,  5
    tri  6,  5,  4
    load_texture texLevelRickroll01n0003, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  8,  9,  7
    tri  8,  7,  6
    load_texture texLevelRickroll01n0004, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri 10, 11,  9
    tri 10,  9,  8
    load_texture texLevelRickroll01n0005, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri 12, 13, 11
    tri 12, 11, 10
    .dd 0xB800000000000000 ; G_ENDDL
