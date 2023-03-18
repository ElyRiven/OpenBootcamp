import 'package:test/test.dart';

import 'galletadegengibre.dart';

void main(List<String> arguments) {
  galletaDeGengibre tom = galletaDeGengibre('Tom', 23);
  tom.nacer();

  String? nombreGalleta = tom.name;
  int? edadGalleta = tom.edad;
  print(
      'El nombre de tu galleta de gengibre es: $nombreGalleta y su edad es: $edadGalleta');

  galletaDeGengibre mary = galletaDeGengibre('Mary', 27);
  mary.nacer();
  mary.edad = 25;

  String? nombreMary = mary.name;
  int? edadMary = mary.edad;
  print(
      'El nombre de tu galleta de gengibre es: $nombreMary y su edad es: $edadMary');

  galletaDeGengibre jerry = galletaDeGengibre.avanzada('Jerry', 11,
      tipoGalleta: 'Sin Gluten', sabeDarVolteretas: false);

  print('¿Sabe Jerry dar volteretas?');
  bool? volteretas = jerry.sabeDarVolteretas;
  volteretas! ? print('Si sabe') : print('No sabe');

  galletaDeGengibre semiAvanzada = galletaDeGengibre.semiAvanzado('Daniel', 27);

  bool volteretaTom = tom.aprenderVoltereta();
  bool volteretaMary = mary.aprenderVoltereta();
  bool volteretaJerry = jerry.aprenderVoltereta();

  volteretaTom ? print('Tom ha aprendido') : print('Tom no ha aprendido');
  volteretaMary ? print('Mary ha aprendido') : print('Mary no ha aprendido');
  volteretaJerry ? print('Jerry ha aprendido') : print('Jerry no ha aprendido');
}
