dlStarBg:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xFCFFFFFFFFFEF379 ; G_SETCOMBINE
    .dd 0xBB00000180008000 ; G_TEXTURE
    .dd 0xFB000000C0C0FF00 ; G_SETENVCOLOR
    load_vtxs vtxStarBgn0000, 8
.definelabel dlStarBgF2cmdA, (. + (8*6))
    load_texture texStarBgn0000, G_IM_FMT_I, G_IM_SIZ_4b, 128, 64, 0, 0, 15, 0
    tri  0,  1,  2
    tri  0,  2,  3
dlStarBgF2cmdB:
    .dd 0xF2000000001FC0FC ; G_SETTILESIZE
    tri  4,  5,  6
    tri  4,  6,  7
    .dd 0xB800000000000000 ; G_ENDDL
