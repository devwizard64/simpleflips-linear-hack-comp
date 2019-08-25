dlLevelTitle01:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xB600000000020000 ; G_CLEARGEOMETRYMODE
    .dd 0xFCFFFFFFFFFCF279 ; G_SETCOMBINE
    .dd 0xBB00000180008000 ; G_TEXTURE
    load_vtxs vtxLevelTitle01n0000, 14
    load_texture texLevelTitle01n0000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  0,  1,  3
    tri  0,  3,  2
    load_texture texLevelTitle01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  2,  3,  5
    tri  2,  5,  4
    load_texture texLevelTitle01n0002, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  4,  5,  7
    tri  4,  7,  6
    load_texture texLevelTitle01n0003, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  6,  7,  9
    tri  6,  9,  8
    .dd 0xBA000C0200000000 ; G_SETOTHERMODE_H
    load_texture texLevelTitle01n0004, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri 10, 11, 12
    tri 10, 12, 13
    .dd 0xBA000C0200002000 ; G_SETOTHERMODE_H
    .dd 0xB800000000000000 ; G_ENDDL
