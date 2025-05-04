.code 32
bl _start
swi 6

.global _start
_start:
    push    {lr}
    mov     r14, #3
    ldr     r1, =A
    ldr     r2, =B
    ldr     r3, =C
    mov     r4, #0
loop_i:
    cmp     r4, #3
    bge     end
    mov     r5, #0
loop_j:
    cmp     r5, #3
    bge     next_i
    mov     r6, #0
    mul     r7, r4, r14
    mov     r9, #0
loop_k:
    cmp     r9, #3
    bge     store
    mul     r8, r9, r14
    add     r8, r8, r5
    lsl     r8, r8, #2
    add     r10, r1, r8
    ldr     r10, [r10]
    mul     r8, r4, r14
    add     r8, r8, r9
    lsl     r8, r8, #2
    add     r11, r2, r8
    ldr     r11, [r11]
    mul     r12, r10, r11
    add     r6, r6, r12
    add     r9, r9, #1
    b       loop_k
store:
    add     r8, r7, r5
    lsl     r8, r8, #2
    add     r9, r3, r8
    str     r6, [r9]
    add     r5, r5, #1
    b       loop_j
next_i:
    add     r4, r4, #1
    b       loop_i
end:
    pop     {pc}

.data
A:
    .word   1,1,1
    .word   1,1,1
    .word   1,1,1
B:
    .word   1,1,1
    .word   1,1,1
    .word   1,1,1
C:
    .word   0,0,0
    .word   0,0,0
    .word   0,0,0
