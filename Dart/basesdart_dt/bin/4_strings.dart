void main(List<String> arguments) {
  String cadena1 = '1uno';

  String cadena2 = "2dos";

  final cadena3 = ''' 

    Uno
    Dos
    Tres

  ''';

  int cuatro = 4;

  String cuatroString = cuatro.toString();

  //print(cuatroString.runtimeType);
  //print(cuatroString);

  double peso = 62.58741;

  String pesoString = peso.toStringAsFixed(2);

  //print(pesoString);
  //print(pesoString.runtimeType);

  String refran = 'en abril aguas mil';

  //print(refran.contains('en '));

  String email = 'contacto@dtamayo.es';

  //print('El dominio de la dirección es: ' + email.split('@')[1]);

  //print(refran.startsWith('mil'));
  //print(refran.endsWith('mil'));

  print(email.indexOf('@'));

  print(email.substring(8 + 1, email.indexOf('.')));

}