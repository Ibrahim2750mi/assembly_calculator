SECTION .data

    extern scanf
    extern printf
    global main

    fmtIn:
        db "%s %s %s", 0
    
    fmtOut:
        db "%s", 10, 0

    segment .bss
        numOne resb 4
        numTwo resb 4
        symbol resb 4
        res resb 4
    

SECTION .text

main:
    push    numTwo
    push    symbol
    push    numOne
    push    fmtIn
    call    scanf

    add     esp, 16

    cmp     dword [symbol], '+'
    jz      LAdSuMu

    cmp     dword [symbol], '-'
    jz      LAdSuMu

    cmp     dword [symbol], '*'
    jz      LAdSuMu

    cmp     dword [symbol], '/'
    jz      LDiv

LAdSuMu:
    mov     al, [numOne]
    sub     al, '0'

    mov     dl, [numTwo]
    sub     dl, '0'

    cmp     dword [symbol], '+'
    jz      LAdd

    cmp     dword [symbol], '-'
    jz      LSub

    cmp     dword [symbol], '*'
    jz      LMul

LAdd:   
    add     al, dl
    add     al, '0'

    mov     [res], al

    jmp     LPrint

LSub:
    sub     al, dl
    add     al, '0'

    mov     [res], al

    jmp     LPrint

LMul:
    mul     dl
    add     ax, '0'

    mov     [res], ax
    jmp     LPrint

LDiv:
    mov     ax, [numOne]
    sub     ax, '0'

    mov     dl, [numTwo]
    sub     dl, '0'

    div     dl
    add     al, '0'

    mov     [res], al
    jmp     LPrint

LPrint:

    push    res
    push    fmtOut
    call    printf

exit:
    mov     eax, 1
    int     0x80
