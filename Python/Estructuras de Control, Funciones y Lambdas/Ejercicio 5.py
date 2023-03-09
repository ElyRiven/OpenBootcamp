"""
ENUNCIADO

Escribe una función que pueda decirte si un año (número entero) es bisiesto o no.
"""

def compBisiesto(year):
    condition = (year % 4 == 0 and year % 400 == 0)
    if condition:
        return True
    else:
        return False

year = 1600

if compBisiesto(year):
    print(year,'Es año bisiesto!')
else:
    print(year, ' No es año bisiesto')