.include "sm64/symbols.inc"
.include "sm64/gbi.inc"
.include "sm64/controller.inc"
.include "sm64/object.inc"
.include "sm64/mario.inc"
.include "sm64/level_script.inc"
.include "sm64/text.inc"

.macro seglabel, label
.headersize 0
.align 16
label:
.endmacro
