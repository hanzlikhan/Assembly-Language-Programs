include irvine32.inc
.code 
main proc
mov ecx,-1
disp:
mov al,"*"
call writechar
mov eax,2000

call delay
loop disp
exit 
main endp
end main
