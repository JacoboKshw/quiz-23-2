%{
#include <stdio.h>
int estado = 0;
int transiciones[2][2] = {
    {0, 1},
    {0, 1},
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
            if (estado == 1)
                printf("Cadena ACEPTADA\n");
            else
                printf("Cadena RECHAZADA\n");
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
