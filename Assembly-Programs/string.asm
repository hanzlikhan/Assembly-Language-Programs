include irvine32.inc
.data 
msg1 byte "enter your name : ", 0
msg2 byte "welcome ",0
sname byte 50 dup(?)
.code 
main proc 
	mov edx,offset msg1
	call writestring
	mov edx,offset sname 
	mov ecx, sizeof sname-1
	call readstring
	mov edx , offset msg2
	call writestring
	mov edx,offset sname
	call writestring
	
	; by char print
	mov esi,offset sname
	mov ecx,sizeof sname-1
disp:
	mov al,[esi]
	call writechar
	mov eax,2000
	call delay
	inc esi
loop disp
	
exit
main endp
end main