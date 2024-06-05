include irvine32.inc
.data 
.code 
main proc
	mov ecx,20
	functionality:
		mov ebx,ecx
		call showcharacters
		mov ecx,ebx
	loop functionality
	call crlf
exit 
main endp
	showcharacters proc
		mov ecx,10
		disp:
			mov eax,26
			call randomrange
			add eax,65
			call writechar
		loop disp
		call crlf
	ret
	showcharacters endp
end main