diagStrHubWelcome:
    .stringn "Welcome to Mario's House!\n"
    .stringn "Hop into the pipe when\n"
    .stringn "you're ready to play the\n"
    .stringn "level. This place has lots\n"
    .stringn "of secrets in it, so stick\n"
    .stringn "around and see if you can\n"
    .stringn "find everything!\n"
    .stringn "This is my first level\n"
    .stringn "hack, so don't expect\n"
    .stringn "too much from this. I\n"
    .stringn "did design everything\n"
    .stringn "exactly as I wanted it\n"
    .stringn "though, so any {bugs}\n"
    .stringn "are likely intentional.\n"
    .stringn "Big shoutouts to skydev\n"
    .stringn "for help with porting\n"
    .stringn "music for this hack, and\n"
    .stringn "to scuttlebug-raiser for\n"
    .stringn "help with making this\n"
    .stringn "hack work perfectly on\n"
    .stringn "console. [**]\n"
    .stringn "Also, shoutouts to the\n"
    .stringn "members of the romhack\n"
    .stringn "discussion channel in\n"
    .stringn "SimpleFlips's Discord\n"
    .stringn "server for help with some\n"
    .stringn "bug fixes, as well as just\n"
    .stringn "being very supportive\n"
    .stringn "to everyone participating\n"
    .string  "in this competition. [**]"
diagStrHubGpsign:
    .stringn "something something\n"
    .string  "groundpound sign"
diagStrHubLegbroken:
    .stringn "oof my leg is broken\n"
    .string  "\t- stick"
diagStrHubMegachicken:
    .stringn "mods are asleep quick\n"
    .string  "post megachicken"
diagStrHubStop:
    .stringn "(edit 19.08.11)\n"
    .stringn "So I made a last minute\n"
    .stringn "change about an hour\n"
    .stringn "before I submitted this,\n"
    .stringn "because what I originally\n"
    .stringn "programmed in might've\n"
    .stringn "taken this joke a bit too\n"
    .stringn "far, and I really don't\n"
    .stringn "want to risk being DQ'd\n"
    .stringn "for it. Nothing else will\n"
    .stringn "happen if you groundpound\n"
    .string  "this sign again."
.align 4

;   ????????    nn??llll,   tttt????, ptr
; 0x00000001, 0x0600001E, 0x00C80000, 0x00000000

diagEntryHubWelcome:     .dw 0x00000001, 0x07000058, 0x00C80000, diagStrHubWelcome
diagEntryHubGpsign:      .dw 0x00000001, 0x0200001E, 0x00C80000, diagStrHubGpsign
diagEntryHubLegbroken:   .dw 0x00000001, 0x0200001E, 0x00C80000, diagStrHubLegbroken
diagEntryHubMegachicken: .dw 0x00000001, 0x0200001E, 0x00C80000, diagStrHubMegachicken
diagEntryHubStop:        .dw 0x00000001, 0x0400001E, 0x00C80000, diagStrHubStop
