void main(List<String> arguments) {
  //imprimirHolaMundo();
  int edad = devuelvemeTuEdad();
  print(edad);
  //amor();
  String sentimiento = amor('Daniel');
  print('¿Qué es lo que yo siento por ti? $sentimiento');

  double area = calcularArea(2.3, 8);
  //print('El área del objeto es ${calcularArea(3, 9)}');
  print('El área del objeto es $area');

  var miSentimiento = amor('Annie');
  print(miSentimiento);
}

void imprimirHolaMundo() {
  print('Hello world!');
}

String amor(String tuNombre) {
  String resultado = 'Te quiero ${tuNombre.toUpperCase()}';
  return resultado;
}

int devuelvemeTuEdad() {
  int edad = 23;
  return edad;
}

double calcularArea(double ladoA, double ladoB) {
  double area = ladoA * ladoB;
  return area;
}
