include irvine32.inc
.data 
msg1 byte "welcome to pakistan",0dh,0ah,0
sname byte 20 dup(0)
.code 
main proc 
	mov edx, offset msg1
	call writestring
	
	mov eax, 20
	call writedec
	call crlf
	
	call writeint
	call crlf
	
	call writehex
	call crlf
	
	call writebin
	call crlf
	
	; randomrange builtin function
	mov eax,50
	call randomrange
	call writedec
	call crlf
	call writedec
	call crlf
	
	
	;gotoxy
	mov dh,20
	mov dl,40
	call gotoxy
	; settextcolor builtin function
	
	mov eax , yellow +(red*16)
	call settextcolor
	mov edx, offset msg1
	call writestring
	
	; delay function
	mov eax,3000
	call delay
	mov al,'z'
	call writechar
	call crlf
	call writeint
	mov esi,offset sname 
	mov ecx, sizeof sname-1
	call readstring
	
exit 
main endp
end main