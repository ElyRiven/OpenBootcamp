"""
CLASES Y OBJETOS EN PYTHON
"""

"""
Clases Dinámicas

Son clases que se instancian en diferentes espacios de memoria y son independientes las unas de las otras.
"""
class Juguete:
    # Propiedades, Atributos o Variables dentro de Clase
    #
    # Convención: Cuando se declaran Atributos en un objeto o clase, si los atributos no deberían modificarse fuera de la clase,
    #             se debe anteponer un guión bajo en el nombre de la variable (_)
    _encendido = True

    # Constructor

    def __init__(self):
        print('Estoy en la clase Juguete')  

    # Métodos o Funciones de Clase
    def apaga(self):
        self._encendido = False

    def enciende(self):
        self._encendido = True

    def isEncendido(self):
        return self._encendido

# Instancia de la clase Dino
d1 = Juguete()
print(d1._encendido)
d1.apaga()

# Esto se considera una mala práctica, no se deben modificar los atributos de una clase de esta forma
d1.encendido = False
print(d1._encendido)

d2 = Juguete()
d2.enciende()
print(d2.isEncendido())

"""
Clases Estáticas

Son clases que comparten toda su estructura. No crean nuevas instancias en nuevos espacios de memoria,
se modifica siempre la misma.
"""

class Estatica:
    numero = 1

    def incrementa():
        Estatica.numero += 1

Estatica.incrementa()
print(Estatica.numero)

Estatica.incrementa()
print(Estatica.numero)

Estatica.incrementa()
print(Estatica.numero)

# Podrían usarse en PlaceHolders

class Usuario:
    Nombre = ''
    Apellido = ''

"""
HERENCIA

Python soporta la herencia múltiple, pero no es una buena práctica utilizarla
"""

class Patata(Juguete):
    
    _encendido = True

    # Métodos o Funciones de Clase
    def apaga(self):
        self._encendido = False

    def enciende(self):
        self._encendido = True

    def isEncendido(self):
        return self._encendido
    
    def quitarOreja(self):
        pass

    def ponerOreja(self):
        pass

class Dino(Juguete):

    color = None
    nombre = None

    # Método Constructor

    def __init__(self, nombre):

        # Llamada del constructor de la clase padre
        super().__init__()
        
        self.color = 'Verde'
        self.nombre = nombre
        print('Estoy en la clase Dino')

    # Método Destructor
    #
    # Se utiliza para desalojar memoria en programas grandes. No es necesario implementarlo ya que Python
    # ejecuta la misma tarea con el recolector de basura.
    # Se ejecuta cuando una variable se detecta como inutilizada.

    def __del__(self):
        pass
        #print('Estoy en el destructor de la clase', self.__class__)

p = Patata()
p.enciende()

#print(dir(p))

d = Dino('Daniel')
print(d.color)
print(d.nombre)

"""
CLASES ABSTRACTAS

necesito el import 'from abc import ABC, abstractmethod' para usar clases abstractas
Las clases abstractas no se pueden instanciar, se deben derivar o heredar para
implementar sus métodos.
Las clases abstractas define una serie de funciones comunes para otras clases, además
se debe utilizar la anotación @abstractmethod en todos los métodos que las herencias
deben implementar.
Las clases abstractas si pueden tener métodos no abstractos.
"""
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def sonido(self):
        pass
    
    def diHola(self):
        print('Hola!')

#a = Animal()

class Perro(Animal):
    
    def sonido(self):
        print('Guau!')

class Gato(Animal):

    def sonido(self):
        print('Miau!')

p = Perro()
p.sonido()
p.diHola()

g = Gato()
g.sonido()
g.diHola()


"""
COMPOSICIÓN DE CLASES
"""
"""
Es un concepto parecido a la herencia.
Las clases compuestas tienen una o más instancias de otras clases.
La principal diferencia es que las clases compuestan heredan atributos, no métodos
Las clases compuestas no heredan funciones/métodos.

Las clases heredadas, heredan de otra clase sus atributos y métodos, pero no tiene
instancias de otras clases en ella.
"""

class Motor:
    tipo = 'Diessel'

class Ventanas:
    cantidad = 4
    def CambiarCantidad(self, cant):
        self.cantidad = cant

class Ruedas:
    cantidad = 4

class Carrocería:
    ventanas = Ventanas()
    ruedas = Ruedas()

class Coche:
    motor = Motor()
    carroceria = Carrocería()

c = Coche()

print("Motor es", c.motor.tipo)
print("Ventanas es", c.carroceria.ventanas.cantidad)

c.carroceria.ventanas.CambiarCantidad(3)

print("Ventanas es", c.carroceria.ventanas.cantidad)

class Base:
    pass

# HERENCIA
# Relación 'is a': 
# HijaInher IS A Base, porque hereda de Base
class HijaInher(Base):
    pass

# COMPOSICIÓN
# Relación 'has a':
# HijaComp HAS A Base, porque contiene una instancia de Base
class HijaComp:
    b = Base()
    pass


"""
Ejemplo de Composición
"""

class Categoria:
    idCategoria = 0
    nombre = ''

class Proveedores:
    idProveedor = 0
    nombre = 'Pepito'

class Productos:
    idProducto = 0
    categoriaProducto = Categoria()
    precio = 0
    Tamaño = 0
    TipoDeProducto = 0
    CIFProveedor = Proveedores()

p = Productos()
print(p.CIFProveedor.nombre)
print(p.categoriaProducto.idCategoria)