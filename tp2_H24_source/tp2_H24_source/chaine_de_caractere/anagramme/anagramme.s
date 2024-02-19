.data
    string1:
        .asciz  "chien" 
    length:
        .int 0
    sum1:
        .int 0
    sum2:
        .int 0
    string2:
        .asciz  "niche"
    faux:
        .asciz "Pas Anagramme"
    vrai:
        .asciz "Anagramme"

.text
.globl anagramme

anagramme:
push %ebp
mov %esp, %ebp
push %ebx
xor %eax, %eax          
xor %ebx, %ebx
xor %ecx, %ecx
xor %edi, %edi
xor %esi, %esi
movl $string1, %esi
movl %edi, length

trouve_longueur1:
lodsb
cmp $0, %al
je init_chaine2
addl %eax, %ebx
incl %edi
jmp trouve_longueur1

init_chaine2:
xor %esi, %esi
movl %edi, length
movl $string2, %esi
xor %edi, %edi
xor %eax, %eax

trouve_longueur2:
lodsb
cmp $0, %al
je compare_longueur
addl %eax, %ecx
incl %edi
jmp trouve_longueur2

compare_longueur:
cmp %edi,length
je compare_sommes
jmp pas_anagramme

compare_sommes:
cmp $0, %edi
je pas_anagramme
movl %ebx, %eax
addl length, %eax
movl %eax, %ebx
movl %ecx, %eax
addl length, %eax
movl %eax, %ecx
cmp %ebx, %ecx
jne pas_anagramme
push $vrai
call printf
add $4, %esp
jmp bye

pas_anagramme:
push $faux
call printf
add $4, %esp

bye:
popl %ebx
popl %ebp
ret



