// Autheurs : Abass, Ely Cheikh - Brizini, Mahfoud - Chekkaf, Mehdi
// Modifié par : Alfred Galibois-Bouchard (2278383) et Carlos Tabet(2302997)
// Date : 2024-01-26

#include <stdio.h>

int syracuse(int u0, int nb) {
    for (int i = 0; i < nb; i++)
    {
        if (u0 & 1)
        {
            u0 = 3 * u0 + 1;
        }
        else 
        {
            u0 = u0/2;
        }
    }
    return u0;
}

int main() {
    int nb = 3; // Nombre de termes
    int u0 = 15; // Terme initial
    printf("Syracuse %d = %d\n", u0, syracuse(u0, nb));
    return 0;
}
