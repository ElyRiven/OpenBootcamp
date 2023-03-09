"""
En este ejercicio tenéis que crear una lista de RadioButton que muestre la opción que se ha seleccionado
y que contenga un botón de reinicio para que deje todo como al principio.

Al principio no tiene que haber una opción seleccionada.
"""
import tkinter
from tkinter import ttk

listaPaises = ['España','EEUU','Mexico','Perú','Francia','China',]

window = tkinter.Tk()
window.columnconfigure(0, weight=3)
window.rowconfigure(0, weight=3)

label1 = ttk.Label(window, text='Elije tu País')
label1.grid(column=0, row=0, padx=5, pady=5)

paisSeleccionado = tkinter.StringVar()

initialRow = 1

for x in range(0, len(listaPaises)):
    pais = listaPaises[x]
    rbPais = ttk.Radiobutton(window, text=pais, value=x, variable=paisSeleccionado)
    rbPais.grid(column=0, row=initialRow, sticky=tkinter.W, padx=5, pady=5)
    initialRow += 1

def reinicio(event):
    paisSeleccionado.set(None)

botonReinicio = ttk.Button(window, text='Reiniciar')
botonReinicio.grid(column=0, row=8, padx=5, pady=5)
botonReinicio.bind('<Button-1>', reinicio)

window.mainloop()