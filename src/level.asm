.headersize (0x10000000 - lvlEntrySeg10Start)
.org lvlEntryPoint
.area (0x108A40 - 0x108A10)
    .dw 0x1B040000
    .dw 0x03040002
    .dw 0x34040000
    .dw 0x13040000
    .dw 0x0010000E, seg0ELevelTitleStart, seg0ELevelTitleEnd, lvlLevelTitleEntry
    .dw 0x05080000, lvlEntryPoint
.endarea

.headersize (0x15000000 - lvlBootSeg15Start)
.org lvlBootEntry
.area 0x660
.skip (0x2ABE5C - 0x2ABCA0)
    .dw 0x11080000, 0x8024BD5C
    .dw 0x0A040000
        .dw 0x00100014, 0x002A6120, 0x002A65B0, 0x14000118 ; star select
        .dw 0x06080000, lvlSelectLevel
        .dw 0x03040001
    .dw 0x0B080400, 0x00000000
lvlJumpLSel:
    .dw 0x01100014, 0x00269EA0, 0x0026A3A0, 0x14000190
    ; .dw 0x0110000E, seg0ELevelTitleStart, seg0ELevelTitleEnd, lvlLevelTitleEntry

lvlSelectLevel:
    .dw 0x3C040103
    .dw 0x0C0C0200,  1, lvlJumpHubw
    .dw 0x0C0C0200,  2, lvlJumpRkrl
    .dw 0x0C0C0200,  3, lvlJumpMain
    .dw 0x0C0C0200,  4, lvlJumpKupp
    .dw 0x0C0C0200, 38, lvlJumpScrt
    .dw 0x0C0C0200,  5, lvlJumpLSel
    .dw 0x02040000

lvlJumpHubw: .dw 0x0010000E, seg0ELevelHubStart,      seg0ELevelHubEnd,      lvlLevelHubEntry,      0x07040000
lvlJumpRkrl: .dw 0x0010000E, seg0ELevelRickrollStart, seg0ELevelRickrollEnd, lvlLevelRickrollEntry, 0x07040000
lvlJumpMain: .dw 0x0010000E, seg0ELevelMainStart,     seg0ELevelMainEnd,     lvlLevelMainEntry,     0x07040000
lvlJumpScrt: .dw 0x0010000E, seg0ELevelSecretStart,   seg0ELevelSecretEnd,   lvlLevelSecretEntry,   0x07040000
lvlJumpKupp: .dw 0x0010000E, seg0ELevelKuppaStart,    seg0ELevelKuppaEnd,    lvlLevelKuppaEntry,    0x07040000
.endarea
