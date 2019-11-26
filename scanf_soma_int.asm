extern printf
extern scanf

section .data
    msg1: db "Informe um número: ", 0
    msg2: db "Informe outro número: ", 0
    msg3: db "A soma de %d + %d é %d", 10, 0
    num1: dd 0
    num2: dd 0
    soma: dd 0
    form: db "%d", 0

section .text
    global main
main:
    push rbp
    mov rbp, rsp

    mov rdi, msg1
    call printf

    mov rdi, form
    mov rsi, num1
    call scanf

    mov rdi, msg2
    call printf

    mov rdi, form
    mov rsi, num2
    call scanf

    mov rax, [num1]
    mov rbx, [num2]
    add rax, rbx
    mov [soma], rax

    mov rsi, [num1]
    mov rdx, [num2]
    mov rcx, [soma]
    mov rdi, msg3
    call printf

    ret