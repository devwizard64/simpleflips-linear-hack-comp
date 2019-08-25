seglabel seg0AStarBgStart
.headersize (0x0A000000 - orga())
.ifdef MIO0_ROM
    .incbin "seg0A/data.mio0"
.else
    .include "seg0A/data.asm"
.endif
seglabel seg0AStarBgEnd

seglabel seg80StarBgStart
.headersize (gCodeDest - orga())
.include "seg80/data.asm"
seglabel seg80StarBgEnd
