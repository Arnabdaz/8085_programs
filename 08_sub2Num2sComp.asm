
;Write a program to subtract two 8-bit numbers using 8085 for,
;	• Subtraction of two 8-bit numbers using 2’complement method

jmp start

;data


;code
start: nop

mvi a,55	;load accumulator with data 55
mvi b,50	;load reg b with data 50
cma 		;1's complement of accumualtor
inr a		;2's complement a = a+1
add b		;add data from reg b to accumulator
jc jump		;jump if carry -> jump
mvi c,00	;initialize c with 00
inr c		;increment c for borrow / negative result
cma		;complement accumulator
inr a		;increment a for offset by 1
jump: mov e,a	;move result of subtraction to e reg
mov d,c		;move negative flag to d reg (if d=0 result is +ve else if d=1 result is negative)

hlt