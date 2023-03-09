void main(List<String> arguments) {
  print('Inicio del Programa');
  int edad = 10;
  assert(true, 'Hay fallo en la tercera línea');

  assert(edad > 20, 'La edad es $edad');
  if (edad > 20) {
    print('La edad es mayor a 20');
  }

  print('Fin del Programa');
}
