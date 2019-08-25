.macro camkf, a, length, x, y, z
    .db a, length
    .dh x, y, z
.endmacro

.macro ftrack, x, y, z
    camkf  0, 64, x, y, z
    camkf -1, 64, x, y, z
.endmacro
