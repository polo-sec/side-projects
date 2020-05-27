extern printf

section .data
msg dw "finished"

section .bss
digitSpace resb 100   ;actual string goes here
digitSpacePos resb 8  ;keeps track of how far through the string we are

section .text

global main

main:
  ;What do I need?
  ;3 Registers:
    ;r8 - first number
    ;r9 - second number
    ;

    mov r8, 0 ;fib counter reg 1
    mov r9, 1 ;fib counter reg 2
    mov r10, 0  ;keeps track of addition times
    call fibloop

fibloop:
  add r8, r9
  add r9, r8
  inc r10

  cmp r8, r9
  jge exception
  jmp r8bigger

exception:
    call _printRAX

r8bigger:
  cmp r10, 5  ;Compares current count to max count (5)
    je print;printint     ;If r10 = max count (5) then print
    jmp fibloop  ;If r10 isn't at max count then redo the loop

print:
  ;rax is the return function
  mov rax, 1		;This where execution starts
  ;rdi contains the commands first parameter
  mov rdi, 1
  ;rsi contains the second parameter
  mov rsi, msg	;The actual message
  ;rdx contains the third parameter
  mov rdx, 8		;Length of msg
  syscall

  call exit

exit:
	;exit syscall
	mov rax, 60		;This is like exit()
	;exit code
	mov rdi,0		;exit() code paremeter
	; call exit syscall
	syscall 		;execute the instructions
