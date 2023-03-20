import 'dart:io';

void main() async {
  var dir = Directory('D:/Documentos/Open Bootcamp/Dart/basesdart_dt');

  // Comprobar que un directorio existe

  var existe = await dir.exists();
  print(existe ? 'Existe' : 'No existe');

  // Listar todos los elementos del directorio temporal del sistema

  var tempDir = Directory.systemTemp;

  await for (var directory
      in tempDir.list(recursive: false, followLinks: false)) {
    print(directory);
  }

  // Listar todos los elementos de cualquier carpeta

  var directorioAListar = Directory('/');
  List<FileSystemEntity> listaArchivos =
      await directorioAListar.list().toList();
  print(listaArchivos);

  // Crear una carpeta

  var carpetaACrear =
      Directory('D:/Documentos/Open Bootcamp/Dart/basesdart_dt/CarpetaPrueba')
          .create();

  // Borrar una carpeta

  //Directory('D:/Documentos/Open Bootcamp/Dart/basesdart_dt/CarpetaPrueba').delete();
}
