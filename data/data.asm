.orga 0x2AC6B0
.area (gAnimData - 0x2AC6B0)
.headersize 0
.include "rickroll_textures/data.asm"
; 0x077950
.endarea

.orga gAnimData
.skip (8 + 0x62 * 8)
    .dw animMarioSleepStart,  (animMarioSleepEnd  - animMarioSleepStart)
    .dw animMarioWaveStart,   (animMarioWaveEnd   - animMarioWaveStart)
    .dw animMarioSecretStart, (animMarioSecretEnd - animMarioSecretStart)

.orga gSeqData
.skip (4 + 8*4)
    .dw seqHubStart,      (seqHubEnd      - seqHubStart)
    .dw seqHubSleepStart, (seqHubSleepEnd - seqHubSleepStart)
    .dw seqSecretStart,   (seqSecretEnd   - seqSecretStart)
    .dw seqEndStart,      (seqEndEnd      - seqEndStart)
    .dw seqRickrollStart, (seqRickrollEnd - seqRickrollStart)

.orga gInstData
.skip 0x0C
    .db 0x01, 0x22 ; 0x01 star dance
    .db 0x01, 0x11 ; 0x02 level select (title screen)
    .db 0x01, 0x22 ; 0x03 null         (bob-omb battlefeild)
    .db 0x01, 0x18 ; 0x04 hub world    (inside castle)
    .db 0x01, 0x14 ; 0x05 hub sleep    (dire dire docks)
    .db 0x01, 0x13 ; 0x06 secret       (shifting sand land)
    .db 0x01, 0x25 ; 0x07 end          (bowser fight)
    .db 0x01, 0x0A ; 0x08 rickroll     (snowman's land)
    .db 0x01, 0x0D ; 0x09 tick tock clock
    .db 0x02, 0x21 ; 0x0A big boo's haunt
    .db 0x10
    .db 0x01, 0x14 ; 0x0B lullaby
    .db 0x01, 0x15 ; 0x0C hazy maze cave
    .db 0x01, 0x16 ; 0x0D star select
    .db 0x01, 0x17 ; 0x0E wing cap
    .db 0x01, 0x18 ; 0x0F metal cap
    .db 0x01, 0x12 ; 0x10 bowser jingle
    .db 0x01, 0x19 ; 0x11 bowser level
    .db 0x01, 0x1F ; 0x12 high score
    .db 0x01, 0x21 ; 0x13 merry-go-round
    .db 0x01, 0x1A ; 0x14 race fanfare
    .db 0x01, 0x0E ; 0x15 star spawn
    .db 0x01, 0x1B ; 0x16 boss battle
    .db 0x01, 0x1A ; 0x17 key collect
    .db 0x01, 0x1C ; 0x18 endless staircase
    .db 0x01, 0x1D ; 0x19 final bowser
    .db 0x01, 0x25 ; 0x1A credits
    .db 0x01, 0x14 ; 0x1B unlock jingle
    .db 0x01, 0x20 ; 0x1C toad message
    .db 0x01, 0x1E ; 0x1D peach's jingle
    .db 0x01, 0x1B ; 0x1E intro cutscene
    .db 0x01, 0x1A ; 0x1F final bowser fanfare
    .db 0x01, 0x23 ; 0x20 end cutscene
    .db 0x01, 0x24 ; 0x21 file select
    .db 0x01, 0x1B ; 0x22 lakitu's jingle

.orga rom_end
.include "anims/data.asm"
.include "seq/data.asm"
.include "level_title/data.asm"
.include "level_hub/data.asm"
.include "level_rickroll/data.asm"
.include "level_main/data.asm"
.include "level_secret/data.asm"
.include "level_kuppa/data.asm"
.include "star_bg/data.asm"

.include "ass_paper.asm"
