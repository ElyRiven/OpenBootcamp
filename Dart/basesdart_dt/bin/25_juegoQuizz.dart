import 'dart:io';

void main(List<String> arguments) {
  print('¿Quieres jugar un Juego? (Para continuar introduce si)');
  String quiereJugar = stdin.readLineSync()!;

  if (quiereJugar.toLowerCase() != 'si') {
    exit(0);
  }

  print('Juguemos =D\n\n');

  int puntuacion = 0;

  print('¿Qué significan las siglas CPU?\n');
  String respuesta1 = stdin.readLineSync()!;

  if (respuesta1.toLowerCase() == 'control process unit') {
    print('Correcto!');
    puntuacion++;
  } else {
    print('Incorrecto');
  }

  print('¿Qué significan las siglas RAM?');
  String respuesta2 = stdin.readLineSync()!;

  if (respuesta2.toLowerCase() == 'random access memory') {
    print('Correcto');
    puntuacion++;
  } else {
    print('Incorrecto');
  }

  print('¿Qué significan las siglas GPU?');
  String respuesta3 = stdin.readLineSync()!;

  if (respuesta3.toLowerCase() == 'graphic process unity') {
    print('Correcto');
    puntuacion++;
  } else {
    print('Incorrecto');
  }

  print('¿Qué significan las siglas PSU?');
  String respuesta4 = stdin.readLineSync()!;

  if (respuesta4.toLowerCase() == 'power supply') {
    print('Correcto');
    puntuacion++;
  } else {
    print('Incorrecto');
  }

  print('Has obtenido $puntuacion respuestas correctas');

  var porcentaje = (puntuacion.toDouble() / 4) * 100;

  print('Tu puntuación es de $porcentaje %');
}
