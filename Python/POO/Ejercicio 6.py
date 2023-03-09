class Vehiculo:
    color = 'Negro'
    ruedas = 4
    puertas = 5

class Coche(Vehiculo):
    velocidad = 350
    cilindrada = 'Alta'

miCoche = Coche()

print("Mi coche es de color", miCoche.color,
      "Tiene un máximo de",miCoche.velocidad,
      "Km/h y tiene",miCoche.puertas,
      "puertas!")