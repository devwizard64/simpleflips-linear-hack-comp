seglabel seg07LevelTitleStart
.headersize (0x07000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg07/data.mio0"
.else
    .include "seg07/data.asm"
.endif
seglabel seg07LevelTitleEnd

seglabel seg0ELevelTitleStart
.headersize (0x0E000000 - orga())
.include "seg0E/data.asm"
seglabel seg0ELevelTitleEnd

seglabel seg80LevelTitleStart
.headersize (gMio0DestBuf - orga())
.ifdef MIO0_ROM
    .incbin "seg80/data.mio0"
.else
    .include "seg80/data.asm"
.endif
seglabel seg80LevelTitleEnd
