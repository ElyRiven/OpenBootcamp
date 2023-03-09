"""
En este ejercicio, tendréis que crear un archivo py donde creéis un archivo txt,
lo abráis y escribáis dentro del archivo. Para ello, tendréis que acceder dos veces al archivo creado.
"""

createTxt = open('Entradas & Salidas/ficheroEj1.txt','x')

texto = ['Hola, que tal!\n',
         'Estoy escribiendo en un archivo txt\n',
         'Lo aprendí de OpenBootcamp, Python es genial!!!/n'
]

escribirTxt = open('Entradas & Salidas/ficheroEj1.txt','wt')

for linea in texto:
    if not linea.endswith('.'):
        escribirTxt.write(linea)

escribirTxt.close()