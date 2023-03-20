import 'dart:async';

Future<void> main(List<String> args) async {
  print(await crearLlamada());
  print('Obteniendo datos de usuario...');
}

Future<String> crearLlamada() {
  var datos = obtenerDatosUsuario();
  return datos;
}

Future<String> obtenerDatosUsuario() =>
    Future.delayed(Duration(seconds: 6), () => 'Ya llegué...');

Future otraFuncion() async {}
