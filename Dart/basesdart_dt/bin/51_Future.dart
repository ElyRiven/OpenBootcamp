import 'dart:async';

void main(List<String> args) {
  obtenerDatosUsuario();
  print('Obteninendo Datos de Usuario...');
}

Future<void> obtenerDatosUsuario() => Future.delayed(
    Duration(seconds: 6), () => throw Exception('ID de usuario no encontrado'));
