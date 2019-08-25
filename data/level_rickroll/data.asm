seglabel seg07LevelRickrollStart
.headersize (0x07000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg07/data.mio0"
.else
    .include "seg07/data.asm"
.endif
seglabel seg07LevelRickrollEnd

seglabel seg0ELevelRickrollStart
.headersize (0x0E000000 - orga())
.include "seg0E/data.asm"
seglabel seg0ELevelRickrollEnd

seglabel seg80LevelRickrollStart
.headersize (gCodeDestExt - orga())
.include "seg80/data.asm"
seglabel seg80LevelRickrollEnd
