level_secret_init:
    sw    ra, 0x0C(sp)
    ori   a0, r0, 1
    ori   a1, r0, 0x06
    jal   play_music
    srl   a2, a0, 1
    lw    ra, 0x0C(sp)

level_secret_loop:
    jr    ra
    sra   v0, r0, 4
