
;<Write a program for addition of two 8 bit numbers using registers 
;and storing result in registers

jmp start

;data


;code
start: nop

mvi a,03h ;load data 03 into accumulator
mvi b,04h ;load data 04 into b register
add b     ;add b int a ( a = a + b )
mov c,a   ;move result to c register form accumulator

hlt