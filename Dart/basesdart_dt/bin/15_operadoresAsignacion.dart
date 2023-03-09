void main(List<String> arguments) {
  int a = 10;
  int b = 25;
  var c;

  // El operador ?? verifica que c sea nula, y si se cumple, se asigna el valor de a | Caso contrario devuelve error
  c ??= 1;
  print(c);

  c += a;
  print(c);

  c -= a;
  print(c);

  c *= a;
  print(c);

  c /= a;
  print(c);
}
