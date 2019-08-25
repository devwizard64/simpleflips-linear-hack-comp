rig_select_star_bg:
    sh    r0, 0x1E(a1)

    sw    ra, (sp)
    jal   segmented_to_virtual
    lui   a0, hi(dlStarBgF2cmdA)
    lw    ra, (sp)

    lui   at, hi(gStarBgTimer)
    lhu   v1, lo(gStarBgTimer)(at)
    addiu v1, v1, -1
    sh    v1, lo(gStarBgTimer)(at)

    andi  a0, v1, 0x03FF
    sll   a0, a0, 14
    srl   a1, v1, 1
    subu  a2, r0, a1
    andi  a1, a1, 0x0FFF
    srl   a2, a2, 1
    andi  a2, a2, 0x0FFF

    lui   at, 0xF200
    or    at, at, a0
    or    a1, at, a1
    or    a2, a2, at
    sw    a2, lo(dlStarBgF2cmdB)(v0)
    jr    ra
    sw    a1, lo(dlStarBgF2cmdA)(v0)

gStarBgTimer:
    .dw 0
