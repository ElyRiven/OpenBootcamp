"""
MÓDULOS DE PYTHON, CONVENCIONES Y BUENAS PRÁCTICAS DE CÓDIGO LIMPIO
"""

"""
# Convención de importación de módulos
import matematicap as matp

def main():
    # Invocación de funciones de módulo externo
    res = matp.suma(2,2)
    resResta = matp.resta(2,1)    
    print('Hola en main()', res, resResta)

    print(matp.comoMeLlamo())

    op = matp.Operador()
    print(op.multiplicador(4, 2))

    print(matp.PI)

if __name__ == '__main__':
    main()
"""

# Importación de Paquetes

# import operaciones.suma (Otra forma de importar el paquete y los módulos deseados)

"""
from operaciones import suma



def main():
    print(suma.suma(2, 2))

    mp = suma.Multiplicador()
    print(mp.multiplica(5,4))

if __name__ == '__main__':
    main()
"""

# Paquetes dentro de paquetes

# from operaciones import sumador, restador (Otra forma de importar)

# from operaciones import * (ver __init__.py del paquete principal)

import operaciones.sumador.suma as s
import operaciones.restador.resta as r

def main():
    resta = r.restar(8, 2)
    suma = s.suma(9, 3)


if __name__ == '__main__':
    main()