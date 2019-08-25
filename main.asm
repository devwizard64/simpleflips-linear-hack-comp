.n64
.sym on
.relativeinclude on
.open "nsme.z64", defined(MIO0_ROM) ? "build/mario.z64" : "build/mario_dev.z64", 0

.orga 0x20
     ; "01234567890123456789"
.ascii "MARION64            "

.include "include/sm64.inc"
.include "include/macros.inc"
.ifdef MIO0_ROM
    .include "build/extern_symbols.inc"
.endif

.include "src/data.asm"
.include "data/data.asm"
.include "sound/data.asm"

.close
