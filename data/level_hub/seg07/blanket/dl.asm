dlObjBlanket:
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xFC121824FF33FFFF ; G_SETCOMBINE
    .dd 0xBB000001FFFFFFFF ; G_TEXTURE
    .dw 0x03860010, lightObjBlanketDif0000 ; G_MOVEMEM
    .dw 0x03880010, lightObjBlanketAmb0000 ; G_MOVEMEM
    load_texture texObjBlanket0000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, 0, 0, 0
    load_vtxs vtxObjBlanket0000, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0001, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0002, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0003, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0004, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0005, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  3,  6
    tri  7,  6,  8
    tri  9,  8, 10
    tri 11,  9, 10
    tri 12, 13, 11
    load_vtxs vtxObjBlanket0006, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  4,  6
    tri  7,  8,  9
    tri 10, 11,  8
    tri 12, 10,  7
    tri 13, 14, 12
    load_vtxs vtxObjBlanket0007, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  8,  6
    tri  9,  7,  5
    tri 10,  9, 11
    tri 12, 13, 10
    load_vtxs vtxObjBlanket0008, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  4,  7
    tri  8,  9, 10
    tri 11, 12,  9
    tri 13,  8, 14
    load_vtxs vtxObjBlanket0009, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  3,  0
    tri  6,  7,  5
    tri  8,  9,  7
    tri 10,  8,  6
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxObjBlanket000A, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  0,  3
    tri  6,  4,  7
    tri  8,  9, 10
    tri 11, 12,  8
    tri 13, 10, 14
    load_vtxs vtxObjBlanket000B, 15
    tri  0,  1,  2
    tri  0,  3,  4
    tri  5,  0,  2
    tri  6,  7,  5
    tri  8,  9,  7
    tri 10,  8,  6
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxObjBlanket000C, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  3
    tri  7,  3,  4
    tri  8,  9, 10
    tri 11, 12,  8
    tri 13, 10, 14
    load_vtxs vtxObjBlanket000D, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  2,  6
    tri  7,  6,  8
    tri  7,  9,  5
    tri 10,  7,  8
    tri 11, 12, 10
    tri 13, 14, 12
    load_vtxs vtxObjBlanket000E, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  7,  5,  3
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket000F, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 11, 13
    tri 11, 14, 13
    load_vtxs vtxObjBlanket0010, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  4
    tri  7,  8,  6
    tri  9, 10,  8
    tri 10, 11, 12
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0011, 14
    tri  0,  1,  2
    tri  2,  3,  4
    tri  3,  5,  4
    tri  6,  7,  8
    tri  9,  8, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0012, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 10,  1, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0013, 15
    tri  0,  1,  2
    tri  2,  3,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 10, 11,  0
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0014, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0015, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0016, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0017, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 10
    load_vtxs vtxObjBlanket0018, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0019, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10,  7
    tri 11, 12, 13
    load_vtxs vtxObjBlanket001A, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket001B, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket001C, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13,  9
    load_vtxs vtxObjBlanket001D, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket001E, 14
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket001F, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 10, 13
    load_vtxs vtxObjBlanket0020, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9,  7, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0021, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0022, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0023, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0024, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0025, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 11, 12, 13
    tri 10, 14, 12
    load_vtxs vtxObjBlanket0026, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  3,  6
    tri  7,  8,  5
    tri  9, 10,  8
    tri 11, 12, 10
    tri 13, 12, 11
    load_vtxs vtxObjBlanket0027, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  4,  6,  7
    tri  8,  9,  4
    tri 10, 11,  9
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0028, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  4,  5,  6
    tri  7,  8,  4
    tri  9,  8,  7
    tri 10, 11,  8
    tri 12,  9, 13
    load_vtxs vtxObjBlanket0029, 15
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  0,  6
    tri  7,  8,  9
    tri  8, 10, 11
    tri 12,  8,  7
    tri 13, 14, 12
    load_vtxs vtxObjBlanket002A, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  6,  7,  8
    tri  9, 10,  6
    tri 11, 12, 10
    tri 12, 13, 14
    load_vtxs vtxObjBlanket002B, 14
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  0
    tri  7,  3,  8
    tri  9, 10, 11
    tri 12, 13, 10
    load_vtxs vtxObjBlanket002C, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  3,  5,  6
    tri  7,  8,  3
    tri  9, 10,  8
    tri 10, 11, 12
    tri 13, 14, 10
    load_vtxs vtxObjBlanket002D, 15
    tri  0,  1,  2
    tri  1,  3,  4
    tri  5,  6,  1
    tri  7,  6,  5
    tri  8,  9,  6
    tri 10, 11,  7
    tri 12, 13, 14
    load_vtxs vtxObjBlanket002E, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  7
    tri  8,  9,  3
    tri 10,  6, 11
    tri 12, 10, 13
    load_vtxs vtxObjBlanket002F, 15
    tri  0,  1,  2
    tri  3,  4,  0
    tri  5,  6,  4
    tri  6,  7,  8
    tri  9, 10,  6
    tri 11, 12, 10
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0030, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0031, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  7
    tri  7,  0,  8
    tri  0,  9, 10
    tri  9, 11, 12
    tri 11, 13, 14
    load_vtxs vtxObjBlanket0032, 14
    tri  0,  1,  2
    tri  1,  3,  4
    tri  4,  3,  5
    tri  6,  5,  7
    tri  8,  7,  9
    tri 10,  9, 11
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0033, 15
    tri  0,  1,  2
    tri  3,  0,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri  1,  8, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0034, 15
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 10,  1
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0035, 14
    tri  0,  1,  2
    tri  3,  2,  4
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0036, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  5,  4,  8
    tri  1,  3,  9
    tri 10,  0, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0037, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket0038, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri  2,  1, 12
    tri  1, 13, 14
    load_vtxs vtxObjBlanket0039, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 11, 13
    load_vtxs vtxObjBlanket003A, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  7,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket003B, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  5,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket003C, 15
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 14
    load_vtxs vtxObjBlanket003D, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 10
    load_vtxs vtxObjBlanket003E, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  3,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket003F, 14
    tri  0,  1,  2
    tri  3,  4,  1
    tri  5,  6,  7
    tri  8,  9, 10
    tri 11, 12, 13
    load_vtxs vtxObjBlanket0040, 14
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10, 11
    tri 12, 13, 11
    load_vtxs vtxObjBlanket0041, 11
    tri  0,  1,  2
    tri  3,  4,  5
    tri  6,  7,  8
    tri  9, 10,  8
    .dd 0xB800000000000000 ; G_ENDDL
