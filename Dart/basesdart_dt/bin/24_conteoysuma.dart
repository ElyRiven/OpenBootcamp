void main(List<String> arguments) {
  var gastos = [1.23, 14.5, 300, 145.99, 37.5, 100.00];

  int cuenta = 0;

  double suma = 0;

  for (var gasto in gastos) {
    cuenta++;
    suma += gasto;
  }

  var sumaString = suma.toStringAsFixed(2);

  print('El número total de gastos es de ${gastos.length}');
  print('El total de gastos es de $sumaString');
}
