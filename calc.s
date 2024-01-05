section .data
    msg db "Output:", 0ah

section .text
    global _start ; nějaký systémový věci, co tam prostě musej být kvůli tomu textovému výstupu

_start:
    mov rax, 1 ; rax = 1
    mov rcx, 4 ; rcx = 4
    mov rdx = 2 ; rdx = 2

    add rax, rcx
    sub rax, rdx
    
    mov rdi, 1 ; nastaví exit code
    
    mov rsi, rax ; rsi = rax, 
    mov rdx, 8 ; délka stringu msg
    syscall
    mov rax, 60 ; rax = 60
    mov rdi, 0 ; nastaví exit code
    syscall
