dlLevelHub01Dorrie0000:
    load_vtxs vtxLevelHub01Dorrie0000, 6
    .dd 0xB800000000000000 ; G_ENDDL
dlLevelHub01Dorrie0001:
    load_vtxs vtxLevelHub01Dorrie0001, 6
    .dd 0xB800000000000000 ; G_ENDDL
dlLevelHub01Dorrie0002:
    load_texture texLevelHub01Dorrie0000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri 0, 1, 3
    tri 0, 3, 2
    load_texture texLevelHub01Dorrie0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, G_TX_CLAMP, G_TX_CLAMP, 0, 0
    tri 2, 3, 5
    tri 2, 5, 4
    .dd 0xB800000000000000 ; G_ENDDL
