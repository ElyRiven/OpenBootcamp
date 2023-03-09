numero = 5
texto = 'quijote'
otromas = 1.2

# Formateo de String antíguo (Ya no se utiliza)

"""
print('El numero es %d y el texto %s y tiene %f' % (numero, texto, otromas))
print('Valor Flotante: %.2f' %(otromas))
"""

# Formateo hasta Python 3.6

"""
#print('El numero es {1} y el texto es {0} y tiene {2}'
#     .format(numero, texto, otromas))
print('El numero es {n1} y el texto es {texto} y tiene {otromas}'
      .format(n1=numero, texto=texto, otromas=otromas))
"""

# Formateo moderno con F Strings, Python +3.6

def suma(a, b):
    return a + b

txt = f'El numero es {suma(numero, numero)} y el texto es {texto.upper()} y tiene {otromas}'
print(txt)

"""
Operaciones y Métodos de Strings
"""

num = 511
print(type(num))

numtxt = str(num)
print(type(numtxt))

# repr() y str() sirven para generar un string de una entrada.
# str() se usa para generar una salida informal para el usuario final
# repr() sirve para salidas de depuración y desarrollo.

print(repr(num))
print(numtxt)

class Juguete:
    nombre = ''
    precio = 0.0

    def __init__(self, nombre, precio):
        self.nombre = nombre
        self.precio = precio

    # Sobrecarga del método __str__ para representar este objeto como String
    def __str__(self):
        return f'Mi nombre es {self.nombre} y mi precio {self.precio}'

    # Sobrecarga del método __repr__
    def __repr__(self):
        return f'Potato({self.nombre}, {self.precio})'

j1 = Juguete('Patata', 10.5)
print(str(j1))

demo = j1
print(type(demo))
demo = str(j1)
print(type(demo))

print(repr(j1))

j2 = Juguete('Dino', 3.4)
print(j1)
print(j2)
representacionTextual = str(j1)
print(representacionTextual)

cadena = 'En un lugar de la ManchA'
print(cadena.title())
print(cadena.count('a'))
print(cadena.lower())
print(cadena.upper().count('A'))

cadena = '                en un lugar               '
print(cadena)
print(cadena.lstrip())
print(cadena.split())
print(cadena.split('en'))
print(cadena.startswith('en'))
print(cadena.endswith(' '))
print(cadena.lower().lstrip())
print(cadena.lower().lstrip().endswith(' '))

"""
Conjunto de Funciones de Manipulación de Ficheros
"""
# Tipos de permiso al manipular ficheros
# r: Read / Lectura
# a: Append / Adjuntar
# w: Write / Escritura
# x: Create / Crear

# ESTO SE AÑADE O NO AL FINAL DEL PERMISO
# t: texto
# b: Binary
# +

#open()
f = open('Entradas & Salidas/Fichero.txt', 'r')
# datos = f.read(38) # Dentro de .read() se puede poner la cantidad de bits que queremos leer
# primera_linea = f.readline()

"""
BUCLE PARA LEER UN FICHERO LÍNEA A LÍNEA
"""

# 1. datos = None
# 1. while datos != '':

# 2. datos = ','
# 2. while len(datos) > 0:

#    datos = f.readline()
#    print(datos)

datos = f.readlines()

print(datos)

f.close

"""
Escritura de Ficheros
"""

f = open('Entradas & Salidas/mifichero.txt', 'w')
f.write('datos\n')
f.write('datos2\n')

def escribe(fichero, datos):
    f = open(fichero, 'w')
    
    for linea in datos:
        if not linea.endswith('\n'):
            print('Linea sin \\n: ', linea)
            linea += '\n'

        f.write(linea)

lista = [
    'una linea',
    'dos lineas\n',
    'tres lineas'
]

escribe('Entradas & Salidas/mifichero.txt', lista)

f.writelines(lista)
f.close

"""
Serialización y Desserialización de Datos

Datos serializados se refiere a una secuencia de datos que se pueden almacenar en disco.
"""

import pickle

class Juguete:
    nombre = ''
    precio = 0.0

    def __init__(self, nombre, precio):
        self.nombre = nombre
        self.precio = precio

    def getNombre(self):
        return self.nombre


# SERIALIZANDO LA CLASE JUGUETE CON EL MÓDULO PICKLE
j1 = Juguete('Potato', 10.5)
f = open('datos.bin', 'wb')

# .dump() -> 1. el objeto que queremos convertir a binario, 2. el archivo en el que guardaremos la información binaria
pickle.dump(j1, f)
f.close()

# CARGANDO LOS DATOS SERIALIZADOS EN UN PROGRAMA
f = open('datos.bin', 'rb')
jpatata = pickle.load(f)
f.close

print(type(jpatata))
print(jpatata.getNombre(), 'precio:', jpatata.precio)

class Estado:
    players = Players()
    status = Status()
    life_remaining = 12
    armor = False

f = open('gamestatus.dat', 'wb')
e = Estado()
pickle.dump(f, e)
f.close()

# LIBRERÍA PYGAME PARA ECHARLE UN OJO A CÓDIGO DE JUEGOS