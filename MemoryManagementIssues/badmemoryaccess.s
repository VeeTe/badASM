section .data
    some_data db 'This is some data',0

section .text
global _start

_start:
    ; Trying to access memory at an invalid location (0xDEADBEEF)
    mov eax, [0xDEADBEEF] ; This is an invalid memory access

    ; ... Rest of the code
