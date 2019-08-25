seglabel seg07LevelMainStart
.headersize (0x07000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg07/data.mio0"
.else
    .include "seg07/data.asm"
.endif
seglabel seg07LevelMainEnd

seglabel seg0ALevelMainStart
.headersize (0x0A000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg0A/data.mio0"
.else
    .include "seg0A/data.asm"
.endif
seglabel seg0ALevelMainEnd

seglabel seg0ELevelMainStart
.headersize (0x0E000000 - orga())
.include "seg0E/data.asm"
seglabel seg0ELevelMainEnd

seglabel seg80LevelMainStart
.headersize (gCodeDest - orga())
.include "seg80/data.asm"
seglabel seg80LevelMainEnd
