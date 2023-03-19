class Profesion {
  String? profesion;

  String competenciasListar(List competencias) {
    StringBuffer stringBuffer = StringBuffer();

    stringBuffer
        .write('La profesión $profesion tiene las siguientes competencias:\n');
    for (var competencia in competencias) {
      stringBuffer.writeln('- $competencia');
    }
    return stringBuffer.toString();
  }
}
