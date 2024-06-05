include irvine32.inc
.data
msg byte "Muhammad Hanzla",0
.code 
main proc 
	mov ecx,4
	mov edx,offset msg
disp:
	mov eax, 16
	call randomrange
	call settextcolor
	call writestring
	call crlf
loop disp
exit 
main endp
end main