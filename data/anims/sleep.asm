.align 4
animMarioSleepStart:
    .dh 0x0001, 0x00BD, 0x0000, 0x0000, 0x0001, 0x0014
    .dw animMarioSleepValues  - animMarioSleepStart
    .dw animMarioSleepIndices - animMarioSleepStart
    .dw animMarioSleepEnd     - animMarioSleepStart

animMarioSleepIndices:
    .dh 0x0001, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002
    .dh 0x0001, 0x0003, 0x0001, 0x0004, 0x0001, 0x0005
    .dh 0x0001, 0x0006, 0x0001, 0x0007, 0x0001, 0x0008
    .dh 0x0001, 0x0009, 0x0001, 0x000A, 0x0001, 0x000B
    .dh 0x0001, 0x000C, 0x0001, 0x000D, 0x0001, 0x000E
    .dh 0x0001, 0x000F, 0x0001, 0x0010, 0x0001, 0x0011
    .dh 0x0001, 0x0012, 0x0001, 0x0013, 0x0001, 0x0014
    .dh 0x0001, 0x0015, 0x0001, 0x0016, 0x0001, 0x0017
    .dh 0x0001, 0x0018, 0x0001, 0x0019, 0x0001, 0x001A
    .dh 0x0001, 0x001B, 0x0001, 0x001C, 0x0001, 0x001D
    .dh 0x0001, 0x001E, 0x0001, 0x001F, 0x0001, 0x0020
    .dh 0x0001, 0x0021, 0x0001, 0x0022, 0x0001, 0x0023
    .dh 0x0001, 0x0024, 0x0001, 0x0025, 0x0001, 0x0026
    .dh 0x0001, 0x0027, 0x0001, 0x0028, 0x0001, 0x0029
    .dh 0x0001, 0x002A, 0x0001, 0x002B, 0x0001, 0x002C
    .dh 0x0001, 0x002D, 0x0001, 0x002E, 0x0001, 0x002F
    .dh 0x0001, 0x0030, 0x0001, 0x0031, 0x0001, 0x0032
    .dh 0x0001, 0x0033, 0x0001, 0x0034, 0x0001, 0x0035
    .dh 0x0001, 0x0036, 0x0001, 0x0037, 0x0001, 0x0038
    .dh 0x0001, 0x0039, 0x0001, 0x003A, 0x0001, 0x003B
    .dh 0x0001, 0x003C, 0x0001, 0x003D, 0x0001, 0x003E

animMarioSleepValues:
    .dh 0xFFC0, 0x006D, 0xFE90, 0x0000, 0x3FFF, 0x0000, 0x0000, 0x0000
    .dh 0x0000, 0x0000, 0x0000, 0x11A7, 0x0000, 0x0000, 0x163B, 0x8875
    .dh 0x7FFF, 0x3508, 0xFD06, 0xE177, 0xD25A, 0x0000, 0x1526, 0xEEF6
    .dh 0xFF8A, 0xF980, 0xF06F, 0x7717, 0x7FFF, 0x35AA, 0x091C, 0x1F33
    .dh 0xD2BA, 0x0000, 0xF080, 0xF2E5, 0x0000, 0x0000, 0xED8C, 0x0000
    .dh 0x0000, 0xBF5F, 0x0040, 0x0056, 0xBCD3, 0x0000, 0x0000, 0x054B
    .dh 0x0095, 0xC000, 0xCC42, 0x0000, 0x0000, 0xBF5F, 0xFEE9, 0xFF3F
    .dh 0xBC52, 0x0000, 0x0000, 0x0640, 0x001B, 0x4000, 0xCB25

.align 4
animMarioSleepEnd: