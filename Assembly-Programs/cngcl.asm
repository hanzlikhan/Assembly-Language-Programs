include irvine32.inc
.data
msg byte "hanzla",0
.code  
main proc
mov eax,yellow
call settextcolor
mov edx,offset msg
call writestring
exit 
main endp
end main