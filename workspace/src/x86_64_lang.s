.global _start

.section .data
msg:
    .ascii "Hello, World!\n"
len = . - msg

.section .text
_start:
    mov $1, %rax        # sys_write
    mov $1, %rdi        # stdout
    lea msg(%rip), %rsi # message address
    mov $len, %rdx      # message length
    syscall

    mov $60, %rax       # sys_exit
    xor %rdi, %rdi      # exit code 0
    syscall
