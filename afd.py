transiciones = {
    'q0': {'0': 'q0', '1': 'q1'},
    'q1': {'0': 'q0', '1': 'q1'},
}

estadoIni = 'q0'
estadosAcep = {'q1'}

def afd(cadena):
    estado = estadoIni

    for simbolo in cadena:
        if simbolo not in transiciones[estado]:
            return False
        estado = transiciones[estado][simbolo]

    return estado in estadosAcep

try:
    while True:
        cadena = input()
        if cadena:
            resultado = afd(cadena)
            print(f"Cadena '{cadena}': {'ACEPTADA' if resultado else 'RECHAZADA'}")
except EOFError:
    pass
