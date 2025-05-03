    .syntax unified
    .text
    .global _start

_start:
    /* write(STDOUT_FILENO, msg, len) */
    mov     r7, #4          @ syscall: sys_write
    mov     r0, #1          @ fd = 1 (stdout)
    ldr     r1, =msg        @ buf = &msg
    mov     r2, #12         @ len = 12 ("Hello World\n")
    svc     #0

    /* exit(0) */
    mov     r7, #1          @ syscall: sys_exit
    mov     r0, #0          @ status = 0
    svc     #0

    .section .data
msg:
    .asciz  "Hello World\n"
