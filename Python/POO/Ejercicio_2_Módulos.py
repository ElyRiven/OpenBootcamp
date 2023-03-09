"""
En este segundo ejercicios tendréis que crear un script que
nos diga si es la hora de ir a casa. Tendréis que hacer uso del
modulo time. Necesitaréis la fecha del sistema y poder comprobar la hora.

En el caso de que sean más de las 7, se mostrará un mensaje y en caso contrario, 
haréis una operación para calcular el tiempo que queda de trabajo.
"""

import time

horarioInicio = 10
horarioFin = 19

def comprobacionHorario(horaIn, horaF):
   
    horaActual = time.localtime()

    hora = horaActual.tm_hour
    min = horaActual.tm_min

    if horaIn > hora < horaF:
        print('Terminó tu jornada!')

    elif horaIn <= hora <= horaF:
        tiempoHor = (horaF - 1) - hora
        tiempoMin = 59 - min
        print('Quedan', tiempoHor, 'horas y', tiempoMin,'minutos para ir a casa')

comprobacionHorario(horarioInicio, horarioFin)