include irvine32.inc
.data 

.code 
main proc

mov ecx,1000
disp:
	mov eax,26
	call randomrange
	mov dh,al
	mov eax,80
	call randomrange
	mov dl,al
	call gotoxy
	mov eax,16
	call randomrange
	call settextcolor
	mov al,'X'
	call writechar
	mov eax,100
	call delay
loop disp
exit
main endp
end main