.global _start

.section .data
msg:
    .ascii "Hello, World!\n"
len = . - msg

.section .text
_start:
    mov x0, 1          // stdout
    ldr x1, =msg       // message address
    ldr x2, =len       // message length
    mov x8, 64         // sys_write
    svc 0

    mov x0, 0          // exit code 0
    mov x8, 93         // sys_exit
    svc 0
