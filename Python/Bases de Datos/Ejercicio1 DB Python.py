"""
En este ejercicio tendréis que crear una tabla llamada Alumnos que constará de tres columnas:
    la columna id de tipo entero,
    la columna nombre que será de tipo texto y
    la columna apellido que también será de tipo texto.

Una vez creada la tabla, tenéis que insertarle datos, como mínimo tenéis que insertar 8 alumnos a la tabla.

Por último, tienes que realizar una búsqueda de un alumno por nombre y mostrar los datos por consola.
"""

"""
Script usado para crear la tabla Alumnos en PostgreSQL:

CREATE TABLE Alumnos(
	id int not null primary key,
	nombre varchar(30),
	apellido varchar(30)
);
"""

import psycopg2

def main():
    #insertarAlumno(1,'Daniel', 'Tamayo')
    #insertarAlumno(2,'Susan', 'Casas')
    #insertarAlumno(3,'Carlos', 'Paredes')
    #insertarAlumno(4,'Joel', 'Castro')
    #insertarAlumno(5,'Kevin', 'Ortiz')
    #insertarAlumno(6,'Arturo', 'Moran')
    #insertarAlumno(7,'Walden', 'Schmith')
    #insertarAlumno(8,'Charlie', 'Harper') #xd

    buscarAlumno('Arturo')
    buscarAlumno('Joel')
 
def insertarAlumno(identificador, name, lname):
    conexion = psycopg2.connect(host="localhost", database="ejercicioPython", user="postgres", password="175123827")
    cursor = conexion.cursor()

    query = f"INSERT INTO alumnos(id, nombre, apellido) VALUES({identificador}, '{name}', '{lname}');"

    cursor.execute(query)

    conexion.commit()
    cursor.close()
    conexion.close()

def buscarAlumno(nombre):
    conexion = psycopg2.connect(host="localhost", database="ejercicioPython", user="postgres", password="175123827")
    cursor = conexion.cursor()

    query = f"SELECT * FROM alumnos WHERE nombre='{nombre}';"

    cursor.execute(query)
    
    print(cursor.fetchall())

    cursor.close()
    conexion.close()

if __name__ == '__main__':
    main()