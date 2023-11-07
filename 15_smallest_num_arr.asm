
;Write a program to find the smallest number in an array

jmp start

;data


;code
start: nop

lxi h,2000h
mov b,m
inx h
mov a,m
dcr b
jz finish
jump1: inx h
cmp m
jnc jump2
mov a,m
jump2: dcr b
jnz jump1
finish: sta 200Ah

hlt