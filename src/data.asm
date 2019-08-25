.headersize (0x80246000 - 0x001000)

; ; debug print level
; .org 0x80248AF0
; .skip 0xF0
; lui a2, hi(@@text)
; addiu a2, a2, lo(@@text)
; lui a3, hi(gAreaNo)
; lh a3, lo(gAreaNo)(a3)
; ori a0, r0, 160-24
; jal print_text_fmt_int
; ori a1, r0, 120-8
; nop
; nop
; nop
; nop
; nop
; nop
; nop
; .skip 8
; @@text: .asciiz "l %2d"

; viewport thing
.org debug_handle_input
vp_hook:
    lui   t3, hi(gTransitionEnabled)
    lbu   t4, lo(gTransitionEnabled)(t3)
    beqz  t4, @@end
    lbu   at, lo(gTransitionType)(t3)
    lui   t4, hi(gTransitionTimer)

    lw    v0, lo(gGlobalTimer)(t4)
    sltiu v1, v0, 0x35
    bne   r0, v1, @@end
    lhu   v0, lo(gLevelNo)(t4)
    addiu v0, v0, -4
    bne   r0, v0, @@noend
    lhu   v1, lo(gAreaNo)(t3)
    addiu v1, v1, -2
    beqz  v1, @@end
@@noend:

    lbu   t3, lo(gTransitionLength)(t3)
    lbu   t4, lo(gTransitionTimer)(t4)

; at = type
; t3 = length
; t4 = timer
; x * t4 / t3

    andi  at, at, 1
    bnez  at, @@nosub
    nop
    subu  t4, t3, t4
@@nosub:
    mult  t4, t4
    mflo  t4
    sll   t4, t4, 3
    div   t4, t3
    mflo  t4
    addu  t4, t4, t3

    mult  t4, a1
    mflo  a1
    div   a1, t3
    mflo  a1
    mult  t4, a2
    mflo  a2
    div   a2, t3
    mflo  a2

@@end:
    sll   t3, a1, 2
    jr    ra
    sll   t4, a2, 2

bowser_hook:
    lw    a0, 0x28(sp)
    lhu   at, mRotY(a0)
    xori  at, at, 0x8000
    jr    ra
    sh    at, mRotY(a0)

.org render_world
.skip (0x0391E8 - 0x039130)
    jal   vp_hook
    nop

; move segment pool elsewhere
.org init_memory_buffer
.skip 8
    ; li    t6, 0x8005C000
    li    t6, 0x80025C00
    sw    t6, 0x1C(sp)
    li    t7, 0x801C1000
    sw    t7, 0x18(sp)

; debug functions
.org 0x8029D6E8 :: .dw 0x0C0B2B32
.org 0x802B785C :: .dw 0x0C0AD167
.org 0x802CADC0 :: .dw 0x080B2B72
.org 0x802CAE8C :: .dw 0x080B2BA7
; .org 0x802CB0A8 :: .dw 0x08091814 ; doesnt work with above

; exit course patch
.org level_update_paused
.skip (0x006668 - 0x0065D4)
    addiu a0, r0, 1

; intro cutscene skip
.org init_level
.skip (0x8024BB78 - 0x8024BA8C)
    nop

; clear new save file flag
.org level_load_save_data
.skip (0x8024BD98 - 0x8024BD5C)
    sb    r0, 0xB26E(at)

; sign read mask
.org interact_message_a
.skip (0x8024FF1C - 0x8024FF04)
    andi  t8, t7, 0x2000
.org interact_message_b
.skip (0x802500B4 - 0x80250098)
    andi  t8, t7, 0x2000

; dab
.org interact_star
.skip (0x8024DDDC - 0x8024DC28)
    nop
    nop

; mario sleep action
.org actf_debug_free_move
    sw    ra, 0x0C(sp)
    lw    a1, mMarioObj(a0)
    ori   at, r0, 0x4000
    sh    at, oGfxRotY(a1)
    sw    r0, mPosZ(a0)
    sw    r0, mPosX(a0)
    sw    r0, oGfxPosZ(a1)
    sh    r0, oGfxRotX(a1)
    sh    r0, mRotZ(a0)
    sw    r0, mPosY(a0)
    sw    r0, oGfxPosX(a1)
    sw    at, mRotX(a0)
    sw    r0, oGfxPosY(a1)

    lw    at, mUnk98(a0)
    xori  v0, r0, 3
    sb    v0, 0x05(at)

    lui   at, hi(gCameraPtr)
    lw    v0, lo(gCameraPtr)(at)
    sb    r0, 0x30(v0)

    lw    at, mController(a0)
    lhu   at, contBtnPressed(at)
    andi  at, at, (A_BUTTON | B_BUTTON | Z_TRIG)
    beqz  at, @@nocancel
    lui   at, 0x4380 ; 256.0F
    li    a1, 0x0C400201
    sw    at, mPosZ(a0)
    jal   set_mario_action
    sh    r0, mRotY(a0)
    andi  a0, r0, 0xBA17
    ori   a1, r0, 0x04
    jal   set_music
    or    a2, a0, r0
    la    a1, gMenuCamDist
    lui   a0, 0x303B
    jal   set_sound
    ori   a0, a0, 0xFF81
    lw    ra, 0x0C(sp)
    jr    ra
    nop
