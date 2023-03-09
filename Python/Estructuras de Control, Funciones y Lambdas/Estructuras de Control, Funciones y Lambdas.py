"""
ESTRUCTURAS DE CONTROL

a = 5
b = 6

c = 7

# > Mayor
# >= Mayor o Igual
# < Menor
# <= Menor o Igual
# == Exáctamente Igual

resultado = a == b
print(resultado)

resultado = (a > 5 and c < 7)
print(resultado)

if a >= 5 and b <= 6:
    print('Sentencia If')
elif a >= 8:
    print('Sentencia elif')
else:
    print('Sentencia else')

contador = 1

while contador <= 10:
    print("contador vale ", contador)
    contador += 1

lista = [1, 2, 3, 4]
tupla = (1, 2, 3, 'n', 'g', 7.5)

for valor in lista:
    print(valor)

for valor in tupla:
    print(valor)

for numero in range(5, 11):
    print(numero)

longitud = len(lista)

for numero in range(longitud):
    print(lista[numero])

# match es el switch en Python 3.10. Versiones anteriores no lo soportan
#valor = 3
#match valor:
#    case 1:
#        print('Valor es 1')
#    case 2:
#        print('Valor es 2')

# else para el for o_O

lista = ['hola', 'mensaj', 'adios']
for palabra in lista:
    if palabra == 'mensaje':
        print('Encuentro la palabra mensaje')
        break
# Se ejecuta siempre que el for se haya roto con break
else:
    print('No encuentro nada')

"""

"""
FUNCIONES
"""

def miFuncion():
    print("Líneas")
    print("Más Líneas")
    for i in range(1, 11):
        print(i)

# miFuncion()

hoyHace = 3,9

def funcionNombre(nombre):
    #globar hoyHace         Sirve para modificar una variable global
    hoyHace = 15.0
    print("Hola, ", nombre, " La temperatura es de:", hoyHace)

funcionNombre('Daniel')

def matematica(a, b):

    def suma(a, b):
        print(a + b)
    
    def resta(a, b):
        print(a - b)

    suma(a, b)
    resta(a, b)

matematica(5, 2)


def miNombre(nombre="Juan"):
    print("Hola", nombre)

def suma(a, b, c):
    print(a + b + c)

miNombre()
miNombre('Daniel')

#Funcionan si la función recibe parametros opcionales
#suma()
#suma(2)
#suma(2, 4)
#suma(1, 1, 1, 1)
suma(c = 9, a = 2, b = 5)

def suma(*args):
    resultado = 0

    for i in args:
        resultado += i

    print(resultado)

suma(1,2,3,4,5,6,7,8,9)
suma(12,5,8,34,87)

def suma(**kwargs):

    #print(kwargs)

    """
    for key, value in kwargs.items():
        print(key, "=", value)
    """

    if 'coche' not in kwargs: 
        return    
    if kwargs['coche'] == 'bonito':
        print("Tu coche es bonito!")

suma(vivienda = 'piso', coche = 'rojo')

def sumador(**kwargs):
    inicial = kwargs['inicial'] if 'inicial' in kwargs else 0
    final = kwargs['final'] if 'final' in kwargs else 0

    resultado = 0
    for x in range(inicial, final + 1):
        resultado += x

    return resultado

#print(sumador(inicial = 5, final = 15))
print(sumador(inicial = 8))
#print(sumador(final = 13))

"""
FUNCIONES ANÓNIMAS (LAMBDAS)
"""

anonima = lambda nombre, nombre2: print('hola', nombre, " adiós, ", nombre2)
anonima('Pepe', 'Juan')

sumatoria = lambda x: x+x
print(sumatoria(2))