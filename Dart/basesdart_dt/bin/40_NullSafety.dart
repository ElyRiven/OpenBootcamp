import 'dart:io';

void main(List<String> arguments) {
  // El símbolo de interrogación ? al lado del tipo de dato permite a esa variable ser null
  int? numero;

  String apellido = obtenerApellido('Daniel Tamayo');
  print(apellido);

  // OPERADOR ASERCIÓN !

  int? variableQuizaNull;
  int valor = variableQuizaNull!;

  print(null);
}

int calcularCuadrado(int numero) {
  return numero * numero;
}

void openSocket(int? port) {}

String obtenerApellido(String nombreCompleto) {
  var partes = nombreCompleto.split(' ');

  var apellido = partes.length > 1 ? partes[1] : null;

  // Si haces la comprobación de null durante el código,
  // Dart lo detecta y no muestra errores por variables que podrían ser null
  if (apellido == null) {
    exit(0);
  }

  return apellido;
}
