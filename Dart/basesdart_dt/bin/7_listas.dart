import 'package:test/test.dart';

void main(List<String> arguments) {
  var miPrimeraLista = [10,14];

  var miSegundaLista = ['Daniel', 'Samanta'];

  var listaAnidada = [
    [10,14],
    ['Pais','Ciudad'],
    miSegundaLista
  ];

  var miNombre = miSegundaLista[0];
  var tamanio = listaAnidada.length;

  var accediendo = listaAnidada[2][0];
  
  //print(miNombre);
  //print(tamanio);
  //print(accediendo);

  var listaFija = List.filled(4,'',growable: false);
  listaFija[0] = 'Daniel';
  listaFija[1] = miSegundaLista[1];

  // Al usar listas fijas, no se puede agregar ningún otro dato más del que ya se fijó
  //listaFija.add('hola');

  //print(miSegundaLista.length);
  miSegundaLista.add('Hola');

  //print(listaFija);
  //print(miSegundaLista);
  //print(miSegundaLista.length);

  print(miSegundaLista.last);
  print(miSegundaLista[miSegundaLista.length - 1]);

  print(miSegundaLista.reversed);
}