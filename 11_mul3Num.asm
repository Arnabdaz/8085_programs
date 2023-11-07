
;Write a program to multiply 8-bit numbers using 8085
;	• Multiplication of three 8-bit numbers (without carry)

jmp start

;data


;code
start: nop

lxi h,2000h	;load H-L pair with address 2000h (num1)
mov b,m		;load num1 to reg b 
inx h		;increment H-L pair 2000h+1 = 2001h (num2)
mov c,m		;load num2 to reg c
mvi a,00	;initialize a with 00
jump1: add c	;add c to accumulator 
dcr b		;decrement b
jnz jump1	;jump no zero -> jump1 (jump if b not 0 after decrement)
mov c,a		;move res of num1 * num2 to reg c
inx h		;increment H-L pair 2001h+1 = 2002h (num3)
mov b,m		;load num3 to reg b
mvi a,00	;initialize a with 00
jump2: add c	;add c to accumulator
dcr b		;decrement b
jnz jump2	;jump no zero -> jump2 (jump if b not 0 after decrement)
sta 2005h	;store result to memory location 2005h

hlt