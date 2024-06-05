include irvine32.inc
.data
	row dword 4
	starr byte "*"
	col dword 1
	cnt dword ?
	spc dword 3
	space byte " ",0
.code 
main proc

mov ecx,row
outer:
	mov ebx,ecx
	mov ecx,spc
	inner1:
	
		mov edx, offset space
		call writestring
		loop inner1
	dec spc
		mov ecx,col
		inner2:
			
			mov edx,offset starr
			call writestring
			
			loop inner2
			call crlf
			add col,2
		mov ecx,ebx
		loop outer

exit
main endp
end main