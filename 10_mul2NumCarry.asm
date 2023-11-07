
;Write a program to multiply 8-bit numbers using 8085
;	• Multiplication of two 8-bit numbers (with carry)

jmp start

;data


;code
start: nop

mvi b,50	;load num 1 in reg b
mvi c,30	;loda num 2 in reg c
mvi a,00	;initialize a with 00
mvi d,00	;initialize d with 00 for calculating carry
jump1: add c	;add c to accumulator
jnc jump2	;jump no carry -> jump2 (jump if no carry after addition in the last instruction)
inr d		;increment d if carry
jump2: dcr b	;decrement b
jnz jump1	;jump no zero -> jump1 (jump if b is not 0 after decrement)
mov e,a		;store value to e reg from accumulator

; D E pair has the result of multiplication stored where D reg holds the carry

hlt