
;Write a program to subtract two 8-bit numbers using 8085
;	• Subtraction from memory (without borrow)

jmp start

;data


;code
start: nop

lxi h,2000h	;load H-L pair with 2000h
mov a,m		;move data from memory location 2000h to accumulator
inx h		;increment H-L pair 2000h+1 = 2001h
sub m		;subtract data of memory location 2001h from accumulator
sta 2005h	;store result in 2005h from accumulator

hlt