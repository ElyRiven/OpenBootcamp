"""
Programación Multihilo

Es un paradigma de programación en el que se utilizan 2 o más hilos para
ejecutar el código. Esto permite que un programa se ejecute en paralelo con
otro programa.
"""

import _thread
import time

def horaActual(nombre_thread, tiempo_de_espera):
    count = 0
    while count < 5:
        time.sleep(tiempo_de_espera)
        count += 1
        print(f'hilo: {nombre_thread} - {time.ctime(time.time())}')

# Creación de hilos

#_thread.start_new_thread(horaActual, ('thread_uno', 1))
#_thread.start_new_thread(horaActual, ('thread_dos', 2))

# Los hilos se ejecutan cuando el programa se detiene por alguna razón

#time.sleep(1)

print('he disparado los hilos')

#while True:
#    pass

"""
Ficheros de Registro

Se utiliza la librería logging para mostrar información dependiendo de su
nivel - INFO, WARNING, CRITICAL, DEBUG, ERROR y varios más
"""

import logging

# Configuración para que se muestren todos los mensajes de nivel de severidad
# DEBUG o mayor. Por defecto se muestran de warning hacia adelante
logging.basicConfig(level=logging.DEBUG)

logging.debug('prueba de debug')
logging.info('Arrancando programa')
logging.warning('Hace calor')
logging.error('test')
logging.critical('adios')

"""
FUNCIÓN FILTER
"""

# Para filtrar una lista, se puede crear la función filter, o crear una
# lambda para aplicar el filtro

"""
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def mifuncion(x):
    if x % 2 == 0:
        return True
    return False
"""

def mifuncion2(x):
    if str(x).startswith('Dan'):
        return True
    return False

# resultado = filter(mifuncion, numeros)
# resultado = filter(lambda x: x % 2 == 0, numeros)

# resultado = filter(mifuncion2, ['Daniel','Danilo','Juan','Carlos','Eva'])
resultado = filter(lambda x: str(x).startswith('Ev'), ['Daniel','Danilo','Juan','Carlos','Eva','Eveline'])
print(list(resultado))

"""
FUNCIÓN MAP

Map aplica una función a todos los elementos de un elemento iterable (listas o tuplas)
"""

# SINTAXIS -> resultado = map.(FUNCION, LISTA)

def cuadrado(x):
    return x * x

# resultado = map(cuadrado, [1,2,3,4,5,6,7,8,9])
resultado = map(lambda x: x * x, [1,2,3,4,5,6,7,8,9])
print(list(resultado))

"""
FUNCIÓN REDUCE

Reduce ejecuta de forma recursiva una función en una lista hasta que se quede con 1
solo elemento.
Se utiliza para generar un único resultado a través de una lista, para ello
ejecuta cíclicamente una función sobre el resultado anterior
"""

# Importación de la función del módulo functools
from functools import reduce

# SINTAXIS -> reduce(FUNCTION, LISTA)

def suma(a, b):
    print(f'a= {a}, b= {b}')
    return a + b

res = reduce(suma, [1,2,3,4,5])
# res = reduce(lambda a,b: a+b, [1,2,3,4,5])
print(res)

"""
FUNCIÓN ZIP

Agrega iterables en una tupla y los devuelve. Combina 2 elementos iterables
y los devuelve como tupla. 
"""

cursos = ['java','python','git']
asistentes = [15,20,4]

demo = zip(cursos, asistentes)  # zip devuelve una lista de tuplas
# Si una de las listas tiene más elementos que la otra, el elemento extra
# no se toma en cuenta

print(list(demo))

"""
FUNCIONES all() y any()

Sirven para verificar que todas las condiciones de una lista se cumplan o
para verificar si alguna de las condiciones se cumplen.
"""

listaA = [1==1, 2==2, 3==4]

# res = any(listaA)
res = all(listaA)

print(res)

"""
FUNCIÓN round(), min(), pow()

sirve para redondear un valor numérico, encontrar el valor mínimo de una lista
pow() sirve para obtener el exponente de un valor
"""

a = 5.5
b = 5.4
c = 5.6

#print(round(a))
#print(round(b))
#print(round(c))

print(min(2,3,4,5,6,1,8,2))

print(pow(5,3))

"""
FUNCIÓN sorted()

Ordena una lista 
"""

lista = ['z','t','a','p','j','x','e','g','a']
# ordenada = sorted(lista)
# ordenada = sorted(lista, reverse=True)

# El 3er parámetro llamado 'key' es una lambda que permite personalizar el
# ordenado de la función sorted()
ordenada = sorted(lista, reverse=True, key=lambda x: str(x).startswith('g'))
print(ordenada)

"""
FUNCIÓN DE ENTRADA input()
"""

a = input('¿Cómo te llamas?')
print(f'hola {a}')

user = input('username: ')
passwrd = input('password: ')

print(user, passwrd)

# Se recomienda no utilizar input() para contraseñas, utilizar la librería getpass
from getpass import getpass
passwrd = getpass('password: ')

print(user, passwrd)

"""
CASTEO DE VARIABLES
int(), str()
"""

secreto = 50

valor = 0

while valor != secreto:
    valor = int(input('Introduce un número: '))

    if valor > secreto:
        print('Muy alto')
        continue
    if valor < secreto:
        print('Muy bajo')
        continue

print('Acertaste!')