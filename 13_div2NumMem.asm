
;Write a program to divide two 8-bit numbers.
;	• Division of two numbers using memory location

jmp start

;data


;code
start: nop

lxi h,2000h
mov a,m
inx h
mov b,m
mvi c,00
jump1: sub b
jc jump2
inr c
jnz jump1
jump2: cmp b
jnc jump3
inr c
jump3: mov a,c
sta 2005h

hlt