section .data
    profile_info db "Hi, I'm Reda Ghouzraf", 10
    level_info db "A passionate low level developer", 10
    languages db "Languages and Tools:", 10
    languages_list db "C/C++, Assembly, Bash", 10

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, profile_info
    mov edx, 22
    int 0x80
    mov eax, 4
    mov ebx, 1
    mov ecx, level_info
    mov edx, 33
    int 0x80

    
    mov eax, 4
    mov ebx, 1
    mov ecx, languages
    mov edx, 21
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, languages_list
    mov edx, 21
    int 0x80

    mov eax, 1          ; Syscall sys_exit --
    xor ebx, ebx        ; for 0 return
    int 0x80

; you can see the output of this code in https://godbolt.org/z/Yh89E6M1Y
