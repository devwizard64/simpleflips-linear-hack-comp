.align 8
dlLevelTitleError0001:
    load_texture texLevelTitleError0001, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    .dd 0xB800000000000000 ; G_ENDDL

dlLevelTitleError0002:
    load_texture texLevelTitleError0002, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    .dd 0xB800000000000000 ; G_ENDDL

dlLevelTitleError0100:
    .dd 0xFC12FE25FFFFFBFD ; G_SETCOMBINE
    load_vtxs vtxLevelTitleError0000, 12
    tri  0,  1,  2
    tri  1,  3,  2
    load_texture texLevelTitleError0100, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  4,  5,  6
    tri  5,  7,  6
    load_texture texLevelTitleError0101, G_IM_FMT_I, G_IM_SIZ_8b, 256, 16, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri  8,  9, 10
    tri  9, 11, 10
dlLevelTitleError0000:
    .dd 0xB800000000000000 ; G_ENDDL
