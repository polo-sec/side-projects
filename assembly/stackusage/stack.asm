section .data
	;These 4 values are linux constants
	SYS_WRITE equ 1
	STD_IN equ 1
	SYS_EXIT equ 60
	EXIT_CODE equ 0

	;These are two strings
	;This is the newline character
	NEW_LINE db 0xa	
	;This is the error message
	WRONG_ARGC db "Must be a two command line argument", 0xa

section .text
	global _start

;; Stack Layout
	;rsp - this contains the arguments count
	;rsp +8 contains argv0
	;rsp +16 contains argv1
	;This continues in increments of 8


_start:
		; This gets the first stack value and
		; puts it into RCX	- This value is 
		; the amount of arguments we got
	pop rcx

	;;
	;;	Checking parameter count
	;;

		;We make sure that we have 3 arguments
	cmp rcx, 3
		;If we don't have 3 we throw an error
	jne argcError

	;;
	;; Adding the two parameters
	;;

	;Here we shift the stack pointer immediately
	;This is because the first parameter is always
	;the name of the program. We will only be
	;giving the program 2 arguments, although
	;there will always be one more
	add rsp, 8
	;Now the stack pointer is on the first
	;argument that we need so we use pop to
	;put it in the rsi register
	pop rsi
	call str_to_int ; We convert rax to an int
	mov r10, rax	;We move that int into r10

	;We already have argv[1] so this gets 
	;argv[2]
	pop rsi			;We do the same as above
	call str_to_int ;although with r11 vs r10
	mov r11, rax

	;We then add the two ints
	add r10, r11	;The result gets put in r10

	;;
	;; Converting to string
	;;
	;Storing the result in rax
	mov rax, r10
	;xor'ing a register with itself clears it
	;This is the same as "mov reg, 0"
	;This is going to be used for our number counter
	xor r12, r12
	;We use this to convert our int result
	;to a string
	jmp int_to_str


;;
;; Print argcError
;;
argcError:
	mov rax, 1		;This where execution starts
	mov rdi, 1
	mov rsi, WRONG_ARGC 	;The actual message
	mov rdx, 34		;Length of msg
	syscall
	jmp exit



int_to_str:
	;This is for the division remainder
	mov rdx, 0
	; this is the base
	mov rbx, 10
	; This means rax = rax / rbx (rax/10)
	div rbx
	; This adds \0
	add rdx, 48
	; Push the remainder to the stack
	push rdx
	; go to the next value in the number counter
	inc r12
	;we need to compare the factor with 0
	cmp rax, 0x0
	; this loops again
	jne int_to_str
	; If the factor is zero we go to our print subroutine
	jmp print




str_to_int:
	; accumulator
	xor rax, rax
	; base for multiplication in rcx
	mov rcx, 10



next:
	;this checks if rsi[0] = 0
	cmp [rsi], byte 0
	; if true then we call our return_str routine
	je return_str
	;move that character to b1
	mov bl, [rsi]
	;get number
	sub bl, 48
	; this is the same as rax = rax * 10
	mul rcx
	; this adds the digit to rax
	add rax, rbx
	; we then get the next number with this
	inc rsi
	;restart the loop
	jmp next


return_str:
	ret 	;returns from a procedure



printNewline:
	mov	rax, SYS_WRITE
	mov	rdi, STD_IN
	mov	rsi, NEW_LINE
	mov	rdx, 1
	syscall
	jmp	exit



print:
	;We use this code to get the number length
	mov rax, 1
	mul r12
	mov r12, 8
	mul r12
	mov rdx, rax

	;This prints the sum

	mov rax, SYS_WRITE
	mov rdi, STD_IN
	mov rsi, rsp
	; call SYS_WRITE
	syscall

	jmp printNewline



;;
;; Exit code
;;
exit: 
	;exit syscall
	mov rax, 60		;This is like exit()
	;exit code
	mov rdi,0		;exit() code paremeter
	; call exit syscall
	syscall 		;execute the instructions

