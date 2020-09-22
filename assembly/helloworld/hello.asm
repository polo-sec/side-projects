section .data	;This is for delcaring initialised data or constants
msg db "Hello, World!"		;Defining hello world


section .bss	;This is for declating non-initialised variables


section .text	;This is for operations to go
global _start

;Meet the registers
	;rax - temp register, syscall uses this register for it's code
	;rdi - used to pass the 1st argument to functions
	;rsi - used to pass the 2nd argument to functions
	;rdx - used to pass the 3rd argument to functions


_start:
	;rax is the return function
	mov rax, 1		;This where execution starts
	;rdi contains the commands first parameter
	mov rdi, 1
	;rsi contains the second parameter
	mov rsi, msg 	;The actual message
	;rdx contains the third parameter
	mov rdx, 13		;Length of msg
	syscall

	mov rax, 60
	mov rdi, 0
	syscall