@@nocancel:

    xori  at, r0, 0xB2
    sb    at, 0x30(v0)
    jal   set_mario_anim
    xori  a1, r0, 0x62
    lw    ra, 0x0C(sp)
    jr    ra
    and   v0, r0, ra

; star dance patch
.org mario_star_dance_handler
.skip (0x013238 - 0x013184)
    xori  at, r0, 4

; action hook
.org mario_execute_cutscene_action
.skip (0x018ABC - 0x018798)
    jal   actf_kuppa_end

; shell patch
.org update_shell_speed
.skip (0x01FF04 - 0x01FE18)
    swc1  f8, 0x1C(sp)
.skip (0x01FF30 - 0x01FF08)
    swc1  f18, 0x1C(sp)
.skip (0x01FF48 - 0x01FF34)
    nop
.skip (0x02001C - 0x01FF4C)
    swc1  f16, 0x1C(sp)

; wall kick patch
.org actf_air_hit_wall
.skip (0x0289C4 - 0x028988)
    slti  at, r0, 3
.skip (0x028B40 - 0x0289C8)
    or    v0, r0, r0

; bowser patch
.org actf_holding_bowser
.skip (0x030BB0 - 0x030B34)
    jal   bowser_hook
.skip (0x030CBC - 0x030BB4)
    .dh 0x1000 :: .skip 2
.skip (0x030CD4 - 0x030CC0)
    .dh 0x1000 :: .skip 2
.skip (0x030D10 - 0x030CD8)
    .dh 0x1000 :: .skip 2
.skip (0x030D30 - 0x030D14)
    .dh 0x1000 :: .skip 2

; sleep camera hook
.org cam_cutscene_credits
.skip (0x052D34 - 0x052C40)
    addiu at, r0, (4) << 4 | (2)
.skip (0x052DE0 - 0x052D38)
    lui   t5, hi(gEndCamTrack)
    addiu t5, t5, lo(gEndCamTrack)
    sw    t5, 0x30(sp)
    lui   t6, hi(gEndObjTrack)
    addiu t6, t6, lo(gEndObjTrack)
    sw    t6, 0x34(sp)
.skip (0x053024 - 0x052DF8)
    lui   t0, hi(gSleepCamTrack)
    addiu t0, t0, lo(gSleepCamTrack)
    sw    t0, 0x30(sp)
    lui   t1, hi(gSleepObjTrack)
    addiu t1, t1, lo(gSleepObjTrack)
    sw    t1, 0x34(sp)

; ! box patch
.org bhv_exbox_break
.skip (0x07C938 - 0x07C8D0)
    slti  at, r0, 0x69

; red coin patch
.org bhv_red_coin_loop
    addiu sp, sp, -0x18
    sw    ra, 0x14(sp)

; check if we are touching the red coin
    lui   t0, hi(gCurrentObject)
    lw    t0, lo(gCurrentObject)(t0)
    lw    t1, 0x0134(t0) ; interaction flags
    andi  t2, t1, 0x8000
    beqz  t2, @@end
    sw    r0, 0x0134(t0) ; clear interaction flags

; check if we have a parent star spawner
    lw    a0, 0x0068(t0) ; parent obj ptr
    beqz  a0, @@isregularcoin
    nop

; check if this isnt the first coin
    lw    t1, 0x00F4(a0) ; parent obj -> number of red coins
    ori   t2, r0, 1
    beqz  t1, @@isfirstcoin
    sw    t2, 0x00F4(a0)

; spawn red coin
    lui   a2, 0x1300
    ori   a2, a2, 0x3EAC
    jal   spawn_object
    ori   a1, r0, 0xD7

; move to last red coin pos
    lw    a0, 0x0068(v0) ; parent obj ptr
    lwc1  f4, 0x0100(a0) ; last y
    swc1  f4, 0x00A4(v0) ; coin y
    lwc1  f0, 0x00F8(a0) ; last x
    lwc1  f2, 0x00FC(a0) ; last z
    swc1  f2, 0x00A8(v0) ; coin z
    swc1  f0, 0x00A0(v0) ; coin x

