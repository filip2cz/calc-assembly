.global _start
.intel_syntax noprefix

_start:
    // write number output
    mov rax, 1
    mov rdi, 1
    // set output
    lea rsi, [output]  
    // lenght of output
    mov rdx, 13
    syscall
    
    // sys_exit
    mov rax, 60
    mov rdi, 69
    syscall

output:
    .asciz "Hello World!\n"