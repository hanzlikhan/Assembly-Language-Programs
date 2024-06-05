include irvine32.inc
.data 
row dword 5
col dword 1
msg byte "*"
.code 
main proc
mov ecx , row
outer:
	mov ebx,ecx
	mov ecx,col
	inner:
		mov edx,offset msg
		call writestring
		loop inner
	call crlf
	inc col
	mov ecx,ebx
	loop outer
exit 
main endp
end main
		