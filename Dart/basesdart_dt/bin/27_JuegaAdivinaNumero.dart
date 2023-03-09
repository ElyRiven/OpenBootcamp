import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print('Ingresa un número: ');

  var valorMax = stdin.readLineSync();
  var valorMaxInt;

  Random generadorNum = new Random();

  if (valorMax == null) {
    print('Error, intentar nuevamente');
    exit(0);
  }
  if (int.tryParse(valorMax) != null) {
    valorMaxInt = int.parse(valorMax);
    if (valorMaxInt <= 0) {
      print('Ingresa solo números mayores que 0');
      exit(0);
    }
  } else {
    print('Ingresa un número la próxima vez');
    exit(0);
  }

  var numeroAleatorio = generadorNum.nextInt(valorMaxInt);
  var numeroIntentos = 0;

  while (true) {
    print('Adivina el número: ');
    numeroIntentos++;
    var numeroUsuario = stdin.readLineSync();
    var numeroUsuarioInt;

    if (numeroUsuario == null) {
      print('Error, intentar nuevamente');
      exit(0);
    }
    if (int.tryParse(numeroUsuario) != null) {
      numeroUsuarioInt = int.parse(numeroUsuario);
      if (numeroUsuarioInt < 0) {
        print('Ingresa solo números mayores o igual que 0');
        continue;
      }
    } else {
      print('Ingresa un número la próxima vez');
      continue;
    }

    if (numeroUsuarioInt == numeroAleatorio) {
      print('!Lo has acertado!');
      break;
    } else if (numeroUsuarioInt < numeroAleatorio) {
      print('El número secreto es mayor, vuelve a intentarlo');
    } else {
      print('El número secreto es menor, vuelve a intentarlo');
    }
  }

  print('Enhorabuena, has ganado.\n Has usado $numeroIntentos intentos');
}
