.macro lvl_object, x, y, z, rx, ry, rz, a0, a1, mf, gfx, script
    .db 0x24, 0x18
    .db mf, gfx
    .dh x, y, z, rx, ry, rz, a0, a1
    .dw script
.endmacro
