    .section .data
msg:
    .ascii "Hello, World!\n"
len = . - msg

    .section .text
    .global _start

_start:
    li a7, 64          # sys_write
    li a0, 1           # stdout
    la a1, msg         # message address
    li a2, len         # message length
    ecall

    li a7, 93          # sys_exit
    li a0, 0           # exit code 0
    ecall



