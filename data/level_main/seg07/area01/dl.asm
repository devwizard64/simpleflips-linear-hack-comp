dlLevelMain01:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xBB000001FFFFFFFF ; G_TEXTURE
    .dd 0xFC121824FF33FFFF ; G_SETCOMBINE
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0000, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0001, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0002, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0003, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0004, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0005, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0006, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0007, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0008, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0009, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n000A, 4
    tri  0,  1,  2
    tri  0,  3,  1
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n000A, 13
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n000B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n000C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  7
    tri  8,  7,  6
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n000D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  8,  9, 10
    tri 11, 10,  9
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n000E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n000F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0010, 13
    tri  0,  1,  2
    tri  3,  2,  1
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0011, 12
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  7
    tri  8,  7,  6
    tri  9, 10, 11
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0002, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0011, 15
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0012, 3
    tri  0,  1,  2
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0003, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0012, 7
    tri  3,  4,  5
    tri  3,  5,  6
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0004, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0012, 15
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 11
    load_vtxs vtxLevelMain01n0013, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0014, 14
    tri  0,  1,  2
    tri  2,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri  9, 11, 10
    tri 12, 13, 11
    load_vtxs vtxLevelMain01n0015, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  4,  6,  7
    tri  7,  6,  8
    tri  9,  8, 10
    tri 11, 10, 12
    tri 13, 12, 14
    load_vtxs vtxLevelMain01n0016, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  4,  6
    tri  7,  6,  8
    tri  9,  8, 10
    tri 11, 10, 12
    tri 13, 12, 14
    load_vtxs vtxLevelMain01n0017, 7
    tri  0,  1,  2
    tri  2,  3,  4
    tri  3,  5,  6
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0005, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0017, 13
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0018, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0019, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n001A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n001B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n001C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n001D, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  7,  8,  9
    tri  6, 10,  7
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n001E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri  0, 12,  1
    tri  3, 13,  4
    tri  6, 14,  7
    load_vtxs vtxLevelMain01n001F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0020, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0021, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0022, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0023, 6
    tri  0,  1,  2
    tri  3,  4,  5
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0006, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0023, 15
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0024, 13
    tri  0,  1,  2
    tri  0,  2,  3
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0025, 4
    tri  0,  1,  2
    tri  0,  3,  1
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0001, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0025, 13
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0026, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  9, 10,  7
    tri 11, 12,  9
    tri 13, 14, 11
    load_vtxs vtxLevelMain01n0027, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  9, 10,  7
    tri 11, 12,  9
    tri 13, 14, 11
    load_vtxs vtxLevelMain01n0028, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9,  5
    tri  8, 10, 11
    tri 12, 13, 10
    load_vtxs vtxLevelMain01n0029, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n002A, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  6,  8
    tri  9, 10,  7
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n002B, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n002C, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n002D, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 10
    load_vtxs vtxLevelMain01n002E, 15
    tri  0,  1,  2
    tri  1,  3,  2
    tri  3,  4,  5
    tri  4,  6,  5
    tri  6,  7,  8
    tri  7,  9,  8
    tri  9, 10, 11
    tri 10, 12, 11
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n002F, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n0030, 15
    tri  0,  1,  2
    tri  3,  1,  4
    tri  3,  5,  6
    tri  7,  5,  8
    tri  7,  9, 10
    tri 11,  9, 12
    tri 11, 13, 14
    load_vtxs vtxLevelMain01n0031, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  6,  3
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n0032, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  7,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0033, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n0034, 15
    tri  0,  1,  2
    tri  3,  1,  4
    tri  3,  5,  6
    tri  7,  5,  8
    tri  7,  9, 10
    tri 11,  9, 12
    tri 11, 13, 14
    load_vtxs vtxLevelMain01n0035, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0036, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  6,  8,  9
    tri 10,  8, 11
    tri 10, 12, 13
    load_vtxs vtxLevelMain01n0037, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  3,  6
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 10
    load_vtxs vtxLevelMain01n0038, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  7,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n0039, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n003A, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n003B, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  7,  9, 10
    tri  9, 11, 12
    tri 11, 13, 14
    load_vtxs vtxLevelMain01n003C, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  7,  9, 10
    tri  9, 11, 12
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n003D, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  4,  6,  7
    tri  6,  8,  9
    tri  8, 10, 11
    tri 10, 12, 13
    load_vtxs vtxLevelMain01n003E, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  8,  7,  9
    tri 10,  9, 11
    tri 12, 11, 13
    load_vtxs vtxLevelMain01n003F, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  4,  6
    tri  7,  6,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0040, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  4,  3,  5
    tri  5,  6,  7
    tri  7,  6,  8
    tri  8,  9, 10
    tri 10,  9, 11
    tri 11, 12, 13
    tri 13, 12, 14
    load_vtxs vtxLevelMain01n0041, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  3,  5,  6
    tri  5,  7,  8
    tri  7,  9, 10
    tri  9, 11, 12
    tri 12, 11, 13
    load_vtxs vtxLevelMain01n0042, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  4
    tri  5,  7,  8
    tri  9, 10,  8
    tri  9, 11, 12
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n0043, 15
    tri  0,  1,  2
    tri  3,  4,  2
    tri  3,  5,  6
    tri  5,  7,  8
    tri  7,  9, 10
    tri  9, 11, 12
    tri 11, 13, 14
    load_vtxs vtxLevelMain01n0044, 15
    tri  0,  1,  2
    tri  3,  4,  2
    tri  5,  6,  4
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 12, 14
    load_vtxs vtxLevelMain01n0045, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  6,  4
    tri  5,  7,  8
    tri  9, 10,  8
    tri  9, 11, 12
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n0046, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  4,  6
    tri  7,  6,  8
    tri  9,  8, 10
    tri 11, 10, 12
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n0047, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  3,  5,  6
    tri  7,  8,  6
    tri  7,  9, 10
    tri 11, 12, 10
    tri 11, 13, 14
    load_vtxs vtxLevelMain01n0048, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n0049, 5
    tri  0,  1,  2
    tri  0,  3,  4
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0002, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0049, 14
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n004A, 13
    tri  0,  1,  2
    tri  3,  4,  5
    tri  3,  5,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n004B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n004C, 14
    tri  0,  1,  2
    tri  2,  3,  4
    tri  1,  5,  2
    tri  6,  7,  8
    tri  9, 10,  8
    tri  8,  7,  9
    tri 11, 12, 13
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0007, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n004C, 14
    load_vtxs vtxLevelMain01n004D, 14
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  6,  7
    tri  2,  8,  9
    tri  1, 10,  2
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n004E, 15
    tri  0,  1,  2
    tri  2,  3,  0
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n004F, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0050, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0051, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  4,  5,  6
    tri  6,  7,  8
    tri  8,  9, 10
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0052, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  3
    tri  3,  5,  6
    tri  2,  1,  3
    tri  8,  9,  3
    tri 10,  2,  3
    tri  3,  7, 11
    tri 12, 13,  3
    tri  3, 11, 12
    tri  9, 10,  3
    load_vtxs vtxLevelMain01n0053, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  5,  6,  2
    tri  2,  4,  5
    tri  1,  7,  2
    tri  8,  9,  2
    tri 10, 11,  2
    tri 12,  8,  2
    tri  2,  6, 13
    tri 13, 14,  2
    load_vtxs vtxLevelMain01n0054, 13
    tri  0,  1,  2
    tri  2,  3,  4
    tri  5,  6,  2
    tri  2,  4,  0
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0055, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9,  5
    tri 10, 11,  8
    tri 12, 13, 10
    load_vtxs vtxLevelMain01n0056, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  9, 10,  7
    tri 11, 12,  9
    tri 13, 14, 11
    load_vtxs vtxLevelMain01n0057, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  9, 10,  7
    tri 11, 12,  9
    tri 13, 14, 11
    load_vtxs vtxLevelMain01n0058, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  5
    tri  9, 10,  7
    tri 11, 12,  9
    tri 13, 14, 11
    load_vtxs vtxLevelMain01n0059, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  3
    tri  7,  8,  9
    tri 10, 11,  9
    tri 12,  7,  9
    tri  5,  3,  0
    tri  2, 13,  9
    tri  9,  0,  2
    tri 11, 12,  9
    load_vtxs vtxLevelMain01n005A, 15
    tri  0,  1,  2
    tri  3,  4,  2
    tri  2,  5,  6
    tri  6,  7,  2
    tri  1,  3,  2
    tri  8,  9,  2
    tri  2,  7, 10
    tri 10, 11,  2
    tri 12, 13,  2
    tri 11, 14,  2
    tri  9,  0,  2
    load_vtxs vtxLevelMain01n005B, 14
    tri  0,  1,  2
    tri  3,  4,  2
    tri  5,  6,  2
    tri  4,  0,  2
    tri  7,  8,  2
    tri  1,  9,  2
    tri  6, 10,  2
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n005C, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  0,  6,  1
    tri  7,  8,  9
    tri 10, 11, 12
    tri 12, 13, 10
    load_vtxs vtxLevelMain01n005D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n005E, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  0,  6,  1
    tri  7,  8,  9
    tri 10,  9,  8
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n005F, 13
    tri  0,  1,  2
    tri  0,  3,  1
    tri  4,  5,  6
    tri  7,  8,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0060, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0061, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0062, 14
    tri  0,  1,  2
    tri  2,  3,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n0063, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  1,  5,  2
    tri  3,  6,  4
    tri  7,  8,  9
    tri 10, 11, 12
    tri 13, 14, 12
    load_vtxs vtxLevelMain01n0064, 13
    tri  0,  1,  2
    tri  2,  3,  4
    tri  4,  5,  6
    tri  7,  8,  0
    tri  0,  2,  9
    tri  4,  6,  9
    tri 10, 11, 12
    load_vtxs vtxLevelMain01n0065, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  7
    tri  8,  9,  3
    tri 10, 11, 12
    tri 12, 13,  3
    tri  3,  5,  8
    tri  9, 10, 12
    tri  5,  7,  8
    load_vtxs vtxLevelMain01n0066, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  5
    tri  5,  8,  3
    tri  9, 10, 11
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n0067, 11
    tri  0,  1,  2
    tri  2,  3,  0
    tri  4,  5,  6
    tri  6,  7,  0
    tri  3,  4,  6
    tri  8,  9, 10
    .dw 0x03860010, lightLevelMain01Dif0000 ; G_MOVEMEM
    .dw 0x03880010, lightLevelMain01Amb0000 ; G_MOVEMEM
    load_texture texLevelMain01n0008, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, 0, 0, 0
    load_vtxs vtxLevelMain01n0067, 14
    tri 11, 12, 13
    load_vtxs vtxLevelMain01n0068, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0069, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n006A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n006B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n006C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n006D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n006E, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n006F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0070, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0071, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0072, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0073, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0074, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0075, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0076, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0077, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0078, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n0079, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n007A, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n007B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n007C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n007D, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxLevelMain01n007E, 9
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    .dd 0xB800000000000000 ; G_ENDDL
