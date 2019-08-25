.align 4
rigLevelKuppa02:
    .dw 0x0800000A, 0x00A00078, 0x00A00078
    .dw 0x04000000
        .dw 0x0C000000
        .dw 0x04000000
            .dw 0x090000C8
            .dw 0x04000000
                .dw 0x19000001, 0x00000000
                .dw 0x0E000001, rig_select_star_bg
                .dw 0x04000000
                    .dw 0x15050000, dlStarBg
                .dw 0x05000000
            .dw 0x05000000
        .dw 0x05000000
        .dw 0x0C010000
        .dw 0x04000000
            .dw 0x0A01002D, 0x00647530, rig_cam_frustum
            .dw 0x04000000
                .dw 0x0F00000E, 0x000007D0, 0x17700C00, 0x0000EE00, rig_cam_controls
                .dw 0x04000000
                    .dw 0x17000000
                    .dw 0x18000000, rig_level_effect
                .dw 0x05000000
            .dw 0x05000000
        .dw 0x05000000
        .dw 0x0C000000
        .dw 0x04000000
            .dw 0x0E000001, rig_select_print_text
            .dw 0x04000000
                .dw 0x15010000, dlDiagFontEnd
            .dw 0x05000000
        .dw 0x05000000
    .dw 0x05000000
    .dw 0x01000000
    .dw 0x00000000
