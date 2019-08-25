.headersize 0

.macro lvlsel_str, str
    .asciiz str
    .align 16
.endmacro

.orga gLevelSelectNames
    lvlsel_str "hub"
    lvlsel_str "main"
    lvlsel_str "main2"
    lvlsel_str "kuppa"
    lvlsel_str "creeper"
    lvlsel_str "aw man"
    lvlsel_str "so we back in"
    lvlsel_str "the mine"
    lvlsel_str "got our pickaxe"
    lvlsel_str "swinging from"
    lvlsel_str "side to side"
    lvlsel_str "side side to"
    lvlsel_str "side"
    lvlsel_str "this task a"
    lvlsel_str "grueling one"
    lvlsel_str "hope to find"
    lvlsel_str "some diamonds"
    lvlsel_str "tonight night"
    lvlsel_str "night"
    lvlsel_str "diamonds"
    lvlsel_str "tonight"
    lvlsel_str "heads up"
    lvlsel_str "you heara sound"
    lvlsel_str "turn around and"
    lvlsel_str "look up"
    lvlsel_str "total shock"
    lvlsel_str "fills your body"
    lvlsel_str "oh no its you"
    lvlsel_str "again    i can"
    lvlsel_str "never forget"
    lvlsel_str "those eyes eyes"
    lvlsel_str "eyes  eyes eyes"
    lvlsel_str "eyes cause baby"
    lvlsel_str "tonight    the"
    lvlsel_str "creepers trying"
    lvlsel_str "to steal all"
    lvlsel_str "our stuff again"
    lvlsel_str "////////////////////////////////"

.orga rdTextSelectStage
.area 0x10, 0x00
    .asciiz "kill skazzy"
.endarea

.orga rdTextPressStartButton
.area 0x14, 0x00
   .asciiz BUILD_STR
.endarea



.macro c3d, x, y, z, dl
    .dh 0x1181, x, y, z
    .dw dl
.endmacro

.headersize (0x0E000000 - lvlTitleSeg0EStart)
.org rigLevelSelect
.skip (0x268454 - 0x268434)
    .dw 0x1900803F, 0x00000000
.skip (0x268490 - 0x26845C)
    c3d -120, 300, 0, dlLevelSelectMarioA
    c3d   20, 300, 0, dlLevelSelectSuperS
    c3d  140, 300, 0, dlLevelSelectSuperS
    c3d -270, 100, 0, dlLevelSelectSuperP
    c3d -130, 100, 0, dlLevelSelectMarioA
    c3d    0, 100, 0, dlLevelSelectSuperP
    c3d  110, 100, 0, dlLevelSelectSuperE
    c3d  230, 100, 0, dlLevelSelectSuperR
    .dw 0x1E000000, 0x00000000
    .dw 0x1E000000, 0x00000000
    .dw 0x1E000000, 0x00000000
