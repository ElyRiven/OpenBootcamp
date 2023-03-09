import 'dart:io';

void main(List<String> arguments) {
  var iteraciones = 100;

  // Cuenta hacia arriba
  for (var i = 0; i <= iteraciones; i++) {
    print(i);
  }

  // Cuenta hacia abajo
  for (var i = 100; i > 0; i--) {
    print(i);
  }

  // Recorriendo una lista
  var lista = ['Daniel', 'Luis', 'Samanta'];

  for (var i = 0; i < lista.length; i++) {
    print('Feliz Navidad ${lista[i]}');
  }

  // Recorriendo una lista v2
  for (var nombre in lista) {
    print('Feliz año nuevo $nombre');
  }
}
