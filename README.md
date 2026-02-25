# Quiz 23/2

Implementación de un AFD en Python y C (con Flex) que acepta cadenas binarias que terminan en `1`.

## Descripción del AFD

- **Alfabeto:** `{0, 1}`
- **Estados:** `q0` (inicial), `q1` (aceptación)
- **Lenguaje aceptado:** cadenas binarias que terminan en `1`

### Tabla de transiciones

| Estado | `0` | `1` |
|--------|-----|-----|
| q0     | q0  | q1  |
| q1     | q0  | q1  |

---

## Archivos

| Archivo | Descripción |
|---------|-------------|
| `afd.py` | Implementación en Python |
| `afd.l` | Implementación en C usando Flex |
| `prueba.txt` | Archivo de cadenas de entrada |

---

## Uso

### Python

```bash
python afd.py < prueba.txt
```

### C con Flex

```bash
flex afd.l
gcc lex.yy.c -o afd -lfl
./afd < prueba.txt
```

---

## Formato de prueba.txt

Una cadena binaria por línea:

```
101
110
1
0
1001
000
```

## Ejemplo de salida

```
Cadena '101':  ACEPTADA
Cadena '110':  RECHAZADA
Cadena '1':    ACEPTADA
Cadena '0':    RECHAZADA
Cadena '1001': ACEPTADA
Cadena '000':  RECHAZADA
```
