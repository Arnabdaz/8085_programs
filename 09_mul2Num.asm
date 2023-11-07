
;Write a program to multiply 8-bit numbers using 8085
;	• Multiplication of two 8-bit numbers (without carry)

jmp start

;data


;code
start: nop

mvi b,11	;load reg b wiht num 1
mvi c,15	;load reg c with num 2
mvi a,00	;initialize accumulator with 00
jump: add c	;add c to accumulator
dcr b		;decrement b 
jnz jump	;jump no zero -> jump (jump till b is not 0 after the decrement operation)
mov d,a		;move result to d reg form accumulator

hlt