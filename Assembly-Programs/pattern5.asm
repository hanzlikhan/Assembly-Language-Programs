include irvine32.inc
.data
	row dword ?
	alp byte 65
	msg1 byte "Enter number of rows : ",0
	count dword 1

.code 
main proc
	mov edx,offset msg1
	call writestring
	call readint
	mov ecx,eax
	outer:
		mov ebx,ecx
		mov ecx,count
		inner:
		mov al,alp
		call writechar
		inc alp
		loop inner 
		inc count
		mov ecx,ebx
		call crlf
		loop outer
	exit
	main endp
	end main
		
		