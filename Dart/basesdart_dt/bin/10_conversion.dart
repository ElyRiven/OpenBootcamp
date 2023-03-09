void main(List<String> arguments) {
  String cienString = '100';

  int doscientos = 200;

  //int suma = cienString + doscientos;

  int cien = int.parse(cienString);

  int suma = cien + doscientos;

  print(suma);

  print('La suma es: ' + suma.toString());

  double numeroDecimal = 100.5425;

  print('El número decimal es: ' + numeroDecimal.toStringAsFixed(2));

  var miSet = <int>{doscientos, int.parse(cienString)};
  print(miSet);
}