lvlLevelSecretEntry:
    .dw 0x1B040000
    .dw 0x16100000, gCodeDest, seg80LevelSecretStart, seg80LevelSecretEnd
    .dw 0x1D040000

    .dw 0x1F080100, rigLevelSecret01
    .dw 0x20040000
    .dw 0x1E040000

    .dw 0x29040100
    .dw 0x330801F0, 0x00000000
    .dw 0x11080000, level_secret_init
    .dw 0x12080000, level_secret_loop

.align 4
rigLevelSecret01:
    .dw 0x0800000A, 0x00A00078, 0x00A00078
    .dw 0x04000000
        .dw 0x0C000000
        .dw 0x04000000
            .dw 0x09000064
            .dw 0x04000000
                .dw 0x19000001, 0x00000000
            .dw 0x05000000
        .dw 0x05000000
    .dw 0x05000000
    .dw 0x01000000
