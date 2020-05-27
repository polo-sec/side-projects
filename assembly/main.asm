global AddInts
global MulBy17
global Sub5x

segment .text
AddInts:
	mov eax, edi	;Moves first parameter into eax (a)
	add eax, esi	;Adds second int parameter to the acc (b)
	add eax, ecx	;Adds third int parameter to acc
	add eax, edx	;Adds fourth int parameter to acc
	ret

MulBy17:
	imul edi, 17	;Multiples first parameter by 17
	mov eax, edi	;Moves first result into the acc
	ret

Sub5x:
	imul esi, 5		;Multples first parameter by 5
	sub edi, esi	;Subtracts 5xint from second parameter
	mov eax, edi	;Moves result into acc for return
	ret

	