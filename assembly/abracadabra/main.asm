section .data
msg DB " abracadabra", 10, 0

section .text
; Start of main function
global main

main:
  ;call getinput

  mov r8, 0  ; Counter
  mov r9, 0  ;Count to
  mov r10, 0 ; Zeroing scratch register
  mov r11, 0 ; Zeroing scratch register
  mov r9, 5  ; Max Count



comparers:
  cmp r9, r8  ;If countto > Counter
  jne abranum   ;if True call subroutine abra
  je exit

abranum:
  ;rax is the return function
  mov rax, 1		;This where execution starts
  ;rdi contains the commands first parameter
  mov rdi, 1
  ;rsi contains the second parameter
  mov rsi, msg	;The actual message
  ;rdx contains the third parameter
  mov rdx, 13		;Length of msg
  syscall

  inc r8
  call comparers


exit:
	;exit syscall
	mov rax, 60		;This is like exit()
	;exit code
	mov rdi,0		;exit() code paremeter
	; call exit syscall
	syscall 		;execute the instructions
