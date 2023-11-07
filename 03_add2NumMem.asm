
;Write a program for addition of two 8 bit numbers in memory and 
;storing the result in memory.

jmp start

;data


;code
start: nop

lxi h,2000h ;load address 2000h (8192 in dec) into h-L pair
mov a,m     ;move data from memory location (2000h) to accumulator
inx h	    ;increment H-L pair ( 2000h + 1 = 2001h)
add m	    ;add data form memory location (2001h) to accumulator
sta 2005h   ;store result form accumulator to memory location 2005h

hlt