extern printf
extern scanf

section .data
    msg db "Digite sua idade: ", 0
    msg2 db "Você tem %d anos de idade!", 10, 0
    fmt db "%d", 0
    idade dq 0
    
section .text
    global main
main:
    push rbp
    mov rbp, rsp

    mov rdi, msg
    mov rax, 0
    call printf

    mov rax, 0
    mov rdi, fmt
    mov rsi, idade
    call scanf

    mov rax, 0
    mov rdi, msg2
    mov rsi, [idade]
    call printf
    mov rax, 0

    ret