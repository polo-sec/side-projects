section .data
;When declearing initialised data use:
	;DB, DW, DD, DQ, DT, DO, DY and DZ

;When declearing non-initialised variables use:
	;RESB, RESW, RESD, RESQ, REST, RESO, RESY and RESZ

;When inclusing Exernal Binary Files use:
	;INCBIN

;When defining a constant use:
	;EQU
msg: db "Sum is correct\n"

section .text
global _start

_start:
;Arithmetic operations
	;add - integer add
	;sub - subtract
	;mul - unsigned multiply
	;imul - signed multiply
	;div - unsigned divide
	;idiv - signed divide
	;inc - increment
	;dec - decrement
	;neg - negate

;Controling Flow

;Comparing rax with 50
;cmp rax, 50
	;cmp compares them but does nothing as a result
	;You can use a some mems to do stuff after though
	;Syntax for these is jmp label
		;Label is like a function - start for example

	;if statements:
		;je  - if equal
		;jz  - if zero
		;jne - if not equal
		;jnz - if not zero
		;jg	 - if first is greater than second
		;jge - if first is greather or equal to second
		;ja  - the same as jg but unsigned
		;jae - the same as jge but insigned
		;jmp - unconditional jump

;In C you'd have:
	;int rax = 50
	; if (rax != 50) {
	;     exit();
	; } else{
	;	hello();
	;}

;In ASM we'd do:
mov rax, 50
cmp rax, 50
	jne .exit	;This comes before the else and it tried first
	jmp .hello	;This is unconditional, like else

;Here I will add the two sections we will be using:


.hello
	;Think of the following as being like
	;A queue of mini instructions and syscall
	;just executes them all together
	;That's why we can define the length of
	;msg after we've loaded it into a register

	;write syscall
	mov rax, 1
	;file descriptor - standard output
	mov rdi, 1
	;message address
	mov rsi, msg
	;length of message
	mov rdx, 16
	;call write syscall
	syscall
	;exit procedure
	jmp .exit

.exit: 
	;exit syscall
	mov rax, 60		;This is like exit()
	;exit code
	mov rdi,0		;exit() code paremeter
	; call exit syscall
	syscall 		;execute the instructions
