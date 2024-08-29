section .data          ; Data section
    num1 dw 5          ; Declare num1, a word (2 bytes) initialized to 5
    num2 dw 10         ; Declare num2, a word (2 bytes) initialized to 10
    result dw 0        ; Declare result, a word initialized to 0 (to store the multiplication result)

section .text          ; Code section
    global _start      ; Make the _start label globally visible (entry point)

_start:
    mov ax, [num1]     ; Move the value of num1 (5) into the AX register
    imul ax, [num2]    ; Multiply AX by the value of num2 (10), result is stored in AX (AX = 5 * 10 = 50)
    mov [result], ax   ; Store the result from AX (50) into the result variable

    ; Exit the program
    mov eax, 1         ; System call number for exit (Linux)
    xor ebx, ebx       ; Set EBX to 0 (exit status code)
    int 0x80           ; Interrupt to make the system call and terminate the program

