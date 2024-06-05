include irvine32.inc

.data
    row dword 4         ; Number of rows in the upper half of the diamond
    starr byte "*"      ; Character to print
    col dword 1         ; Starting number of stars
    cnt dword ?         
    spc dword 3         ; Starting number of spaces
    space byte " ", 0   ; Space character

.code
main proc

    ; Print the upper part of the diamond
    mov ecx, row        ; Outer loop counter for rows
upper_part:
    mov ebx, ecx        ; Save the current row count in ebx
    mov ecx, spc        ; Set the space counter
print_spaces_upper:
    mov edx, offset space
    call writestring    ; Print a space
    loop print_spaces_upper
    dec spc             ; Decrease the space counter for the next row

    mov ecx, col        ; Set the star counter
print_stars_upper:
    mov edx, offset starr
    call writestring    ; Print a star
    loop print_stars_upper

    call crlf           ; Move to the next line
    add col, 2          ; Increase the star count for the next row
    mov ecx, ebx        ; Restore the row counter
    loop upper_part     ; Loop for the next row

    ; Prepare for the lower part of the diamond
    mov spc, 1          ; Reset space counter for lower part
    sub col, 4          ; Reset star count for lower part (2 less than last increment in upper part)
    mov ecx, row        ; Reset row counter for lower part

    ; Print the lower part of the diamond
lower_part:
    mov ebx, ecx        ; Save the current row count in ebx
    mov ecx, spc        ; Set the space counter
print_spaces_lower:
    mov edx, offset space
    call writestring    ; Print a space
    loop print_spaces_lower
    inc spc             ; Increase the space counter for the next row

    mov ecx, col        ; Set the star counter
print_stars_lower:
    mov edx, offset starr
    call writestring    ; Print a star
    loop print_stars_lower

    call crlf           ; Move to the next line
    sub col, 2          ; Decrease the star count for the next row
    mov ecx, ebx        ; Restore the row counter
    loop lower_part     ; Loop for the next row

    exit
main endp
end main
