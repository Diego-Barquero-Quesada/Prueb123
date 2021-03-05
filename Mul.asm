section.data
    a: db 1,2,3
    b: db 1,2,3 
    ;rax =ai * bi
    ; 1*1 + 2*2 +3*3 
    ; = 12
section.text
global _start
_start:
    mov rdx, a 
    mov r8, b
    mov al, [rdx]
    mov bl , [r8]
    mov rcx, 3
    for:
        mul bl 
        push rax
        inc rdx
        inc r8 
        mov al, [rdx]
        mov bl , [r8]
    loop for
    pop rax 
    pop r8 
    add rax,r8
    pop r8
    add rax,r8
