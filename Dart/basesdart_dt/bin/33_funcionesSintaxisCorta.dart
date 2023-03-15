void main(List<String> arguments) {
  imprimirHolaMundo();
  imprimirHolaMundo2();

  var frase = amor('Maria');
  print(frase);

  print('El área es ${calcularArea(6, 9)}');
}

void imprimirHolaMundo() {
  print('Hola Mundo');
}

void imprimirHolaMundo2() => print('Hola Mundo');

String amor(String tuNombre) => 'Te quiero $tuNombre';

double calcularArea(double ladoA, double ladoB) => ladoA * ladoB;
