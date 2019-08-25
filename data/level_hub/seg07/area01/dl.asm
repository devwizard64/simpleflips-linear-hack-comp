dlLevelHub01:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xFC121824FF33FFFF ; G_SETCOMBINE
    .dd 0xBB000001FFFFFFFF ; G_TEXTURE
    .dw 0x03860010, lightLevelHub01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0000 ; G_MOVEMEM
    load_texture texLevelHub01n0000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n0000, 12
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  0,  9,  1
    tri  3, 10,  4
    tri  6, 11,  7
    .dw 0x03860010, lightLevelHub01Dif0001 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0001 ; G_MOVEMEM
    load_texture texLevelHub01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n0000, 15
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0001, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri  0, 12,  1
    tri  3, 13,  4
    tri  6, 14,  7
    .dw 0x03860010, lightLevelHub01Dif0001 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0001 ; G_MOVEMEM
    load_texture texLevelHub01n0002, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n0001, 15
    load_vtxs vtxLevelHub01n0002, 4
    tri  0,  1,  2
    tri  0,  3,  1
    .dw 0x03860010, lightLevelHub01Dif0001 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0001 ; G_MOVEMEM
    load_texture texLevelHub01n0003, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n0002, 8
    tri  4,  5,  0
    tri  3,  5,  6
    tri  0,  2,  7
    tri  7,  4,  0
    tri  5,  3,  0
    tri  7,  2,  6
    tri  1,  3,  6
    tri  6,  2,  1
    .dw 0x03860010, lightLevelHub01Dif0002 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0002 ; G_MOVEMEM
    load_texture texLevelHub01n0000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n0002, 14
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0003, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  0,  9,  1
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n0004, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  0,  2,  9
    tri  3,  5, 10
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0005, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  8,  9,  7
    tri 10, 11,  9
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0006, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0007, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  2,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0008, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0009, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  8,  9,  7
    tri 10, 11,  9
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n000A, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13,  1
    load_vtxs vtxLevelHub01n000B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n000C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n000D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n000E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9,  7,  6
    tri 10,  7,  9
    tri 11,  7, 10
    tri 12,  7, 11
    tri 13,  7, 12
    tri 14,  7, 13
    tri  4,  7, 14
    load_vtxs vtxLevelHub01n000F, 13
    tri  0,  1,  2
    tri  3,  1,  4
    tri  4,  1,  5
    tri  6,  1,  7
    tri  8,  1,  9
    tri  9,  1,  0
    tri  7,  1,  8
    tri  5,  1,  6
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n0010, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  2,  6,  7
    tri  8,  5,  9
    tri  7, 10, 11
    tri  8, 12, 13
    load_vtxs vtxLevelHub01n0011, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  5,  9, 10
    tri 11, 12,  7
    load_vtxs vtxLevelHub01n0012, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  1
    tri  0,  8,  9
    tri  7, 10,  1
    tri 11, 10,  7
    tri  4, 10, 11
    tri 12, 10,  4
    tri 13, 10, 12
    tri 14, 10, 13
    load_vtxs vtxLevelHub01n0013, 14
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  1,  3
    tri  5,  1,  4
    tri  6,  1,  5
    tri  7,  1,  6
    tri  8,  1,  7
    tri  9,  1,  8
    tri 10,  1,  9
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0014, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  3,  5,  6
    tri  3,  6,  7
    tri  0,  2,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0015, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0016, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0017, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  2,  6
    tri  5,  4,  2
    tri  4,  0,  2
    tri  2,  7,  6
    tri  2,  1,  7
    tri  1,  8,  7
    tri  7,  9,  6
    tri  7, 10,  9
    tri 10, 11,  9
    tri  9, 12,  6
    tri  9, 13, 12
    tri 13, 14, 12
    tri 12,  5,  6
    load_vtxs vtxLevelHub01n0018, 15
    tri  0,  1,  2
    tri  1,  3,  2
    tri  4,  5,  3
    tri  4,  6,  5
    tri  6,  7,  5
    tri  8,  9,  7
    tri  8, 10,  9
    tri 10, 11,  9
    tri 12, 13, 11
    tri 12, 14, 13
    load_vtxs vtxLevelHub01n0019, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  3,  5,  4
    tri  5,  6,  4
    tri  7,  8,  6
    tri  7,  9,  8
    tri  9, 10,  8
    tri 11, 12, 13
    tri 11, 14, 12
    load_vtxs vtxLevelHub01n001A, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  3,  6,  4
    tri  6,  7,  4
    tri  8,  9, 10
    tri  8, 11,  9
    tri 11, 12,  9
    load_vtxs vtxLevelHub01n001B, 15
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  5,  6,  7
    tri  5,  8,  6
    tri  8,  9,  6
    tri 10, 11,  9
    tri 10, 12, 11
    tri 12, 13, 11
    tri 12, 14, 13
    load_vtxs vtxLevelHub01n001C, 14
    tri  0,  1,  2
    tri  1,  3,  2
    tri  1,  4,  3
    tri  1,  5,  4
    tri  5,  6,  4
    tri  7,  8,  9
    tri  7, 10,  8
    tri 10, 11,  8
    tri  5, 12,  6
    tri  5, 10, 12
    tri 10, 13, 12
    load_vtxs vtxLevelHub01n001D, 15
    tri  0,  1,  2
    tri  3,  1,  4
    tri  0,  2,  5
    tri  0,  5,  6
    tri  0,  6,  7
    tri  3,  4,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n001E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n001F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0020, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  2,  6
    tri  5,  4,  2
    tri  4,  0,  2
    tri  2,  7,  6
    tri  2,  1,  7
    tri  1,  8,  7
    tri  7,  9,  6
    tri  7, 10,  9
    tri 10, 11,  9
    tri  9, 12,  6
    tri  9, 13, 12
    tri 13, 14, 12
    tri 12,  5,  6
    load_vtxs vtxLevelHub01n0021, 15
    tri  0,  1,  2
    tri  1,  3,  2
    tri  4,  5,  3
    tri  4,  6,  5
    tri  6,  7,  5
    tri  8,  9,  7
    tri  8, 10,  9
    tri 10, 11,  9
    tri 12, 13, 11
    tri 12, 14, 13
    load_vtxs vtxLevelHub01n0022, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  3,  5,  4
    tri  5,  6,  4
    tri  7,  8,  6
    tri  7,  9,  8
    tri  9, 10,  8
    tri 11, 12, 13
    tri 11, 14, 12
    load_vtxs vtxLevelHub01n0023, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  3,  6,  4
    tri  6,  7,  4
    tri  8,  9, 10
    tri  8, 11,  9
    tri 11, 12,  9
    load_vtxs vtxLevelHub01n0024, 15
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  5,  6,  7
    tri  5,  8,  6
    tri  8,  9,  6
    tri 10, 11,  9
    tri 10, 12, 11
    tri 12, 13, 11
    tri 12, 14, 13
    load_vtxs vtxLevelHub01n0025, 14
    tri  0,  1,  2
    tri  1,  3,  2
    tri  1,  4,  3
    tri  1,  5,  4
    tri  5,  6,  4
    tri  7,  8,  9
    tri  7, 10,  8
    tri 10, 11,  8
    tri  5, 12,  6
    tri  5, 10, 12
    tri 10, 13, 12
    load_vtxs vtxLevelHub01n0026, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0027, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0028, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 10, 12
    tri 13, 12, 14
    load_vtxs vtxLevelHub01n0029, 14
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 10, 12
    tri 13, 12,  6
    load_vtxs vtxLevelHub01n002A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  7,  9
    tri 10, 11, 12
    tri 11, 13, 14
    load_vtxs vtxLevelHub01n002B, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  9, 10, 11
    tri 12,  9, 13
    load_vtxs vtxLevelHub01n002C, 13
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  7,  9, 10
    tri  9, 11, 12
    load_vtxs vtxLevelHub01n002D, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n002E, 13
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  4,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n002F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0030, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0031, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0032, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12,  8, 13
    load_vtxs vtxLevelHub01n0033, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  0,  6,  7
    tri  8,  9,  5
    tri 10,  7, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0034, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9,  2,  5
    tri  7, 10, 11
    tri  6, 12, 13
    load_vtxs vtxLevelHub01n0035, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0036, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0037, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12,  1, 13
    load_vtxs vtxLevelHub01n0038, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0039, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    tri  4, 13, 12
    load_vtxs vtxLevelHub01n003A, 14
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  1,  3
    tri  5,  1,  4
    tri  6,  1,  5
    tri  7,  1,  6
    tri  8,  1,  7
    tri  9,  1, 10
    tri 10,  1, 11
    tri 12,  1, 13
    load_vtxs vtxLevelHub01n003B, 13
    tri  0,  1,  2
    tri  2,  1,  3
    tri  4,  1,  0
    tri  5,  1,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n003C, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  2,  7
    tri  5,  8,  9
    tri  6, 10, 11
    tri 12,  8, 13
    load_vtxs vtxLevelHub01n003D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  2,  6,  7
    tri  8,  9,  4
    tri 10, 11, 12
    tri  7,  9, 13
    tri 14,  5, 11
    load_vtxs vtxLevelHub01n003E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  4,  3
    tri  7,  4,  6
    tri  8,  4,  7
    tri  9,  4,  8
    tri 10,  4,  9
    tri 11,  4, 10
    tri 12,  4, 11
    tri 13,  4, 12
    tri 14,  4, 13
    load_vtxs vtxLevelHub01n003F, 15
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  1,  3
    tri  5,  1,  4
    tri  6,  1,  5
    tri  7,  8,  9
    tri 10,  8, 11
    tri  7,  9, 12
    tri  7, 12, 13
    tri  7, 13, 14
    load_vtxs vtxLevelHub01n0040, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0041, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0042, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0043, 15
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  1,  5,  2
    tri  1,  6,  5
    tri  6,  7,  5
    tri  5,  8,  2
    tri  5,  9,  8
    tri  9, 10,  8
    tri  8, 11,  2
    tri  8, 12, 11
    tri 12, 13, 11
    tri 11,  0,  2
    tri 11, 14,  0
    load_vtxs vtxLevelHub01n0044, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  3,  5,  4
    tri  5,  6,  4
    tri  7,  8,  6
    tri  7,  9,  8
    tri  9, 10,  8
    tri 11, 12, 10
    tri 11, 13, 12
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n0045, 14
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  5,  6,  4
    tri  5,  7,  6
    tri  7,  8,  6
    tri  9, 10, 11
    tri  9, 12, 10
    tri 12, 13, 10
    load_vtxs vtxLevelHub01n0046, 15
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  5,  6,  7
    tri  5,  8,  6
    tri  8,  9,  6
    tri 10, 11, 12
    tri 10, 13, 11
    tri 13, 14, 11
    load_vtxs vtxLevelHub01n0047, 15
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  5,  6,  4
    tri  5,  7,  6
    tri  7,  8,  6
    tri  7,  9,  8
    tri  7, 10,  9
    tri 10, 11,  9
    tri 10, 12, 11
    tri 10, 13, 12
    tri 13, 14, 12
    tri  3,  5,  4
    load_vtxs vtxLevelHub01n0048, 15
    tri  0,  1,  2
    tri  1,  3,  2
    tri  4,  5,  6
    tri  4,  1,  5
    tri  1,  7,  5
    tri  8,  9, 10
    tri 11,  9, 12
    tri  8, 10, 13
    tri  8, 13, 14
    load_vtxs vtxLevelHub01n0049, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n004A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n004B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n004C, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  2,  1,  3
    tri  1,  5,  3
    tri  3,  6,  4
    tri  3,  7,  6
    tri  7,  8,  6
    tri  6,  9,  4
    tri  6, 10,  9
    tri 10, 11,  9
    tri  9, 12,  4
    tri  9, 13, 12
    tri 13, 14, 12
    tri 12,  2,  4
    load_vtxs vtxLevelHub01n004D, 15
    tri  0,  1,  2
    tri  1,  3,  2
    tri  4,  5,  3
    tri  4,  6,  5
    tri  6,  7,  5
    tri  8,  9,  7
    tri  8, 10,  9
    tri 10, 11,  9
    tri 12, 13, 11
    tri 12, 14, 13
    load_vtxs vtxLevelHub01n004E, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  3,  5,  4
    tri  5,  6,  4
    tri  7,  8,  6
    tri  7,  9,  8
    tri  9, 10,  8
    tri 11, 12, 13
    tri 11, 14, 12
    load_vtxs vtxLevelHub01n004F, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  3,  6,  4
    tri  6,  7,  4
    tri  8,  9, 10
    tri  8, 11,  9
    tri 11, 12,  9
    load_vtxs vtxLevelHub01n0050, 15
    tri  0,  1,  2
    tri  0,  3,  1
    tri  3,  4,  1
    tri  5,  6,  7
    tri  5,  8,  6
    tri  8,  9,  6
    tri 10, 11,  9
    tri 10, 12, 11
    tri 12, 13, 11
    tri 12, 14, 13
    load_vtxs vtxLevelHub01n0051, 14
    tri  0,  1,  2
    tri  1,  3,  2
    tri  1,  4,  3
    tri  1,  5,  4
    tri  5,  6,  4
    tri  7,  8,  9
    tri  7, 10,  8
    tri 10, 11,  8
    tri  5, 12,  6
    tri  5, 10, 12
    tri 10, 13, 12
    load_vtxs vtxLevelHub01n0052, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0053, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0054, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri  9, 11, 12
    tri 11, 13, 14
    load_vtxs vtxLevelHub01n0055, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  7,  8,  9
    tri 10,  7, 11
    tri  8, 12, 13
    load_vtxs vtxLevelHub01n0056, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  7,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n0057, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0058, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13,  2
    load_vtxs vtxLevelHub01n0059, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n005A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n005B, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  0,  7
    tri  8,  5,  9
    tri  6, 10, 11
    tri 12, 13,  9
    load_vtxs vtxLevelHub01n005C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  2,  7
    tri  4,  8,  9
    tri 10, 11, 12
    tri 13,  7,  9
    tri 11,  3, 14
    load_vtxs vtxLevelHub01n005D, 3
    tri  0,  1,  2
    .dw 0x03860010, lightLevelHub01Dif0001 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0001 ; G_MOVEMEM
    .definelabel texLevelHub01n0004F2cmd, (. + (8*6) + 1)
    load_texture texLevelHub01n0004, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n005D, 15
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n005E, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  0,  9,  1
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n005F, 9
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    .dw 0x03860010, lightLevelHub01Dif0001 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0001 ; G_MOVEMEM
    load_texture texLevelHub01n0005, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n005F, 13
    tri  9, 10, 11
    tri  9, 12, 10
    .dw 0x03860010, lightLevelHub01Dif0003 ; G_MOVEMEM
    .dw 0x03880010, lightLevelHub01Amb0003 ; G_MOVEMEM
    load_texture texLevelHub01n0000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, 0, 0, 0
    load_vtxs vtxLevelHub01n005F, 13
    load_vtxs vtxLevelHub01n0060, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0061, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0062, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0063, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0064, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0065, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0066, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0067, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0068, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0069, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n006A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n006B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n006C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n006D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n006E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n006F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0070, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0071, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0072, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0073, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0074, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0075, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0076, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0077, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n0078, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  7
    tri  8,  5,  7
    tri  9,  3,  5
    tri  2, 10, 11
    tri 12,  2, 11
    tri 13,  0,  2
    load_vtxs vtxLevelHub01n0079, 15
    tri  0,  1,  2
    tri  3,  0,  2
    tri  4,  5,  0
    tri  6,  7,  8
    tri  9,  8, 10
    tri 11,  6,  9
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n007A, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9,  5
    tri 10,  9, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n007B, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  9,  5
    tri 10, 11,  9
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n007C, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  9,  5
    tri 10, 11,  9
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n007D, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  7,  9
    tri 10,  5,  8
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n007E, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  5,  7
    tri  9, 10,  5
    tri 11, 12, 13
    tri 14, 11, 13
    load_vtxs vtxLevelHub01n007F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  5
    tri  7,  8,  3
    tri  9, 10, 11
    tri 12, 11, 13
    tri 14,  9, 12
    load_vtxs vtxLevelHub01n0080, 13
    tri  0,  1,  2
    tri  3,  0,  2
    tri  4,  5,  0
    tri  6,  7,  8
    tri  9,  6, 10
    tri 11, 12,  9
    load_vtxs vtxLevelHub01n0081, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10,  7, 11
    tri 12, 13, 10
    load_vtxs vtxLevelHub01n0082, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10, 11,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n0083, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10, 11,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n0084, 13
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  7,  8
    tri  9,  6, 10
    tri 11, 12,  9
    load_vtxs vtxLevelHub01n0085, 13
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  7,  8,  9
    tri 10,  7,  9
    tri 11, 12,  7
    load_vtxs vtxLevelHub01n0086, 13
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10,  7,  9
    tri 11, 12,  7
    load_vtxs vtxLevelHub01n0087, 14
    tri  0,  1,  2
    tri  3,  0,  2
    tri  4,  5,  0
    tri  6,  7,  8
    tri  9,  8, 10
    tri  9, 11,  6
    tri 12, 10, 13
    load_vtxs vtxLevelHub01n0088, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  0,  2
    tri  6,  7,  5
    tri  8,  9,  7
    tri 10,  6, 11
    tri 12, 11, 13
    tri 14, 10, 12
    load_vtxs vtxLevelHub01n0089, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  7,  5,  3
    tri  8,  9,  7
    tri 10,  9, 11
    tri 12, 11,  8
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n008A, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  3,  6
    tri  9,  7, 10
    tri 11, 10, 12
    tri 13,  9, 11
    load_vtxs vtxLevelHub01n008B, 14
    tri  0,  1,  2
    tri  3,  2,  4
    tri  3,  5,  0
    tri  6,  3,  4
    tri  7,  8,  6
    tri  9,  8, 10
    tri 11, 10,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n008C, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  6
    tri  9,  7,  5
    tri 10, 11,  9
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n008D, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  4,  7
    tri  8,  7,  9
    tri 10,  6,  8
    tri 11,  9, 12
    tri 13, 12, 14
    load_vtxs vtxLevelHub01n008E, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  6,  3
    tri  7,  6,  8
    tri  9,  8,  5
    tri 10, 11,  9
    tri 12, 13, 11
    tri 14, 12, 10
    load_vtxs vtxLevelHub01n008F, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  3,  0
    tri  6,  7,  5
    tri  8,  9,  7
    tri 10, 11, 12
    tri 13, 10, 14
    load_vtxs vtxLevelHub01n0090, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  6,  8,  3
    tri  9,  7, 10
    tri 11, 10, 12
    tri 13,  9, 11
    tri 14, 11, 12
    load_vtxs vtxLevelHub01n0091, 15
    tri  0,  1,  2
    tri  3,  1,  4
    tri  5,  4,  0
    tri  6,  7,  5
    tri  8,  7,  9
    tri 10,  9,  6
    tri 11, 10, 12
    tri 13, 14, 11
    load_vtxs vtxLevelHub01n0092, 14
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  7,  8
    tri  9,  6,  8
    tri 10, 11,  6
    tri 12,  9, 13
    load_vtxs vtxLevelHub01n0093, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  2,  6
    tri  7,  5,  6
    tri  8,  9,  5
    tri 10,  7, 11
    tri 12, 10, 11
    tri 13, 10, 14
    load_vtxs vtxLevelHub01n0094, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  4,  6
    tri  7,  3,  8
    tri  9,  7,  8
    tri 10, 11,  7
    tri 12, 10,  9
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n0095, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  8,  9,  7
    tri 10,  8,  6
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n0096, 15
    tri  0,  1,  2
    tri  3,  0,  2
    tri  4,  5,  0
    tri  6,  3,  7
    tri  8,  6,  7
    tri  9,  6, 10
    tri 11,  8, 12
    tri 13, 12, 14
    load_vtxs vtxLevelHub01n0097, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  3,  6
    tri  9,  7, 10
    tri 11, 10, 12
    tri 13,  9, 11
    load_vtxs vtxLevelHub01n0098, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  7,  5,  3
    tri  8,  9,  7
    tri 10, 11,  9
    tri 12,  8, 13
    load_vtxs vtxLevelHub01n0099, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  0,  2
    tri  6,  7,  5
    tri  8,  7,  9
    tri 10,  6, 11
    tri 12, 11, 13
    tri 14, 10, 12
    load_vtxs vtxLevelHub01n009A, 14
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  4,  7
    tri  8,  7,  9
    tri 10,  6,  8
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n009B, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  0,  2
    tri  6,  7,  5
    tri  8,  9,  7
    tri 10,  6, 11
    tri 12, 11, 13
    tri 14, 10, 12
    load_vtxs vtxLevelHub01n009C, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  7,  3,  8
    tri  9,  8, 10
    tri 11,  7,  9
    tri 12,  9, 10
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n009D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  3,  6
    tri  9, 10, 11
    tri 12, 11, 13
    tri 14,  9, 12
    load_vtxs vtxLevelHub01n009E, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  7,  8
    tri  9, 10,  6
    tri 11,  2, 10
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n009F, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9,  5
    tri 10,  1,  9
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00A0, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  9,  5
    tri 10,  2,  9
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00A1, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00A2, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13,  9
    load_vtxs vtxLevelHub01n00A3, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  9,  7, 10
    tri 11, 10, 12
    tri 13,  9, 11
    tri 14, 11, 12
    load_vtxs vtxLevelHub01n00A4, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  0,  6
    tri  7,  6,  8
    tri  9,  5,  7
    tri 10, 11, 12
    tri 13, 14, 11
    load_vtxs vtxLevelHub01n00A5, 13
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  0,  8,  5
    tri  9, 10, 11
    tri 12,  6, 10
    load_vtxs vtxLevelHub01n00A6, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  2,  8,  5
    tri  9, 10, 11
    tri 12, 11, 13
    tri  7,  9, 12
    load_vtxs vtxLevelHub01n00A7, 13
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10, 11,  7
    tri 12,  0, 11
    load_vtxs vtxLevelHub01n00A8, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  7,  8
    tri  9, 10,  6
    tri 11,  2, 10
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00A9, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  5,  7
    tri  9,  1,  5
    tri 10, 11, 12
    tri 13, 12, 14
    tri  8, 10, 13
    load_vtxs vtxLevelHub01n00AA, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10,  7
    tri 11,  6, 12
    tri 13, 12, 14
    load_vtxs vtxLevelHub01n00AB, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  6,  3
    tri  7,  8,  6
    tri  9,  7,  5
    tri 10, 11,  9
    tri 12, 13, 11
    tri 14, 12, 10
    load_vtxs vtxLevelHub01n00AC, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  5,  9
    tri 10, 11, 12
    tri  1,  4, 13
    load_vtxs vtxLevelHub01n00AD, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00AE, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00AF, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B0, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B1, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B2, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B3, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B4, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B5, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B6, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B7, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B8, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00B9, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00BA, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00BB, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00BC, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00BD, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00BE, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00BF, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00C0, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00C1, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00C2, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00C3, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00C4, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 11,  4
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n00C5, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00C6, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  7
    tri  8,  9,  3
    tri 10, 11, 12
    tri 13, 10, 14
    load_vtxs vtxLevelHub01n00C7, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  8,  9,  4
    tri 10, 11, 12
    tri 13, 14, 11
    load_vtxs vtxLevelHub01n00C8, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00C9, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 11
    load_vtxs vtxLevelHub01n00CA, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  7
    tri  8,  9,  3
    tri 10, 11, 12
    tri 13, 10, 14
    load_vtxs vtxLevelHub01n00CB, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00CC, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 10, 14
    load_vtxs vtxLevelHub01n00CD, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 11, 10
    load_vtxs vtxLevelHub01n00CE, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  4,  3
    tri  7,  8,  4
    tri  9, 10, 11
    tri 12, 10,  9
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00CF, 13
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  5,  1
    tri  6,  7,  8
    tri  9, 10,  7
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n00D0, 13
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  5,  1
    tri  6,  7,  8
    tri  9, 10,  7
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n00D1, 13
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  8,  9
    tri 10,  8,  7
    tri 11, 12,  8
    load_vtxs vtxLevelHub01n00D2, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11,  7
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00D3, 13
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  5,  1
    tri  6,  7,  8
    tri  9, 10,  6
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n00D4, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10,  7, 11
    tri 10, 12, 13
    load_vtxs vtxLevelHub01n00D5, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  8,  3
    tri  9, 10,  8
    tri 10, 11, 12
    tri 13, 10,  9
    load_vtxs vtxLevelHub01n00D6, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  0
    tri  7,  8,  6
    tri  8,  9, 10
    tri 11, 12,  8
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n00D7, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 10, 14
    load_vtxs vtxLevelHub01n00D8, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  7
    tri  8,  9,  3
    tri 10,  6, 11
    tri 12, 10, 13
    load_vtxs vtxLevelHub01n00D9, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  7,  8,  4
    tri  9, 10,  6
    tri 11, 12, 10
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00DA, 13
    tri  0,  1,  2
    tri  3,  4,  1
    tri  4,  5,  6
    tri  7,  8,  4
    tri  9, 10,  8
    tri 10, 11, 12
    load_vtxs vtxLevelHub01n00DB, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  3,  8
    tri  9,  7, 10
    tri 11, 12,  7
    tri 13,  9, 14
    load_vtxs vtxLevelHub01n00DC, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  0
    tri  7,  8,  6
    tri  9, 10,  6
    tri 11, 12,  8
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n00DD, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  6,  7,  8
    tri  9, 10,  6
    tri 11, 12, 10
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00DE, 14
    tri  0,  1,  2
    tri  3,  1,  0
    tri  4,  5,  1
    tri  6,  3,  7
    tri  8,  6,  9
    tri  8, 10, 11
    tri 12,  8, 13
    load_vtxs vtxLevelHub01n00DF, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  0
    tri  7,  8,  6
    tri  9, 10,  6
    tri 11, 12,  8
    tri 13, 14, 12
    load_vtxs vtxLevelHub01n00E0, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  4,  3
    tri  7,  8,  4
    tri  9,  6, 10
    tri 11,  9, 12
    tri 13, 14,  9
    load_vtxs vtxLevelHub01n00E1, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  4,  5,  6
    tri  7,  4,  3
    tri  8,  7,  9
    tri  8, 10, 11
    tri 12,  8, 13
    load_vtxs vtxLevelHub01n00E2, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  1,  0
    tri  6,  7,  5
    tri  8,  9,  5
    tri 10, 11,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n00E3, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  7,  8,  9
    tri 10, 11,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n00E4, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  7,  8,  9
    tri 10, 11,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n00E5, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  6,  7,  8
    tri  9,  6,  5
    tri 10, 11,  9
    tri 12, 13,  9
    tri 14, 11, 10
    load_vtxs vtxLevelHub01n00E6, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  0,  6
    tri  7,  5,  8
    tri  9, 10,  5
    tri 11,  7, 12
    tri 13, 11, 14
    load_vtxs vtxLevelHub01n00E7, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  7,  8,  9
    tri 10, 11,  7
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n00E8, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  3,  6
    tri  5,  7,  8
    tri  9, 10,  5
    tri 11, 12, 10
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00E9, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  3,  8
    tri  9,  7, 10
    tri 11, 12,  7
    tri 13,  9, 14
    load_vtxs vtxLevelHub01n00EA, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  5,  9
    tri  8, 10, 11
    tri 12, 13,  8
    load_vtxs vtxLevelHub01n00EB, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  1,  0
    tri  6,  5,  7
    tri  8,  9,  5
    tri 10, 11,  6
    tri 12, 13, 11
    load_vtxs vtxLevelHub01n00EC, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  3,  6
    tri  7,  8,  3
    tri  9, 10,  5
    tri 11, 12, 10
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00ED, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  8,  9
    tri 10,  7, 11
    tri 12, 13,  7
    load_vtxs vtxLevelHub01n00EE, 13
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  8,  9
    tri 10, 11,  8
    tri 11, 12,  4
    load_vtxs vtxLevelHub01n00EF, 13
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  8,  9
    tri 10, 11,  8
    tri 11, 12,  4
    load_vtxs vtxLevelHub01n00F0, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11,  8
    tri 11,  3,  0
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00F1, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00F2, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 10
    load_vtxs vtxLevelHub01n00F3, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9,  8,  7
    tri 10,  9, 11
    tri 12, 13,  9
    load_vtxs vtxLevelHub01n00F4, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  4,  5,  6
    tri  7,  4,  3
    tri  8,  7,  9
    tri 10, 11,  7
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00F5, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  4,  6,  7
    tri  8,  9, 10
    tri  3, 11,  9
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00F6, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  8,  9, 10
    tri 11,  5,  9
    tri 12, 13, 14
    load_vtxs vtxLevelHub01n00F7, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  6,  5
    tri  9, 10,  6
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00F8, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  7
    tri  8,  5,  9
    tri  0, 10,  5
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00F9, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  7
    tri  8,  5,  9
    tri  0, 10,  5
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00FA, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  7
    tri  8,  5,  9
    tri  0, 10,  5
    tri 11, 12, 13
    load_vtxs vtxLevelHub01n00FB, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  4
    tri  7,  8,  9
    tri 10,  7,  6
    tri 11, 10, 12
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00FC, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  4,  5,  6
    tri  7,  8,  4
    tri  9, 10,  8
    tri 10, 11, 12
    tri 13, 14, 10
    load_vtxs vtxLevelHub01n00FD, 10
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  7
    tri  8,  9,  5
    .dd 0xB800000000000000 ; G_ENDDL
