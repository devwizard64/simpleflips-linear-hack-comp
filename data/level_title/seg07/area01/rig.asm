.align 4
rigLevelTitle01:
    .dw 0x0800000A, 0x00A00078, 0x00A00078
    .dw 0x04000000
        .dw 0x0C000000
        .dw 0x04000000
            .dw 0x09000064
            .dw 0x04000000
                .dw 0x19000001, 0x00000000
            .dw 0x05000000
        .dw 0x05000000
        .dw 0x04000000
            .dw 0x090000C8
            .dw 0x04000000
                .dw 0x15010000, dlLevelTitle01
                .dw 0x0E000003, rig_select_error_no
                .dw 0x04000000
                    .dw 0x15010000, dlLevelTitleError0000
                    .dw 0x15010000, dlLevelTitleError0001
                    .dw 0x15010000, dlLevelTitleError0002
                .dw 0x05000000
                .dw 0x0E000002, rig_select_show_error
                .dw 0x04000000
                    .dw 0x15010000, dlLevelTitleError0000
                    .dw 0x15010000, dlLevelTitleError0100
                .dw 0x05000000
            .dw 0x05000000
        .dw 0x05000000
    .dw 0x05000000
    .dw 0x01000000
