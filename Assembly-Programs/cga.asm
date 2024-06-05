include irvine32.inc
.data 
var1 dword 200
.code 
main proc 
mov eax,0
mov al,byte ptr var1
call writechar
call crlf
exit 
main endp
end main