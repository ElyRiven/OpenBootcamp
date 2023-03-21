import 'dart:isolate';
import 'dart:async';

void main(List<String> args) async {
  contarSegundos(4);
  await imprimirDatosUsuario();
}

Future<void> imprimirDatosUsuario() async {
  try {
    final p = ReceivePort();
    await Isolate.spawn(obtenerDatosUsuario, p.sendPort);
    print(await p.first);
  } catch (e) {
    print(e.toString());
  }
}

Future<void> obtenerDatosUsuario(SendPort p) async =>
    Future.delayed(Duration(seconds: 6), (() {
      print('Ya he llegado desde la isla aislada');
      Isolate.exit(p, 'Ya he llegado desde la isla principal');
    }));

void contarSegundos(int segundos) {
  for (int i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
