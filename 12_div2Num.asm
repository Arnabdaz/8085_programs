
;Write a program to divide two 8-bit numbers.
;	• Division of two numbers using registers

jmp start

;data


;code
start: nop

mvi b,36
mvi c,05
mvi d,00
mov a,b
jump1: sub c
jc jump2
inr d
jnz jump1
jump2: cmp c
jnc jump3
inr d
jump3: nop

hlt