// Autheurs : Abass, Ely Cheikh - Brizini, Mahfoud - Chekkaf, Mehdi
// Modifié par : Alfred Galibois-Bouchard (2278383) et Carlos Tabet(2302997)
// Date : 2024-01-26
#include <stdio.h>

int fibonacci(int n) { //le code qui suit et une traduction directe du code fait en assembleur
    // Cette fonction devrait retourner le nième terme de la suite
    int terme;
    int n0 = 0;
    int n1 = 1;
    if (n == 0)
        return n0;
    n--;
    if (n == 0)
        return n1;
    while (n!= 0)
    {
        terme = n0 + n1;
        n0 = n1;
        n1 = terme;
        n--;
    }
    return terme;
}

int main() {
    // Affichage des 10 premiers termes de la suite de Fibonacci
    for (int i = 0; i < 10; i ++) printf("Fibonacci %d = %d\n", i, fibonacci(i));
    return 0;
}