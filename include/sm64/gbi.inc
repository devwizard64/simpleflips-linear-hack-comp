G_SPNOOP            equ 0x00
G_MTX               equ 0x01
G_MOVEMEM           equ 0x03
G_VTX               equ 0x04
G_DL                equ 0x06

G_TRI1              equ 0xBF
G_CULLDL            equ 0xBE
G_POPMTX            equ 0xBD
G_MOVEWORD          equ 0xBC
G_TEXTURE           equ 0xBF
G_SETOTHERMODE_H    equ 0xBA
G_SETOTHERMODE_L    equ 0xB9
G_ENDDL             equ 0xB8
G_SETGEOMETRYMODE   equ 0xB7
G_CLEARGEOMETRYMODE equ 0xB6
G_RDPHALF_1         equ 0xB4
G_RDPHALF_2         equ 0xB3
G_RDPHALF_CONT      equ 0xB2

G_SETCIMG           equ 0xFF
G_SETZIMG           equ 0xFE
G_SETTIMG           equ 0xFD
G_SETCOMBINE        equ 0xFC
G_SETENVCOLOR       equ 0xFB
G_SETPRIMCOLOR      equ 0xFA
G_SETBLENDCOLOR     equ 0xF9
G_SETFOGCOLOR       equ 0xF8
G_SETFILLCOLOR      equ 0xF7
G_FILLRECT          equ 0xF6
G_SETTILE           equ 0xF5
G_LOADTILE          equ 0xF4
G_LOADBLOCK         equ 0xF3
G_SETTILESIZE       equ 0xF2
G_LOADTLUT          equ 0xF0
G_RDPSETOTHERMODE   equ 0xEF
G_SETPRIMDEPTH      equ 0xEE
G_SETSCISSOR        equ 0xED
G_SETCONVERT        equ 0xEC
G_SETKEYR           equ 0xEB
G_SETKEYGB          equ 0xEA
G_RDPFULLSYNC       equ 0xE9
G_RDPTILESYNC       equ 0xE8
G_RDPPIPESYNC       equ 0xE7
G_RDPLOADSYNC       equ 0xE6
G_TEXRECTFLIP       equ 0xE5
G_TEXRECT           equ 0xE4

G_IM_FMT_RGBA equ 0
G_IM_FMT_CI   equ 2
G_IM_FMT_IA   equ 3
G_IM_FMT_I    equ 4

G_IM_SIZ_4b  equ 0
G_IM_SIZ_8b  equ 1
G_IM_SIZ_16b equ 2
G_IM_SIZ_32b equ 3

G_IM_SIZ_4b_BYTES      equ 0
G_IM_SIZ_4b_TILE_BYTES equ G_IM_SIZ_4b_BYTES
G_IM_SIZ_4b_LINE_BYTES equ G_IM_SIZ_4b_BYTES

G_IM_SIZ_8b_BYTES      equ 1
G_IM_SIZ_8b_TILE_BYTES equ G_IM_SIZ_8b_BYTES
G_IM_SIZ_8b_LINE_BYTES equ G_IM_SIZ_8b_BYTES

G_IM_SIZ_16b_BYTES      equ 2
G_IM_SIZ_16b_TILE_BYTES equ G_IM_SIZ_16b_BYTES
G_IM_SIZ_16b_LINE_BYTES equ G_IM_SIZ_16b_BYTES

G_IM_SIZ_32b_BYTES      equ 4
G_IM_SIZ_32b_TILE_BYTES equ 2
G_IM_SIZ_32b_LINE_BYTES equ 2

G_IM_SIZ_4b_LOAD_BLOCK  equ G_IM_SIZ_16b
G_IM_SIZ_8b_LOAD_BLOCK  equ G_IM_SIZ_16b
G_IM_SIZ_16b_LOAD_BLOCK equ G_IM_SIZ_16b
G_IM_SIZ_32b_LOAD_BLOCK equ G_IM_SIZ_32b

G_IM_SIZ_4b_SHIFT  equ 2
G_IM_SIZ_8b_SHIFT  equ 1
G_IM_SIZ_16b_SHIFT equ 0
G_IM_SIZ_32b_SHIFT equ 0

G_IM_SIZ_4b_INCR  equ 3
G_IM_SIZ_8b_INCR  equ 1
G_IM_SIZ_16b_INCR equ 0
G_IM_SIZ_32b_INCR equ 0

G_TEXTURE_IMAGE_FRAC equ 2
G_TX_DXT_FRAC        equ 11
G_TX_LDBLK_MAX_TXL   equ 0x07FF

G_TX_LOADTILE   equ 7
G_TX_RENDERTILE equ 0

G_TX_NOMIRROR equ 0
G_TX_WRAP     equ 0
G_TX_MIRROR   equ 1
G_TX_CLAMP    equ 2
G_TX_NOMASK   equ 0
G_TX_NOLOD    equ 0

