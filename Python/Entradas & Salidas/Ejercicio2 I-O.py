"""
En este segundo ejercicio, tendréis que crear un archivo py y dentro crearéis una clase Vehículo,
haréis un objeto de ella, lo guardaréis en un archivo y luego lo cargamos.
"""

import pickle 

class Vehiculo:
    marca = ''
    modelo = ''
    costo = ''
    puertas = ''

    def __init__(self, marca, modelo, costo, puertas):
        self.marca = marca
        self.modelo = modelo
        self.costo = costo
        self.puertas = puertas        

myDreamCar = Vehiculo('Lamborghini', 'Sesto Elemento', '1500000', '3')

carFile = open('Entradas & Salidas/ficheroEj2.bin','xb')

carFile = open('Entradas & Salidas/ficheroEj2.bin','wb')
pickle.dump(myDreamCar, carFile)
carFile.close()

carFile = open('Entradas & Salidas/ficheroEj2.bin','rb')
savedCar = pickle.load(carFile)
carFile.close()

print(savedCar.__repr__())
print(savedCar.marca)
print(savedCar.modelo)
print(savedCar.costo,'$')