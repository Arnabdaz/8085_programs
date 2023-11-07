
;Write a program for the addition of three 8-bit numbers
;	• Addition Using Memory Location (With Carry)

jmp start

;data


;code
start: nop

lxi h,2000h	;load H-L pair with 2000h
mov a,m		;move data from memory location 2000h to accumulator
inx h		;incrememnt H-L pair 2000h+1 = 2001h
add m		;add data from memory location 2001h to accumulator
mvi c,00h	;intialize c register with 00 value
jnc jump1	;jump no carry -> jump1
inr c		;increment c if carry
jump1: inx h	;increment H-L pair 2001h+1 = 2002h
add m		;add data form memory location 2002h to accumulator
jnc jump2	;jump no carry -> jump2
inr c		;increment c if carry
jump2: sta 2006h;store result to memeory location 2006h
mov a,c		;move data from register c to accumulator
sta 2005h	;store carry to memeroy location 2005h

hlt