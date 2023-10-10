isr_example:
    push ax          ; Save ax register
    mov al, 20h      ; AT PIC EOI command
    out 20h, al      ; Send EOI to PIC
    ; Missing restoration of other possibly altered registers, flags
    ; and potentially improper PIC interaction.
    pop ax           ; Restore ax register
    iret             ; Return from interrupt
; Failing to save and restore all necessary registers (only ax is shown).
; Not managing or acknowledging the interrupt correctly.
; Potentially failing to correctly manage shared data or states.
; Possible reentrancy issues if the ISR is not designed to be reentrant.
