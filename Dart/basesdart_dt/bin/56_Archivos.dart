import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  // Lectura de un archivo

  String? lineaParaEscribir;

  final file = File(
      'D:/Documentos/Open Bootcamp/Dart/basesdart_dt/CarpetaPrueba/Hola.txt');
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  try {
    await for (var line in lines) {
      print('$line: ${line.length}');
      lineaParaEscribir = line;
    }
    print('El archivo ha sido cerrado');
  } catch (e) {
    print(e.toString());
  }

  // Escritura de archivos

  String path =
      'D:/Documentos/Open Bootcamp/Dart/basesdart_dt/CarpetaPrueba/Hola2.txt';
  var fileEscribir = await file.writeAsString(lineaParaEscribir!.toUpperCase());
  String path2 =
      'D:/Documentos/Open Bootcamp/Dart/basesdart_dt/CarpetaPrueba/Hola3.txt';
  var fileEscribir2 = File(path2);
  var openWrite = fileEscribir2.openWrite();
  openWrite.write(lineaParaEscribir);
  openWrite.close();

  // Borrar un archivo

  fileEscribir.delete();
}
