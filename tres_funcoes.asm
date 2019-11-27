extern printf
extern scanf
global main

section .data
    msg1: db "Digite um número inteiro: ", 0
    msg2: db "O quadrado de %d é %d.", 10, 0
    form: db "%d", 0
    mgs3: db "Olá!", 10, 0
    msg4: db "Fim do programa.", 10, 0

    numm: dd 0
    ress: dd 0

section .text
    main:
        push rbp
        mov rbp, rsp

        call _saudacao

        mov rdi, msg1
        call printf

        mov rdi, form
        mov rsi, numm
        call scanf
        mov rdi, [numm]
        
        call _quadrado

        mov [ress], rax
        mov rdi, msg2
        mov rsi, [numm]
        mov rdx, [ress]
        call printf

        call _despedida

    _quadrado:
        push rbp
        mov rbp, rsp
        mov rax, rdi
        imul rax, rax
        pop rdi
        ret

    _saudacao:
        push rbp
        mov rbp, rsp
        mov rdi, mgs3
        call printf
        pop rdi
        ret

    _despedida:
        push rbp
        mov rbp, rsp
        mov rdi, msg4
        call printf
        pop rdi
        ret