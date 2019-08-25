level_kuppa_set_dialogue:
    sw    ra, (sp)
    jal   segmented_to_virtual
    lui   a0, hi(gsDialogueTable)
    lw    ra, (sp)
    lui   v1, hi(diagEntryKuppaDab)
    addiu at, v1, lo(diagEntryKuppaDab)
    sw    at, lo(gsDialogueTable + 4*0x77)(v0)
    addiu at, v1, lo(diagStrKuppaLvlname - 3)
    jr    ra
    sw    at, lo(gsCourseNameTable + 4*15)(v0)

gEndCamTrack: ftrack  0, 160, 352
gEndObjTrack: ftrack 96, 128,   0

level_kuppa_heal_mario:
    lui   a0, hi(gAreaNo)
    lh    at, lo(gAreaNo)(a0)
    addiu at, at, -2
    bne   r0, at, @@noset
    addiu a2, r0, 0x1319
    sw    a2, lo(gMarioState + mAction)(a0)
    sh    r0, lo(gHudFlags)(a0)
@@noset:
    addiu a2, r0, 0x0880
    sh    a2, lo(gMarioState + mHealth)(a0)
    addiu a2, r0, 7
    sh    a2, lo(gCameraMode)(a0)
    jr    ra
    and   v0, a1, a1

rig_select_print_text:
    beqz  a0, @@jrra
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)

    jal   dl_make_ortho_mtx
    sh    r0, 0x1E(a1)

    lui   v1, hi(gMasterDL)
    lw    v0, lo(gMasterDL)(v1)
    li    at, 0x06000000
    sw    at, 0x00(v0)
    li    at, dlLevelKuppa02n0000
    sw    at, 0x04(v0)
    addiu v0, v0, 8
    sw    v0, lo(gMasterDL)(v1)

.macro puts, x, y, str
    lui   a2, hi(str)
    xori  a1, r0, y
    addiu a2, a2, lo(str)
    jal   print_dialogue_text
    xori  a0, r0, x
.endmacro

    puts  57, 240 - 16*6 + 4, @@tthanks
    puts 147, 240 - 16*7,  @@tbarru
    puts 151, 240 - 16*8,  @@tgtm
    puts 145, 240 - 16*9,  @@trovert
    puts 145, 240 - 16*10, @@tskydev

    lui   a1, 0x4080
    lui   a2, 0x4080
    lui   a3, 0x3F80
    jal   dl_make_scale_mtx
    addiu a0, r0, 2

    puts (320/4 - 36) / 2, 240/4 - 20, @@tend

    lw    ra, 0x14(sp)
@@jrra:
    jr    ra
    addiu sp, sp, 0x18

@@tend:     .string "The End"
@@tthanks:  .string "Special thanks to all of the play testers!"
@@tbarru:   .string "barru"
@@tgtm:     .string "GTM"
@@trovert:  .string "Rovert"
@@tskydev:  .string "skydev"

.align 4, 0xFF

actf_kuppa_end:
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)

    lw    a1, mMarioObj(a0)
    sw    r0, mPosX(a0)
    sw    r0, oGfxPosZ(a1)
    sw    r0, mPosZ(a0)
    sh    r0, oGfxRotX(a1)
    sh    r0, mRotZ(a0)
    sw    r0, oGfxPosX(a1)
    sw    r0, mPosY(a0)
    sw    r0, oGfxPosY(a1)
    sw    r0, oGfxRotY(a1)
    sw    r0, mRotX(a0)

    jal   set_mario_anim
    ori   a1, r0, 0x1D

    lw    v0, gCameraPtr
    ori   at, r0, 0xB2
    sb    at, 0x30(v0)

    lui   v0, 0
    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18
