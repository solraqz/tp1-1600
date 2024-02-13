// Autheurs : Abass, Ely Cheikh - Brizini, Mahfoud - Chekkaf, Mehdi
// Modifié par : Vos noms et vos matricules
// Date : 2024-01-26
#include <stdio.h>

int calculerNiemeTerme(int a0, int r, int nb) {
    int answer;
    nb--;
    if (nb == 0)
    {
        answer = a0;
        return answer;
    }
    nb--;
    if (nb == 0)
    {
        answer = a0 * r;
        return answer;
    }
    answer = r;
    while (nb != 0)
    {
        answer *= r;
        nb--;
    }
    answer *= a0;
    return answer;
    
}

int main() {
    int a0; 
    int r;  
    int nb;  

    printf("Entrez le premier terme (a0): ");
    if (scanf("%d", &a0) != 1) return -1;
    printf("Entrez la raison (r): ");
    if (scanf("%d", &r) != 1) return -1;
    printf("Entrez le nombre de termes (N): ");
    if (scanf("%d", &nb) != 1) return -1;

    int sum = calculerNiemeTerme(a0, r, nb);
    printf("La nième terme de la série géométrique est: %d\n", sum);

    return 0;
}
