
;Write a program for the addition of two 8-bit numbers
;	• Addition Using Memory Location (With Carry)

jmp start

;data


;code
start: nop

lxi h,2000h	;load H-L pair with address 2000h
mov a,m		;move data form memory location 2000h to accumulator
inx h		;increment H-L pair 2000h+1 = 2001h
add m		;add data form memory location 2001h to accumulator
mvi c,00h	;initialize register c with value 00
jnc jump	;jump no carry -> jump
inr c		;increment c if carry
jump: sta 2006h	;store result to memory location 2006h form accumulator
mov a,c		;move data form register c to accumulator
sta 2005h	;store carry to memory location 2005h

hlt