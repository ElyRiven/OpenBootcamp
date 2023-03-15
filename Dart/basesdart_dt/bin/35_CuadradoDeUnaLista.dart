import 'dart:math';

void main(List<String> arguments) {
  var listaNumeros = [5, 2, 9, 3];
  var listaCuadrados = cuadradoLista(listaNumeros);
  listaCuadrados.forEach(print);
}

List cuadradoLista(List numeros) {
  var listaCuadrados = [];
  for (var num in numeros) {
    listaCuadrados.add(pow(num, 2));
  }
  return listaCuadrados;
}
