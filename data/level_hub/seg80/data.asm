rig_select_dorrie:
    beqz  a0, @@end
    lui   at, hi(gGlobalTimer)
    lw    v1, lo(gGlobalTimer)(at)
    andi  at, v1, 2
    srl   at, at, 1
    sh    at, 0x1E(a1)
@@end:
    sw    ra, (sp)
    jal   segmented_to_virtual
    lui   a0, hi(texLevelHub01n0004F2cmd)
    lw    ra, (sp)
    lbu   at, lo(texLevelHub01n0004F2cmd)(v0)
    andi  v1, v1, 0x80
    bne   r0, v1, @@h
    addiu at, at, 1
    addiu at, at, -2
@@h:
    sb    at, lo(texLevelHub01n0004F2cmd)(v0)
    jr    ra
    or    v0, r0, r0

oBlanketTimer  equ 0x00F4
oBlanketUpdate equ 0x00F8
BLANKET_RZ equ 0xF800
BLANKET_SX equ 0x3FE0 ; 1.75F
BLANKET_SY equ 0x3FC0 ; 1.5F
BLANKET_SZ equ 0x3FE0 ; 1.75F

SLEEPBOX_X equ 0x4388 ; 272.0F
SLEEPBOX_Y equ 0x4280 ;  64.0F
SLEEPBOX_Z equ 0x4300 ; 128.0F

bhv_blanket_loop:
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)
    lw    a0, gCurrentObject
    lw    v0, oBlanketTimer(a0)
    ori   v1, r0, (30 * 16)
    sll   at, v0, 14
    div   at, v1
    mflo  at
    andi  v1, at, 0x3FFC
    lui   at, hi(gSineTable)
    addu  at, v1, at
    lwc1  f0, lo(gSineTable)(at)
    lui   at, 0x4080 ; 4.0F
    mtc1  at, f2
    lui   at, BLANKET_SY
    div.s f0, f0, f2
    mtc1  at, f2
    add.s f2, f2, f0
    lui   at, BLANKET_SZ
    swc1  f2, oGfxScaleY(a0)
    sw    at, oGfxScaleZ(a0)
.if (BLANKET_SX != BLANKET_SZ)
    lui   at, BLANKET_SX
.endif
    sw    at, oGfxScaleX(a0)

; check if the player pressed a disable button tm

    lui   a1, hi(gMarioState)
    lw    at, lo(gMarioState + mController)(a1)
    lhu   at, contBtnPressed(at)
    andi  a2, at, (A_BUTTON | B_BUTTON | Z_TRIG)
    beq   r0, a2, @@nodsblupd
    lw    at, oBlanketUpdate(a0)
    b     @@noupdate
    sw    r0, oBlanketUpdate(a0)
@@nodsblupd:

; check if mario is in the sleep box tm
    bne   r0, at, @@nocheck
    lui   at, SLEEPBOX_X
    lwc1  f0, lo(gMarioState + mPosX)(a1)
    mtc1  at, f2
    c.lt.s f0, f2
    lui   at, SLEEPBOX_Z
    bc1f  @@noupdate
    mtc1  at, f0
    lwc1  f2, lo(gMarioState + mPosZ)(a1)
    c.lt.s f2, f0
    lui   at, SLEEPBOX_Y
    bc1f  @@noupdate
    lwc1  f2, lo(gMarioState + mPosY)(a1)
    mtc1  at, f0
    c.lt.s f2, f0
    nop
    bc1f @@noupdate
    xori  at, r0, 1
    sw    at, oBlanketUpdate(a0)
    addiu a0, a1, lo(gMarioState)
    jal   set_mario_action
    ori   a1, r0, 0x130F
    xor   a2, v0, v0
    subu  a0, a2, a2
    jal   set_music
    addiu a1, r0, 0x05
    la    a0, 0x303BFF81
    lui   a1, (gMenuCamDist >> 16)
    jal   set_sound
    xori  a1, a1, (gMenuCamDist & 0xFFFF)
    beq   k0, k0, @@noupdate
@@nocheck:
    addiu v0, v0, 4
    sw    v0, oBlanketTimer(a0)

; play snore
    lui   at, hi(gMarioObject)
    andi  v0, v1, 0x3F80
    lw    a1, lo(gMarioObject)(at)
    xori  at, r0, (0x4000 * 7 / 8)
    addiu a1, a1, 0x54 ; camera distance
    beq   v0, at, @@playsound
    lui   a0, 0x240E ; snore 1
    addiu at, r0, (0x4000 * 3 / 8)
    bne   at, v0, @@noupdate
    lui   a0, 0x240F ; snore 2
