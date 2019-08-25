seglabel seg07LevelHubStart
.headersize (0x07000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg07/data.mio0"
.else
    .include "seg07/data.asm"
.endif
seglabel seg07LevelHubEnd

seglabel seg0ELevelHubStart
.headersize (0x0E000000 - orga())
.include "seg0E/data.asm"
seglabel seg0ELevelHubEnd

seglabel seg80LevelHubStart
.headersize (gCodeDest - orga())
.include "seg80/data.asm"
seglabel seg80LevelHubEnd
