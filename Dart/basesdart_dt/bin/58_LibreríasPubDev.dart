import 'dart:io';
import 'package:english_words/english_words.dart';
import 'package:csv/csv.dart';

void main() async {
  nouns.take(50).forEach(print);

  print(syllables('beautiful'));
  print(syllables('analytics'));

  generateWordPairs().take(5).forEach(print);

  List<List<dynamic>> listaEjemplo = [];

  for (int i = 0; i < 10; i++) {
    listaEjemplo.add([]);
    for (int j = 0; j < 10; j++) {
      if (i == 0) {
        listaEjemplo[i].add('Columna $j');
      } else {
        listaEjemplo[i].add(j);
      }
    }
  }

  String csv = const ListToCsvConverter().convert(listaEjemplo);

  Directory directory =
      Directory('D:/Documentos/Open Bootcamp/Dart/basesdart_dt/CarpetaPrueba');
  final path = '${directory.path}/miCSV.csv';
  File file = File(path);
  file.writeAsString(csv);
}
