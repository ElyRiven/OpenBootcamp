import 'dart:io';

void main(List<String> arguments) {
  var n = 5;

  while (n > 0) {
    print('Buenos días!');
    print(n);
    n--;
  }

  // Bucle Infinito
  /*
  while (true) {
    print('Buenos días!');
  }
  */

  // Máquina de Repetición
  while (true) {
    print('Escribe algo hijo...');
    String? linea = stdin.readLineSync();

    if (linea.toString().startsWith('#')) {
      continue;
    } else if (linea == 'fin') {
      break;
    }
    print('El usuario dice: $linea');
  }
  print('Terminanos y a dormir');
}
