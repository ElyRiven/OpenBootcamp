import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  var userWins = 0;
  var computerWins = 0;

  var opciones = ['piedra', 'papel', 'tijera'];

  while (true) {
    print('\nElige piedra, papel, tijera o introduce q para salir\n\n');
    var eleccionUsuario = stdin.readLineSync()!.toLowerCase();

    if (eleccionUsuario.toString() == 'q') {
      break;
    }
    if (!opciones.contains(eleccionUsuario)) {
      print('Error, elige únicamente entre piedra, papel o tijera');
      continue;
    }

    Random random = Random();
    var randomNum = random.nextInt(2);
    var eleccionOrdenador = opciones[randomNum];

    print('El ordenador ha elegido: $eleccionOrdenador');

    if (eleccionUsuario == 'piedra' && eleccionOrdenador == 'tijera') {
      print('Has Ganado!');
      userWins++;
    } else if (eleccionUsuario == 'papel' && eleccionOrdenador == 'piedra') {
      print('Has Ganado!');
      userWins++;
    } else if (eleccionUsuario == 'tijera' && eleccionOrdenador == 'papel') {
      print('Has Ganado');
      userWins++;
    } else if (eleccionOrdenador == eleccionUsuario) {
      print('Empate');
    } else {
      print('Has Perdido');
      computerWins++;
    }
  }

  print('\nTus Puntos: $userWins\n');
  print('Puntos del Ordenador: $computerWins\n');
  if (computerWins > userWins) {
    print('Ha ganado la máquina');
  } else if (userWins == computerWins) {
    print('Has empatado con la computadora');
  } else {
    print('Le has ganado a la máquina');
  }
}
