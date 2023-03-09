"""
LIBRERÍAS PARA CREAR GUI EN PYTHON
- PyGTK
- PyQt
- wxPython
- Tkinter (el más utilizado actualmente)
"""

# Tcl/Tk -> Tcl Es un lenguaje de programación y Tk es un tool kit para crear
# interfaces de usuarios en el lenguaje Tcl, pero Tk se puede usar en otros lenguajes

import random
import tkinter
from tkinter import ttk

window = tkinter.Tk()

# Geometría para ubicar elementos/widgets/coomponentes en una GUI
# Geometria Pack - Se utiliza cuando se quiere situar elementos de arriba a abajo o cara a cara
# Geometria Grid - Se basa en una matriz representada por pares para acceder a ella. Los elementos se
#                  posicionan en cada posición de la matriz
# Geometria Place - Sirve para posicionar de forma absoluta dentro de una ventana, o relativa a un elemento
#                   dentro de la ventana con posicionamiento exacto (especificando x, y)

# GEOMETRIA PACK

"""
label_saludo = tkinter.Label(window, text='HOLA!', bg='yellow', fg='blue')
label_saludo.pack(ipadx=50, ipady=50, fill='both', expand=True)

label_adios = tkinter.Label(window, text='Adios', bg='red', fg= 'white')
label_adios.pack(ipadx=30, ipady=30, side='left')
"""

# GEOMETRIA GRID

"""
# La propiedad weight establece la cantidad de elementos que se puede incluir en la columna
window.columnconfigure(0, weight=3)
window.rowconfigure(1, weight=3)

username_label  = ttk.Label(window, text='Username:')
username_label.grid(column=0, row=0, sticky=tkinter.W, padx=5, pady=5)

username_entry = ttk.Entry(window)
username_entry.grid(column=1, row=0, sticky=tkinter.E, padx=5, pady=5)

passw_label  = ttk.Label(window, text='Password:')
passw_label.grid(column=0, row=1, sticky=tkinter.W, padx=5, pady=5)

passw_entry = ttk.Entry(window, show='*')
passw_entry.grid(column=1, row=1, sticky=tkinter.E, padx=5, pady=5)

login_button = ttk.Button(window, text='Login')
login_button.grid(column=1, row=3, sticky=tkinter.E, padx=5, pady=5)
"""

# GEOMETRIA PLACE

"""
colors = ['yellow','blue','black','pink','red']

for x in range(0,10):
    color = random.randint(0, len(colors)-1)
    color2 = random.randint(0, len(colors)-1)
    label = tkinter.Label(window, text='Etiqueta', bg=colors[color], fg=colors[color2])
    label.place(x=random.randint(0,100), y=random.randint(0,100))

label1 = tkinter.Label(window, text='Posicionamiento Absoluto', bg='blue', fg='white')
label1.place(x=10, y=50)

label2 = tkinter.Label(window, text='Otro Label', bg='red', fg='yellow')
label2.place(x=25, y=30)
"""

"""
WIDGETS
"""

"""
----->

# FRAME
frame = ttk.Frame(window)
frame.grid(column=0, row=0, sticky=tkinter.W)

label = ttk.Label(frame, text='hola')
label.grid(column=0, row=0, sticky=tkinter.W, padx=50, pady=50)

frame['relief'] = 'sunken'

#LISTBOX

lista = ['Windows','MacOS','Linux']
lista_intems = tkinter.StringVar(value=lista)

listbox = tkinter.Listbox(window, height=10, listvariable=lista_intems)
listbox.grid(column=0, row=0, sticky=tkinter.W)

# RADIO BUTTON

selected = tkinter.StringVar()
r1 = ttk.Radiobutton(window, text='Si', value='1', variable=selected)
r2 = ttk.Radiobutton(window, text='Quizá', value='2', variable=selected)
r3 = ttk.Radiobutton(window, text='No', value='3', variable=selected)

r1.grid(column=0, row=1, padx=5, pady=5)
r2.grid(column=0, row=2, padx=5, pady=5)
r3.grid(column=0, row=3, padx=5, pady=5)

selected2 = tkinter.StringVar()
rs1 = ttk.Radiobutton(window, text='Si', value='1', variable=selected2)

rs1.grid(column=1, row=1, padx=5, pady=5)

# CHECKBOX

def mifuncion():
    print('click hecho!')

seleccionado = tkinter.StringVar()
checkbox = ttk.Checkbutton(window, text='Acepto las Condiciones', variable=seleccionado, command=mifuncion)
checkbox.grid(row=2, column=2)

----->
"""

"""
EVENTOS
"""

def saludar(event):
    print('Han Hecho Click en Saludar')

def saludarDoble(event):
    print('Han hecho doble click')

def salir(event):
    print('Adioooos')
    window.quit()

boton = tkinter.Button(window, text='Haz Click')
boton.pack()
boton.bind('<Button-1>', saludar)
boton.bind('<Double-1>', saludarDoble)

botonSalir = tkinter.Button(window, text='SALIR')
botonSalir.pack()
botonSalir.bind('<Button-1>', salir)

window.mainloop()