include irvine32.inc
.data
	msg1  byte "Enter string : ",0
	msg2 byte 7 DUP(0)
.code
main proc
	mov edx,offset msg1
	call writestring
	mov edx,offset msg2
	mov ecx,lengthof msg2
	call readstring
	
	mov ecx,sizeof msg2
	mov esi,0
	conv:
	mov al,msg2[esi]
	sub al,32
	mov msg2[esi],al
	inc esi
	loop conv
	mov edx,offset msg2
	call writestring
	call crlf
	exit
	main endp
	end main
	