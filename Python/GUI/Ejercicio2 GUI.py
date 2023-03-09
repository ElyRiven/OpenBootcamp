"""
En este segundo ejercicio, tendréis que crear una interfaz sencilla la cual debe de contener una lista de
elementos seleccionables, también debe de tener un label con el texto que queráis.
"""

import tkinter
from tkinter import ttk

window = tkinter.Tk()
window.columnconfigure(0, weight=2)
window.rowconfigure(1, weight=2)
window.title('Ejericicio GUI TKinter')

frame1 = ttk.Frame(window)
frame1.grid(column=0, row=0, sticky=tkinter.N)
frame1['relief'] = 'sunken'

title = ttk.Label(frame1, text='Para aplicar, llena la siguiente información')
title.grid(column=0, row=0, sticky=tkinter.N, pady=5)

labelTech = ttk.Label(frame1, text='¿Qué tecnología conoces para desarrollar software?')
labelTech.grid(column=0,row=1,sticky=tkinter.W)

listaRB = ['Java','C#','JavaScript','Ruby','Python','PHP']

initRow = 2

tech = tkinter.StringVar()

for x in range(0, len(listaRB)):
    lang = listaRB[x]
    rbTech = ttk.Radiobutton(frame1, variable=tech, text=lang, value=x)
    rbTech.grid(column=0, row=initRow, padx=5, pady=5, sticky=tkinter.W)
    initRow += 1

listaCB = ['Espáñol','Inglés','Francés','Aleman','Portugues']
initRow += 1

labelLang = ttk.Label(frame1, text='¿Cuál es tu idioma nativo?')
labelLang.grid(column=0, row=initRow, sticky=tkinter.W)
initRow += 1

language = tkinter.StringVar()

cbLanguage = ttk.Combobox(frame1, state='readonly', values=listaCB)
cbLanguage.grid(column=0, row=initRow, sticky=tkinter.W, padx=5, pady=5)
initRow += 1

frame2 = ttk.Frame(window)
frame2.grid(column=1, row=0, sticky=tkinter.EW)
frame2['relief'] = 'sunken'

labelCode = ttk.Label(frame2, text='Escribe un código de ejemplo:')
labelCode.grid(column=1, row=2, sticky=tkinter.W)
initRow += 1

exCode = tkinter.Text(frame2, height=25, width=100)
exCode.grid(column=1, row=3, sticky=tkinter.W, padx=5, pady=5)
initRow += 1

def application(event):
    technology = listaRB[int(tech.get())]
    language = cbLanguage.get()
    code = exCode.get('1.0', 'end-1c')
    print(f'Tu aplicación se ha enviado correctamente!\n',
          f'Tu Tecnología: {technology}\n',
          f'Tu idioma nativo: {language}\n',
          f'Tu código de ejemplo escrito en {technology}: "{code}"')

button = ttk.Button(frame2, text='Aplicar', width=15)
button.grid(column=1, row=5, sticky=tkinter.S)
button.bind('<Button-1>', application)

window.mainloop()