.macro gsSetImage, cmd, fmt, siz, width, i
    .dw ((cmd) << 24 & 0x00FF) | ((fmt) << 21 & 0x0007) | ((siz) << 19 & 0x0003) | (((width)-1) << 0 & 0x0FFF)
    .dw (i)
.endmacro

.macro gsDPSetTextureImage, f, s, w, i
    gsSetImage G_SETTIMG, f, s, w, i
.endmacro

.macro gsDPSetTile, fmt, siz, line, tmem, tile, palette, cmt, maskt, shiftt, cms, masks, shifts
    .dw (G_SETTILE << 24 & 0x00FF) | (fmt << 21 & 0x0007) | ((siz) << 19 & 0x0003) | ((line) << 9 & 0x01FF) | ((tmem) << 0 & 0x01FF)
    .dw ((tile) << 24 & 0x0007) | ((palette) << 20 & 0x000F) | ((cmt) << 18 & 0x0003) | ((maskt) << 14 & 0x000F) | ((shiftt) << 10 & 0x000F) | ((cms) << 8 & 0x0003) | ((masks) << 4 & 0x000F) | ((shifts) << 0 & 0x0F)
.endmacro

.macro gsDPLoadTileGeneric, c, tile, uls, ult, lrs, lrt
    .dw ((c) << 24 & 0x00FF) | ((uls) << 12 & 0x0FFF) | ((ult) << 0 & 0x0FFF)
    .dw ((tile) << 24 & 0x0007) | ((lrs) << 12 & 0x0FFF) | ((lrt) << 0 & 0x0FFF)
.endmacro

.macro gsDPSetTileSize, t, uls, ult, lrs, lrt
    gsDPLoadTileGeneric G_SETTILESIZE, t, uls, ult, lrs, lrt
.endmacro

.macro gsDPLoadBlock, tile, uls, ult, lrs, dxt
    .dw (G_LOADBLOCK << 24 & 0x00FF) | ((uls) << 12 & 0x0FFF) | ((ult) << 0 & 0x0FFF)
    .dw ((tile) << 24 & 0x0007) | (((lrs) < G_TX_LDBLK_MAX_TXL ? (lrs) : G_TX_LDBLK_MAX_TXL) << 12 & 0x0FFF) | ((dxt) << 0 & 0x0FFF)
.endmacro

.macro gsDPNoParam, cmd
    .dw ((cmd) << 24 & 0x00FF)
    .dw 0
.endmacro

.macro gsDPPipeSync
    gsDPNoParam G_RDPPIPESYNC
.endmacro

.macro gsDPLoadSync
    gsDPNoParam G_RDPLOADSYNC
.endmacro

.macro gsDPLoadTextureBlock, timg, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt
.if (siz) == G_IM_SIZ_4b
    .definelabel @@siz_BYTES,      G_IM_SIZ_4b_BYTES
    .definelabel @@siz_LINE_BYTES, G_IM_SIZ_4b_LINE_BYTES
    .definelabel @@siz_LOAD_BLOCK, G_IM_SIZ_4b_LOAD_BLOCK
    .definelabel @@siz_SHIFT,      G_IM_SIZ_4b_SHIFT
    .definelabel @@siz_INCR,       G_IM_SIZ_4b_INCR
.endif
.if (siz) == G_IM_SIZ_8b
    .definelabel @@siz_BYTES,      G_IM_SIZ_8b_BYTES
    .definelabel @@siz_LINE_BYTES, G_IM_SIZ_8b_LINE_BYTES
    .definelabel @@siz_LOAD_BLOCK, G_IM_SIZ_8b_LOAD_BLOCK
    .definelabel @@siz_SHIFT,      G_IM_SIZ_8b_SHIFT
    .definelabel @@siz_INCR,       G_IM_SIZ_8b_INCR
.endif
.if (siz) == G_IM_SIZ_16b
    .definelabel @@siz_BYTES,      G_IM_SIZ_16b_BYTES
    .definelabel @@siz_LINE_BYTES, G_IM_SIZ_16b_LINE_BYTES
    .definelabel @@siz_LOAD_BLOCK, G_IM_SIZ_16b_LOAD_BLOCK
    .definelabel @@siz_SHIFT,      G_IM_SIZ_16b_SHIFT
    .definelabel @@siz_INCR,       G_IM_SIZ_16b_INCR
.endif
.if (siz) == G_IM_SIZ_32b
    .definelabel @@siz_BYTES,      G_IM_SIZ_32b_BYTES
    .definelabel @@siz_LINE_BYTES, G_IM_SIZ_32b_LINE_BYTES
    .definelabel @@siz_LOAD_BLOCK, G_IM_SIZ_32b_LOAD_BLOCK
    .definelabel @@siz_SHIFT,      G_IM_SIZ_32b_SHIFT
    .definelabel @@siz_INCR,       G_IM_SIZ_32b_INCR
.endif

.if ((width)*(@@siz_BYTES)/8) >= 1
    .definelabel @@txlwords, ((width)*(@@siz_BYTES)/8)
.else
    .definelabel @@txlwords, 1
