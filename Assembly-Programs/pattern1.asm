include irvine32.inc
.data
row dword 5
col dword 5
starr  byte "*",0
.code 
main proc
mov ecx,row ;5
outer:
mov ebx,ecx ;5
mov ecx,col ;5
inner:
	mov edx,offset starr
	call writestring
	loop inner
	call crlf
	dec col
	mov ecx,ebx
	loop outer
exit
main endp
end main