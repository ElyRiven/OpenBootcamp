class Alumno:
    nombre = ''
    nota = 0.0

    def __init__(self, nombre, nota):
        self.nombre = nombre
        self.nota = nota

    def showAlumno(self):
        print("Nombre:\n",self.nombre)
        print("Nota:\n", self.nota)

    def approveAlumno(self):
        notaAprobado = 7.0
        if self.nota >= notaAprobado:
            print('Alumno Aprobado')
        else:
            print('Alumno Reprobado')

alumno1 = Alumno('Daniel', 6.2)
alumno1.showAlumno()
alumno1.approveAlumno()

alumno2 = Alumno('Rose', 9.5)
alumno2.showAlumno()
alumno2.approveAlumno()