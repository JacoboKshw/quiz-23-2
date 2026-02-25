# Quiz 23/2

AFD que acepta cadenas binarias que terminan en `1`.

## Cómo ejecutar

### Python
```bash
python afd.py < prueba.txt
```

### Flex
```bash
flex afd.l
gcc lex.yy.c -o afd -lfl
./afd < prueba.txt
```

## prueba.txt
Una cadena por línea:
```
101
110
1
0
```
