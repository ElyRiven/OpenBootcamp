"""
En este segundo ejercicio, tenéis que crear una aplicación que obtendrá los elementos impares de una lista
pasada por parámetro con filter y realizará una suma de todos estos elementos obtenidos mediante reduce.
"""

from functools import reduce

numeros = [5,2,3,4,8,9,6,11,7,25,21,10,16,15,39,31]

impares = filter(lambda x: x % 2 != 0, numeros)

suma = reduce(lambda x, y: x + y, impares)

print(f'La suma de todos los números impares de la lista es: {suma}')