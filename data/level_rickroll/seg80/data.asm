lvl_rickroll_dma_texture:
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)

    lui   a0, hi(gRickrollTimer)
    lw    at, lo(gRickrollTimer)(a0)
    addiu at, at, 1
    sw    at, lo(gRickrollTimer)(a0)
    sltiu v0, at, 150
    sw    v0, 0x18(sp)

    addiu a0, a0, lo(gRickrollTexDest)
    li    a1, gRickrollTexData
    srl   at, at, 1
    sll   at, at, 13
    sll   v0, at, 1
    addu  a1, v0, a1
    addu  a1, a1, at
    jal   dma_copy
    addiu a2, a1, (128 * 96 * 2)

    lw    v0, 0x18(sp)
    xori  v0, v0, 1
    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18

gRickrollTimer:
    .dw 0

lvl_rickroll_play_sound:
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)
    xori  a0, r0, 1
    ori   a1, r0, 8
    jal   play_music
    subu  a2, r0, r0
    addiu v0, r0, 1
    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18

.align 8
gRickrollTexDest:
    texLevelRickroll01n0000: .fill (128 * 16 * 2), 0x00
    texLevelRickroll01n0001: .fill (128 * 16 * 2), 0x00
    texLevelRickroll01n0002: .fill (128 * 16 * 2), 0x00
    texLevelRickroll01n0003: .fill (128 * 16 * 2), 0x00
    texLevelRickroll01n0004: .fill (128 * 16 * 2), 0x00
    texLevelRickroll01n0005: .fill (128 * 16 * 2), 0x00
