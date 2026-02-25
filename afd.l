/* afd.l - AFD con Flex que acepta cadenas binarias que terminan en 1 */

%{
#include <stdio.h>

/* Estados del AFD */
int estado = 0; /* 0 = q0 (inicial), 1 = q1 (aceptacion) */

/* Tabla de transiciones [estado][simbolo]: simbolo 0->indice 0, 1->indice 1 */
int transiciones[2][2] = {
    {0, 1},  /* q0: con '0' -> q0, con '1' -> q1 */
    {0, 1},  /* q1: con '0' -> q0, con '1' -> q1 */
};
%}

%%

[0]     {
            estado = transiciones[estado][0];
            printf("Simbolo '0' -> estado q%d\n", estado);
        }

[1]     {
            estado = transiciones[estado][1];
            printf("Simbolo '1' -> estado q%d\n", estado);
        }

\n      {
            /* Fin de cadena: verificar si estamos en estado de aceptacion */
            if (estado == 1)
                printf("Cadena ACEPTADA\n");
            else
                printf("Cadena RECHAZADA\n");

            /* Reiniciar para la siguiente cadena */
            estado = 0;
        }

.       {
            printf("Simbolo invalido: '%s'\n", yytext);
        }

%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
