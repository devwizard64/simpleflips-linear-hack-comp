seglabel seg07LevelKuppaStart
.headersize (0x07000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg07/data.mio0"
.else
    .include "seg07/data.asm"
.endif
seglabel seg07LevelKuppaEnd

seglabel seg0ELevelKuppaStart
.headersize (0x0E000000 - orga())
.include "seg0E/data.asm"
seglabel seg0ELevelKuppaEnd

seglabel seg80LevelKuppaStart
.headersize (gCodeDestExt - orga())
.include "seg80/data.asm"
seglabel seg80LevelKuppaEnd
