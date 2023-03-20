import 'dart:async';
import 'dart:math';

void main(List<String> args) async {
  contarSegundos(4);
  await imprimirDatosUsuario();
}

Future<void> imprimirDatosUsuario() async {
  try {
    var datos = await obtenerDatosUsuario();
    print(datos);
    print('Esperando datos de usuario...');
  } catch (e) {
    print(e.toString());
  }
}

Future<String> obtenerDatosUsuario() => Future.delayed(
    Duration(seconds: 6), () => throw Exception('Error de ID de Usuario'));

void contarSegundos(int segundos) {
  for (int i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
