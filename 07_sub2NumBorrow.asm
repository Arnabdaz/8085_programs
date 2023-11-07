
;. Write a program to subtract two 8-bit numbers using 8085
;	• Subtraction of two 8 bit numbers (using borrow)

jmp start

;data


;code
start: nop

mvi a,1		;load accumulator with data 01
mvi b,255	;load b register with data 255
sub b		;subtract b from accumulator 
jnc jump	;jump no carry -> jump
cma		;1's complement of result in accumulator
mvi c,00	;initialize c with value 00
inr c		;increment c for carry
inr a		;increment accumulator as the result is off by 1
jump: mov e,a	;move subtraction result from accumulator to e register
mov d,c		;move negative flag to register d (if d=0 result is +ve else if d=1 result is -ve)

hlt