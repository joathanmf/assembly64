extern printf
extern scanf
global main

section .data
    msgm: db "Contador: %d", 10, 0
    cont: dq 0
    fixa: dq 10
section .text
    main:
        jmp _while
    
    _printf:
        mov rax, [cont]
        mov rsi, rax
        mov rdi, msgm
        mov rax, 0
        call printf
        
        mov rax, [cont]
        add rax, 1
        mov [cont], rax
        mov rax, 0

    _while:
        mov rax, [cont]
        cmp rax, [fixa]
        jl _printf
        mov rax, 0
        
        ret