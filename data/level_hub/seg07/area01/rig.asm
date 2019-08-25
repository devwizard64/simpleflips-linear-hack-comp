.align 4
rigLevelHub01:
    .dw 0x0800000A, 0x00A00078, 0x00A00078
    .dw 0x04000000
        .dw 0x0C000000
        .dw 0x04000000
            .dw 0x09000064
            .dw 0x04000000
                .dw 0x19000001, 0x00000000
            .dw 0x05000000
        .dw 0x05000000
        .dw 0x0C010000
        .dw 0x04000000
            .dw 0x0A01002D, 0x00647530, rig_cam_frustum
            .dw 0x04000000
                .dw 0x0F00000E, 0x000007D0, 0x17700C00, 0x0000EE00, rig_cam_controls
                .dw 0x04000000
                    .dw 0x15010000, dlLevelHub01
                    .dw 0x0E000002, rig_select_dorrie
                    .dw 0x04000000
                        .dw 0x15010000, dlLevelHub01Dorrie0000
                        .dw 0x15010000, dlLevelHub01Dorrie0001
                    .dw 0x05000000
                    .dw 0x15010000, dlLevelHub01Dorrie0002
                    .dw 0x17000000
                    .dw 0x18000000, rig_level_effect
                .dw 0x05000000
            .dw 0x05000000
        .dw 0x05000000
        .dw 0x0C000000
        .dw 0x04000000
            .dw 0x090000C8
            .dw 0x04000000
                .dw 0x0E000002, rig_select_screen_mask
                .dw 0x04000000
                    .dw 0x15010000, dlLevelHub01Mask0000
                    .dw 0x15010000, dlLevelHub01Mask0001
                .dw 0x05000000
            .dw 0x05000000
        .dw 0x05000000
    .dw 0x05000000
    .dw 0x01000000
    .dw 0x00000000
