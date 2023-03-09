import 'dart:io';

void main(List<String> arguments) {
  print('Hola, ¿Cómo te llamas?');
  var nombreJugador = stdin.readLineSync()!;

  print(
      'Vas andando por una carretera y ésta llega a su fin. Tienes 2 opciones, ir a la derecha o a la izquierda');
  print('¿Qué dirección escoges?');

  String direccion = stdin.readLineSync()!;

  if (direccion == 'derecha') {
    print(
        'Te encuentras un río y puedes elegir si cruzar nadando o andar hasta encontrar un puente. Introduce nadar para nadar o andar para caminar');
    String opcion = stdin.readLineSync()!;
    if (opcion == 'nadar') {
      print(
          'Mientras nadabas, apareción un cocodrilo y te comió enterito hijo... Has perdido');
    } else if (opcion == 'andar') {
      print(
          'Anduviste durante muchos días y te quedaste sin comida, finalmente tu cuerpo se desvaneción');
    } else {
      print('Esa dirección no es una opción válida, has perdido');
    }
  } else if (direccion == 'izquierda') {
    print(
        'Tras un paseo, te encuentras un puente, ¿Qué quieres hacer? Introduce cruzar para cruzarlo o dar la vuelta para regresar.');
    String opcion = stdin.readLineSync()!;

    if (opcion == 'cruzar') {
      print(
          'Tras cruzarlo, te encuentras a un extraño. ¿Quiéres hablar con él? Introduce si para hablar con el o no para seguir caminando');
      String opcion2 = stdin.readLineSync()!;

      if (opcion2 == 'no') {
        print(
            'Ese señor estaba regalando oro y no lo has conseguido, perdiste');
      } else if (opcion2 == 'si') {
        print('El hombre decide regalarte ORO, GANASTE!!!!');
      } else {
        print('Esa dirección no es una opción válida, has perdido');
      }
    } else if (opcion == 'dar la vuelta') {
      print(
          'Das la vuelta y eliges ahora el camino de la derecha, llegas a un río y da igual lo que elijas porque vas a morir igualmente hijo.. ASKJKAJSJALKJSDLAJDJALSDJ');
    } else {
      print('Esa dirección no es una opción válida, has perdido');
    }
  } else {
    print('Esa dirección no es una opción válida, has perdido');
  }
}
