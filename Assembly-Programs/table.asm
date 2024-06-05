include irvine32.inc
.data 
	msg1 byte "Enter your Number :",0
	staric byte "*",0
	eqs byte "=",0
	cnt dword 1
.code 
hanzu proc
mov dh,13
mov dl,40
call gotoxy
	mov edx,offset msg1
	call writestring
	call readint
	mov ebx,eax
	mov ecx,10
disp:
	; calculate first
	mov eax,ebx
	imul cnt
	mov esi,eax
	
	;print first number
	mov eax,ebx
	call writedec
	
	;print "*"
	mov edx,offset staric
	call writestring
	
	;print sec num
	mov eax,cnt
	call writedec
	
	;print "="
	mov edx, offset eqs
	call writestring
	
	;print ans
	mov eax,esi
	call writedec
	call crlf
	inc cnt
	loop disp
	
	exit
	hanzu endp
	end hanzu
	
	