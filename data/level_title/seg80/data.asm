lvl_title_fb_preamble:
    addiu at, r0, 1
    lui   v0, hi(gFrameBuffers)
    jr    ra
    sw    at, lo(gFrameBuffers)(v0)

lvl_title_snd_hwtest:
    sw    ra, (sp)
    la    a1, gMenuCamDist
    lui   a0, 0x701F
    jal   set_sound
    ori   a0, a0, 0xFF81

; check self-modifying code
    jal   lvl_title_smc_func
    lui   v0, hi(lvl_title_smc_func)
    sh    r0, lo(lvl_title_smc_func + 6)(v0)
    cache 0x19, lo(lvl_title_smc_func + 4)(v0)
    jal   lvl_title_smc_func
    cache 0x10, lo(lvl_title_smc_func + 4)(v0)
    bnez  at, @@end
    sb    at, lo(gHwTestStat)(v0)

; check framebuffer emulation
    lui   at, hi(gFrameBuffers)
    lw    at, lo(gFrameBuffers)(at)
    sll   at, at, 1
    sb    at, lo(gHwTestStat)(v0)

@@end:
    lw    ra, (sp)
    jr    ra
    xor   v0, r0, r0

lvl_title_smc_func:
    jr    ra
    xori  at, r0, 1

gHwTestStat: .dw 0

rig_select_show_error:
    lui   at, hi(gGlobalTimer)
    lw    v0, lo(gGlobalTimer)(at)
    sltiu at, v0, 0x40
    bnez  at, @@no
    andi  at, v0, 0xABC0
    andi  at, v0, 0x3F
    lui   v0, hi(gSineTable)
    sll   at, at, 7
    addu  at, at, v0
    lwc1  f2, lo(gSineTable)(at)
    lui   at, 0x437F
    mtc1  at, f0
    mul.s f2, f0, f2
    cvt.w.s f0, f2
    mfc1  at, f0
    sll   v0, at, 8
    mfc1  at, f0
    or    v0, at, v0
    sll   at, v0, 8
    mfc1  v0, f0
    xor   at, v0, at
    sll   v0, at, 8
@@no:
    addiu at, v0, 0xFF
    lui   v1, hi(gMasterDL)
    lw    v0, lo(gMasterDL)(v1)
    sw    at, 4(v0)
    lui   at, 0xFB00
    sw    at, 0(v0)
    addiu v0, v0, 8
    sw    v0, lo(gMasterDL)(v1)

    beqz  a0, @@end
    lui   at, hi(gHwTestStat)
    lbu   at, lo(gHwTestStat)(at)
    sltu  at, r0, at
    sh    at, 0x1E(a1)
@@end:
    jr    ra
    or    v0, r0, r0

lvl_title_halt_on_err:
    lui   v0, hi(gHwTestStat)
    lbu   v0, lo(gHwTestStat)(v0)
    sltu  v0, r0, v0
    jr    ra
    xori  v0, v0, 1

rig_select_error_no:
    beqz  a0, @@end
    lui   at, hi(gHwTestStat)
    lbu   at, lo(gHwTestStat)(at)
    sh    at, 0x1E(a1)
@@end:
    jr    ra
    or    v0, r0, r0
