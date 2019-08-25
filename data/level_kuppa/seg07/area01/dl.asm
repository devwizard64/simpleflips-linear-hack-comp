dlLevelKuppa01:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xBB000001FFFFFFFF ; G_TEXTURE
    .dd 0xFC121824FF33FFFF ; G_SETCOMBINE
    .dw 0x03860010, lightLevelKuppa01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelKuppa01Amb0000 ; G_MOVEMEM
    load_texture texLevelKuppa01n0000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelKuppa01n0000, 8
    tri  0,  1,  2
    tri  3,  4,  2
    tri  2,  5,  6
    tri  6,  0,  2
    tri  1,  7,  3
    tri  3,  2,  1
    .dw 0x03860010, lightLevelKuppa01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelKuppa01Amb0000 ; G_MOVEMEM
    load_texture texLevelKuppa01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelKuppa01n0000, 14
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelKuppa01n0001, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelKuppa01n0002, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelKuppa01n0003, 12
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    .dw 0x03860010, lightLevelKuppa01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelKuppa01Amb0000 ; G_MOVEMEM
    load_texture texLevelKuppa01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelKuppa01n0003, 15
    tri 12, 13, 14
    load_vtxs vtxLevelKuppa01n0004, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelKuppa01n0005, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelKuppa01n0006, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    .dw 0x03860010, lightLevelKuppa01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelKuppa01Amb0000 ; G_MOVEMEM
    load_texture texLevelKuppa01n0000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelKuppa01n0006, 15
    load_vtxs vtxLevelKuppa01n0007, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  4
    tri  5,  6,  7
    tri  6,  8,  7
    tri  8,  9, 10
    tri 10, 11, 12
    tri 11,  2, 12
    tri  0, 13,  1
    tri  1, 13,  3
    tri  3, 14,  5
    tri  5, 14,  6
    load_vtxs vtxLevelKuppa01n0008, 8
    tri  0,  1,  2
    tri  2,  1,  3
    tri  4,  3,  5
    tri  5,  6,  7
    .dd 0xB800000000000000 ; G_ENDDL
