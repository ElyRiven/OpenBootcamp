void main(List<String> arguments) {
  bool estado = false;
  print(!estado);

  int a = 10;
  int b = 25;

  // Operador OR (||): Si se cumple al menos una de las condiciones, regresa true. Cualquier otro caso, false
  bool esVerdad = a > 20 || b > 20;
  print(esVerdad);

  // Operador AND (&&): Si se cumplen todas las condiciones, regresa true. Cualquier otro caso, false
  bool esVerdad2 = a > 5 && b > 20;
  print(esVerdad2);
}
