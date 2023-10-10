section .data
    ; Some data to be moved into buffer

section .bss
    buffer resb 10  ; reserve a buffer of 10 bytes

section .text
    global _start

_start:
    ; ... (Some initial code if needed)

    ; Copy 15 bytes of data into a buffer of size 10, potentially causing overflow
    lea rsi, [some_data]      ; Source address (Address of some data to be copied)
    lea rdi, [buffer]         ; Destination address (Address of buffer)
    mov rcx, 15               ; Number of bytes to copy
    rep movsb                 ; Move 'rcx' bytes from 'rsi' to 'rdi'

    ; ... (Further code execution)

some_data: db 'ThisDataIsTooLongForBuffer', 0 ; A string longer than 10 bytes
