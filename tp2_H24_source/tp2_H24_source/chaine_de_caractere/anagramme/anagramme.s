.data
string1:
    .asciz  "chien" 
length1:
    .int 0
sum1:
    .int 0
string2:
    .asciz  "niche"
length2:
    .int 0
sum2:
    .int 0
faux:
    .asciz "Faux"
vrai:
    .asciz "Vrai"

.text
.globl anagramme
main:
anagramme: 

    # VOTRE CODE ICI

main : 
    push %ebp
    mov %esp, %ebp
    push %ebx
    xor %eax, %eax          
    xor %ecx, %ecx
    xor %ebx, %ebx
    xor %edx, %edx
    movl $string1, %esi
    movl $length1, %edi
    movl $sum1, %ebx

trouve_longueur1:
    lodsb
    cmp $0, %al
    je init_chaine2
    addl %eax, (%ebx)
    incl (%edi)
    jmp trouve_longueur1

init_chaine2:
    movl $string2, %esi
    movl $length2, %edi
    movl $sum2, %ecx

trouve_longueur2:
    lodsb
    cmp $0, %al
    je compare_longueur
    addl %eax, (%ecx)
    incl (%edi)
    jmp trouve_longueur2

compare_longueur:
    cmp %edi, %ebx
    je compare_sommes
    jmp pas_anagramme

compare_sommes:
    cld
    rep cmpsb 
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