@@playsound:
    jal   set_sound
    ori   a0, a0, 0x8081
@@noupdate:
    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18

gSleepCamTrack: ftrack   32, 160, 208
gSleepObjTrack: ftrack -160,  64,   0

rig_select_screen_mask:
    beqz  a0, @@end
    lui   at, hi(gMarioState + mAction)
    addiu v1, r0, 0x130F
    lw    v0, lo(gMarioState + mAction)(at)
    beq   v1, v0, @@mask
    sub   at, r0, r0
    xori  at, at, 1
@@mask:
    sh    at, 0x1E(a1)
@@end:
    jr    ra
    or    v0, r0, r0

lvl_hub_set_dialogue:
    lui   v0, hi(gMarioState + mAction)
    lw    at, lo(gMarioState + mAction)(v0)
    li    v1, 0x0C400201
    bne   v1, at, @@noidle
    ori   a0, r0, 0x1924
    sw    a0, lo(gMarioState + mAction)(v0)
@@noidle:
    bne   a0, at, @@nospin
    sw    ra, 0x04(sp)
    sw    v1, lo(gMarioState + mAction)(v0)
@@nospin:

    lui   at, 0x4270 ; 60.0F
    sw    at, lo(gMarioState + mVelY)(v0)

    jal   segmented_to_virtual
    lui   a0, hi(gsDialogueTable)
    lui   v1, hi(diagEntryHubWelcome)
    addiu at, v1, lo(diagEntryHubWelcome)
    sw    at, lo(gsDialogueTable + 4*0)(v0)
    addiu at, v1, lo(diagEntryHubGpsign)
    sw    at, lo(gsDialogueTable + 4*1)(v0)
    addiu at, v1, lo(diagEntryHubLegbroken)
    sw    at, lo(gsDialogueTable + 4*2)(v0)
    addiu at, v1, lo(diagEntryHubMegachicken)
    sw    at, lo(gsDialogueTable + 4*3)(v0)
    addiu at, v1, lo(diagEntryHubStop)
    lw    ra, 0x04(sp)
    jr    ra
    sw    at, lo(gsDialogueTable + 4*4)(v0)

bhv_dorrie_loop:
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)

    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18

bhv_gp_sign_loop:
    sw    ra, -0x04(sp)

    jal   obj_is_mario_ground_pounding
    addiu sp, sp, -0x18
    beqz  v0, @@end

; make mario fall over
    la    a1, 0x010208B3
    li    a0, gMarioState
    jal   set_mario_action
    add   a2, r0, r0

; change dialogue
    lw    v1, gCurrentObject
    xori  at, r0, 2
    sw    at, oBhvParam2(v1)


.macro breakcase, offset
    lb    v0, offset(at)
    bnez  v0, @@breakend
    sb    r0, offset(at)
.endmacro

; break marios leg
    lw    a1, gMarioObject
    lw    at, 0x0014(a1)
    breakcase 0x085B ; right leg
    breakcase 0x07DB ; left leg
    breakcase 0x0603 ; right arm
    breakcase 0x0493 ; left arm

; replaced code
; comment this out and uncomment the code
; below to restore the original thing
    li    a0, gMarioState
    li    a1, 0x20001305
    jal   set_mario_action
    xori  a2, r0, 4
    jal   @@end

; ; head
;     ori   v0, r0, 0xFF00
;     sh    v0, 0x017C(at)
;     sh    v0, 0x017E(at)
;     sh    v0, 0x0180(at)
;     li    a0, gMarioState
;     sb    r0, mNumLives(a0)
;     li    a1, 0x00021313
;     jal   set_mario_action
;     or    a2, r0, r0
;     lw    a1, gMarioObject
@@breakend:

; MARIO SCREAMING
    la    a0, 0x2414FF81
    jal   set_sound
    addiu a1, a1, 0x54

@@end:
    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18

@@text: .asciiz "P2 %x"
.align 4

bhv_warp_pipe_dw_loop:
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
    xori  a1, r0, 0
    li    a0, 0x7016FF81
    lw    a1, gCurrentObject
    jal   set_sound
    addiu a1, a1, 0x54
    lw    ra, 0x0C(sp)
@@end:
    jr    ra
    xor   v0, k0, k0