.endif

    gsDPSetTextureImage fmt, @@siz_LOAD_BLOCK, 1, timg
    gsDPSetTile fmt, @@siz_LOAD_BLOCK, 0, 0, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts
    gsDPLoadSync
    gsDPLoadBlock G_TX_LOADTILE, 0, 0, (((width)*(height) + @@siz_INCR) >> @@siz_SHIFT)-1, (((1 << G_TX_DXT_FRAC) + @@txlwords - 1) / @@txlwords)
    gsDPPipeSync
    gsDPSetTile fmt, siz, ((((width) * @@siz_LINE_BYTES)+7)>>3), 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts
    gsDPSetTileSize G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC, ((height)-1) << G_TEXTURE_IMAGE_FRAC
__dummy__:
.endmacro

.macro vertex,x,y,z,u,v,nx,ny,nz,a
    .dh x, y, z, 0, u, v
    .db nx, ny, nz, a
.endmacro

.macro load_vtxs, vtx, n
    .db 0x04 ; G_VTX
    .db ((n)-1) << 4
    .dh (n) << 4
    .dw vtx
.endmacro

.macro load_texture, ptr, fmt, size, w, h, fs, ft, ss, st
.if     (w) <= 1
.definelabel @@wm, 0
.elseif (w) <= 2
.definelabel @@wm, 1
.elseif (w) <= 4
.definelabel @@wm, 2
.elseif (w) <= 8
.definelabel @@wm, 3
.elseif (w) <= 16
.definelabel @@wm, 4
.elseif (w) <= 32
.definelabel @@wm, 5
.elseif (w) <= 64
.definelabel @@wm, 6
.elseif (w) <= 128
.definelabel @@wm, 7
.elseif (w) <= 256
.definelabel @@wm, 8
.elseif (w) <= 512
.definelabel @@wm, 9
.elseif (w) <= 1024
.definelabel @@wm, 10
.elseif (w) <= 2048
.definelabel @@wm, 11
.elseif (w) <= 4096
.definelabel @@wm, 12
.elseif (w) <= 8192
.definelabel @@wm, 13
.elseif (w) <= 16384
.definelabel @@wm, 14
.elseif (w) <= 32768
.definelabel @@wm, 15
.else
.error "texture too big"
.endif
.if     (h) <= 1
.definelabel @@hm, 0
.elseif (h) <= 2
.definelabel @@hm, 1
.elseif (h) <= 4
.definelabel @@hm, 2
.elseif (h) <= 8
.definelabel @@hm, 3
.elseif (h) <= 16
.definelabel @@hm, 4
.elseif (h) <= 32
.definelabel @@hm, 5
.elseif (h) <= 64
.definelabel @@hm, 6
.elseif (h) <= 128
.definelabel @@hm, 7
.elseif (h) <= 256
.definelabel @@hm, 8
.elseif (h) <= 512
.definelabel @@hm, 9
.elseif (h) <= 1024
.definelabel @@hm, 10
.elseif (h) <= 2048
.definelabel @@hm, 11
.elseif (h) <= 4096
.definelabel @@hm, 12
.elseif (h) <= 8192
.definelabel @@hm, 13
.elseif (h) <= 16384
.definelabel @@hm, 14
.elseif (h) <= 32768
.definelabel @@hm, 15
.else
.error "texture too big"
.endif

    .dd 0xFD10000000000000 | (fmt) << 53 | (ptr) ; G_SETTIMG
    .dd 0xF510000007000000 | (fmt) << 53 | (ft) << 18 | @@hm << 14 | (st) << 10 | (fs) << 8 | @@wm << 4 | (ss) ; G_SETTILE
    .dd 0xE600000000000000 ; G_RDPLOADSYNC
.if (w)*(h) >= 0x800
    .definelabel @@txlnum, 0x7FF
.else
    .definelabel @@txlnum, ((w)*(h) - 1)
.endif
.definelabel @@txlsize,  (((w) * (1 << (size)) +  0) / 16)
.definelabel @@linesize, (((w) * (1 << (size)) + 15) / 16)
    .dd 0xF300000007000000 | (@@txlnum << 12) | ((0x7FF + @@txlsize) / @@txlsize) ; G_LOADBLOCK
    .dd 0xE700000000000000 ; G_RDPPIPESYNC
    .dd 0xF500000000000000 | (fmt) << 53 | (size) << 51 | @@linesize << 41 | (ft) << 18 | @@hm << 14 | (st) << 10 | (fs) << 8 | @@wm << 4 | (ss) ; G_SETTILE
    .dd 0xF200000000000000 | ((w)-1) << 14 | ((h)-1) << 2 ; G_SETTILESIZE
__dummy__:
.endmacro

.macro tri, a, b, c
    .dw 0xBF000000
    .db 0, ((a)*10), ((b)*10), ((c)*10)
.endmacro

.macro set_scissor, ax, ay, bx, by
    ; G_SETSCISSOR
    .dd 0xED00000000000000 | (ax) << 46 | (ay) << 34 | (bx) << 14 | (by) << 2
.endmacro
