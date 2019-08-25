level_main_set_dialogue:
    sw    ra, (sp)
    jal   segmented_to_virtual
    lui   a0, hi(gsDialogueTable)
    lui   v1, hi(diagEntryMainToadHi)

    addiu at, v1, lo(diagEntryMainToadHi)
    sw    at, lo(gsDialogueTable + 4*0)(v0)
    addiu at, v1, lo(diagEntryMainWallkick)
    sw    at, lo(gsDialogueTable + 4*1)(v0)
    addiu at, v1, lo(diagEntryMainChuckya)
    sw    at, lo(gsDialogueTable + 4*2)(v0)
    addiu at, v1, lo(diagEntryMainShell)
    sw    at, lo(gsDialogueTable + 4*3)(v0)
    addiu at, v1, lo(diagStrMainLvlname - 3)
    sw    at, lo(gsCourseNameTable + 4*15)(v0)

    lw    ra, (sp)
    jr    ra
    sll   v0, at, 16

bhv_warp_pipe_levelsel_loop:
    lw    a0, gCurrentObject
    lui   at, hi(gMarioState + mPos)
    lwc1  f0, oPosY(a0)
    lui   v0, 0x4200 ; 32.0F
    lwc1  f2, lo(gMarioState + mPosY)(at)
    mtc1  v0, f4
    sub.s f2, f2, f4
    c.lt.s f2, f0
    nop
    bc1f  @@end
    lwc1  f0, oPosX(a0)
    lwc1  f2, lo(gMarioState + mPosX)(at)
    sub.s f0, f0, f2
    mul.s f0, f0, f0
    lwc1  f2, oPosZ(a0)
    lwc1  f4, lo(gMarioState + mPosZ)(at)
    sub.s f2, f2, f4
    mul.s f2, f2, f2
    add.s f0, f0, f2
    lui   at, 0x42C8 ; 100.0F
    sqrt.s f0, f0
    mtc1  at, f2
    c.lt.s f0, f2
    lw    a0, oBhvParam2(a0)
    bc1f  @@end
    sw    ra, 0x0C(sp)
    jal   transition_to_level
    xori  a1, r0, 1
    li    a0, 0x7016FF81
    lw    a1, gCurrentObject
    jal   set_sound
    addiu a1, a1, 0x54
    lw    ra, 0x0C(sp)
@@end:
    jr    ra
    xor   v0, k0, k0
