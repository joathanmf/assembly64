extern printf

section .data
    msg: db "%d + %d = %d", 10, 0
    num1: dq 5
    num2: dq 10
    soma: dq 0

section .text
    global main
main:
    push rbp
    mov rbp, rsp

    mov rax, [num1]
    mov rbx, [num2]
    add rax, rbx
    mov [soma], rax

    mov rsi, [num1]
    mov rdx, [num2]
    mov rcx, [soma]
    mov rdi, msg
    call printf
    ret