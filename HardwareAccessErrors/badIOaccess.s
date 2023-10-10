mov dx, 0x3F8   ; COM1 port address
mov al, 'A'     ; ASCII for 'A'
out dx, al      ; Send 'A' to COM1
;  Problems that might arise from such an operation could include:
; Writing to a wrong port (0x3F8 in this example).
; Not checking whether the port is ready to accept data.
; Failing to initialize or configure the port correctly before usage.
