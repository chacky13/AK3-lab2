.global lab1
.syntax unified

lab1:
    push {lr}          // Зберігаємо адресу повернення

    mov r0, #15        // a = 15
    mov r1, #7         // b = 7
    mov r2, #4         // c = 4

    sub r3, r0, r1     // r3 = a - b
    mov r4, #3
    mul r3, r3, r4     // r3 = (a - b) * 3

    mov r4, #1
    lsl r4, r4, r2     // r4 = 2^c (1 << c)

    add r5, r3, r4     // r5 = (a - b) * 3 + 2^c

    pop {pc}           // Повернення
