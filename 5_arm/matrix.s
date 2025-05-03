A:
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
B:
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
        .word   0
        .word   1072693248
C:
        .zero   72
main:
        sub     sp, sp, #16
        str     wzr, [sp, 12]
        b       .L2
.L7:
        str     wzr, [sp, 8]
        b       .L3
.L6:
        str     wzr, [sp, 4]
        b       .L4
.L5:
        adrp    x0, C
        add     x2, x0, :lo12:C
        ldrsw   x3, [sp, 4]
        ldrsw   x1, [sp, 12]
        mov     x0, x1
        lsl     x0, x0, 1
        add     x0, x0, x1
        add     x0, x0, x3
        ldr     d30, [x2, x0, lsl 3]
        adrp    x0, A
        add     x2, x0, :lo12:A
        ldrsw   x3, [sp, 8]
        ldrsw   x1, [sp, 12]
        mov     x0, x1
        lsl     x0, x0, 1
        add     x0, x0, x1
        add     x0, x0, x3
        ldr     d29, [x2, x0, lsl 3]
        adrp    x0, B
        add     x2, x0, :lo12:B
        ldrsw   x3, [sp, 4]
        ldrsw   x1, [sp, 8]
        mov     x0, x1
        lsl     x0, x0, 1
        add     x0, x0, x1
        add     x0, x0, x3
        ldr     d31, [x2, x0, lsl 3]
        fmul    d31, d29, d31
        fadd    d31, d30, d31
        adrp    x0, C
        add     x2, x0, :lo12:C
        ldrsw   x3, [sp, 4]
        ldrsw   x1, [sp, 12]
        mov     x0, x1
        lsl     x0, x0, 1
        add     x0, x0, x1
        add     x0, x0, x3
        str     d31, [x2, x0, lsl 3]
        ldr     w0, [sp, 4]
        add     w0, w0, 1
        str     w0, [sp, 4]
.L4:
        ldr     w0, [sp, 4]
        cmp     w0, 2
        ble     .L5
        ldr     w0, [sp, 8]
        add     w0, w0, 1
        str     w0, [sp, 8]
.L3:
        ldr     w0, [sp, 8]
        cmp     w0, 2
        ble     .L6
        ldr     w0, [sp, 12]
        add     w0, w0, 1
        str     w0, [sp, 12]
.L2:
        ldr     w0, [sp, 12]
        cmp     w0, 2
        ble     .L7
        mov     w0, 0
        add     sp, sp, 16
        ret