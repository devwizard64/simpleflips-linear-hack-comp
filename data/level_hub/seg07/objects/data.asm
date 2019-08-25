; bhvTestBobomb:
;     .dw 0x00080000
;     .dw 0x08000000
;     .dw 0x09000000
;     .dw 0x00080000
;     .dw 0x11010001
;     .dw 0x0D010002
;     .dw 0x2F000000, 0x00000200
;     .dw 0x0E5C0040
;     .dw 0x0E5D0100
;     .dw 0x08000000
;         .dw 0x0C000000, 0x00000000
;     .dw 0x09000000
; (0x0134 & 0x8002) ^ 0x8002 == 0

bhvObjGPSignpost:
    .dw 0x00090000
    .dw 0x11010001 ; 0x2041
    .dw 0x2A000000, 0x0302DD80
    .dw 0x2F000000, 0x00800000
    .dw 0x10421000
    ; .dw 0x10440005
    .dw 0x1E000000
    .dw 0x23000000, 0x00960050
    .dw 0x101B0000
    .dw 0x08000000
        .dw 0x10050000
        .dw 0x0C000000, 0x803839CC
        ; .dw 0x0C000000, 0x80300ECC
        .dw 0x0C000000, bhv_gp_sign_loop
        .dw 0x102B0000
    .dw 0x09000000

bhvObjWarpPipeDW:
    .dw 0x00090000
    .dw 0x11010001
    .dw 0x101B0000
    .dw 0x2A000000, 0x03009AC8
    .dw 0x08000000
        .dw 0x0C000000, 0x803839CC
        .dw 0x0C000000, bhv_warp_pipe_dw_loop
    .dw 0x09000000
