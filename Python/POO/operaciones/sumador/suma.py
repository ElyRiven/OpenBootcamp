# Los módulos nunca deben tener código de ámbito global

def suma(a,b):
    return a+b

# Mala práctica
print('Hola, Estas en suma y soy el módulo: ', __name__)

class Multiplicador:
    def multiplica(self, a, b):
        return a*b