@@isfirstcoin:
    lui   t0, hi(gCurrentObject)
    lw    t0, lo(gCurrentObject)(t0)
    lwc1  f2, 0x00A8(t0) ; coin z
    lwc1  f0, 0x00A0(t0) ; coin x
    swc1  f2, 0x00FC(a0) ; last z
    lwc1  f4, 0x00A4(t0) ; coin y
    swc1  f0, 0x00F8(a0) ; last x
    swc1  f4, 0x0100(a0) ; last y

; spawn orange number
    or    a1, r0, r0
    or    a2, r0, r0
    or    a3, r0, r0
    jal   0x802E5C6C
    ori   a0, r0, 1

; play red coin sound
    lui   a0, 0x7828
    ori   a0, a0, 0x9081
    lui   a1, hi(gMenuCamDist)
    jal   set_sound
    addiu a1, a1, lo(gMenuCamDist)

@@isregularcoin:
; run coin collected function
    jal   0x802E5EA4
    nop

@@end:
    lw    ra, 0x14(sp)
    jr    ra
    addiu sp, sp, 0x18

; course no table
.org gLevelToCourseTbl
;       Level  LL / CC
    .db 0x00 ;  1 /  0 Hub
    .db 0x10 ;  2 / 16 Rickroll
    .db 0x10 ;  3 / 16 Main
    .db 0x10 ;  4 /  5 Kuppa
    .db 0x00 ;  5 /  4 CCM
    .db 0x00 ;  6 /  0 Inside
    .db 0x00 ;  7 /  6 HMC
    .db 0x00 ;  8 /  8 SSL
    .db 0x00 ;  9 /  1 BoB
    .db 0x00 ; 10 / 10 SL
    .db 0x00 ; 11 / 11 WDW
    .db 0x00 ; 12 /  3 JRB
    .db 0x00 ; 13 / 13 THI
    .db 0x00 ; 14 / 14 TTC
    .db 0x00 ; 15 / 15 RR
    .db 0x00 ; 16 /  0 Outside
    .db 0x00 ; 17 / 16 BitDW
    .db 0x00 ; 18 / 22 VCutM
    .db 0x00 ; 19 / 17 BitFS
    .db 0x00 ; 20 / 24 SA
    .db 0x00 ; 21 / 18 BitS
    .db 0x00 ; 22 /  7 LLL
    .db 0x00 ; 23 /  9 DDD
    .db 0x00 ; 24 /  2 WF
    .db 0x00 ; 25 / 25 Cake
    .db 0x00 ; 26 /  0 Courtyard
    .db 0x00 ; 27 / 19 PSS
    .db 0x00 ; 28 / 20 CotMC
    .db 0x00 ; 29 / 21 TotWC
    .db 0x00 ; 30 / 16 Kuppa1
    .db 0x00 ; 31 / 23 WMotR
    .db 0x00 ; 32 /  0
    .db 0x00 ; 33 / 17 Kuppa2
    .db 0x00 ; 34 / 18 Kuppa3
    .db 0x00 ; 35 /  0
    .db 0x00 ; 36 / 12 TTM
    .db 0x00 ; 37 /  0
    .db 0x11 ; 38 /  Secret
    .db 0x00 ; 39 /  0
    .db 0x00 ; 40 /  0

; dialogue sounds
.org gDialogueSfxTable
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .db 0xFF, 0xFF

.org gDialogueSfxs
    .dw 0x50210081 ; ukiki
    .dw 0x502D0081 ; racing penguin
    .dw 0x505F8091 ; bowser jingle + laugh
    .dw 0x503DA081 ; koopa the quick
    .dw 0x50410081 ; king bob-omb
    .dw 0x50480081 ; boo
    .dw 0x50584081 ; bob-omb buddy
    .dw 0x50388081 ; bowser laugh
    .dw 0x90694081 ; king whomp
    .dw 0x506F0081 ; wiggler
    .dw 0x30703081 ; yoshi
    .dw 0x00000000 ; null
    .dw 0x00000000 ; null
    .dw 0x00000000 ; null
    .dw 0x00000000 ; null

; mario rig
.orga 0x12A784
    .dw 0x16000063, 0x00B40064
    .dw 0x04000000
        .dw 0x1D000000, 0x00004000
        .dw 0x04000000
            .dw 0x18000000, 0x80277D6C
            .dw 0x18000000, 0x802770A4
            .dw 0x0E000000, 0x80277150
            .dw 0x04000000
                .dw 0x02010000, 0x17002CE0
                ; .dw 0x02010000, 0x17002D7C
            .dw 0x05000000
            .dw 0x18000001, 0x80277D6C
        .dw 0x05000000
    .dw 0x05000000
    .dw 0x01000000

.include "level.asm"
