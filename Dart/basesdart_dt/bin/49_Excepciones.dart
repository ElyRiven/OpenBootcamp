import 'dart:io';

void main(List<String> args) {
  String? nombre;

  try {
    String nombreMayus = nombre!.toUpperCase();
  } catch (e) {
    print('Error en uppercase ${e.toString()}');
  } finally {
    print('Haz esto sí o sí');
  }

  int a = 20;
  int b = 0;
  var result;

  try {
    result = division(a, b);
  } on UnsupportedError {
    print('No se puede dividir entre cero');
  } on HttpException {
    print('Error Http');
  } catch (e) {
    print(e.toString());
  } finally {
    print('Sumando uno al denominador de la función');
    result = division(a, b + 1);
  }
  print('El resultado es $result');

  try {
    result = division(a, b);
  } on UnsupportedError {
    print('Unsupported Error Exception');
  } on FormatException {
    print('Format Exception');
  } catch (e) {
    print(e.toString());
  }
}

int division(int a, int b) {
  if (b <= 0) {
    throw UnsupportedError('El denominador es cero o menor que cero');
  }
  return a ~/ b;
}
