seglabel seg0ELevelSecretStart
.headersize (0x0E000000 - orga())
.include "seg0E/data.asm"
seglabel seg0ELevelSecretEnd

seglabel seg80LevelSecretStart
.headersize (gCodeDest - orga())
.include "seg80/data.asm"
seglabel seg80LevelSecretEnd

