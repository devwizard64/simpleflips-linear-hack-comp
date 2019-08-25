diagStrMainToadHi:
    .string  "hi"
diagStrMainWallkick:
    .stringn "Wall Kicks are differnt\n"
    .stringn "in this game: when you hit\n"
    .stringn "a wall, you stay on the\n"
    .stringn "wall until you press [A] to\n"
    .string  "jump off."
diagStrMainChuckya:
    .stringn "Watch out, Chuckya will\n"
    .stringn "yeet you off your platform\n"
    .string  "if you're not careful!"
diagStrMainShell:
    .stringn "Shells are lava-proof, so\n"
    .stringn "you can ride them across\n"
    .stringn "here safely. Be careful\n"
    .stringn "though, you can speed up\n"
    .stringn "out of control when riding\n"
    .string  "one!"
diagStrMainLvlname:
    .string  "a"

.align 4
diagEntryMainToadHi:   .dw 0x00000001, 0x0100001E, 0x00C80000, diagStrMainToadHi
diagEntryMainWallkick: .dw 0x00000001, 0x0500001E, 0x00C80000, diagStrMainWallkick
diagEntryMainChuckya:  .dw 0x00000001, 0x0300001E, 0x00C80000, diagStrMainChuckya
diagEntryMainShell:    .dw 0x00000001, 0x0300001E, 0x00C80000, diagStrMainShell
