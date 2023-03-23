import 'dart:math';

void main(List<String> args) {
  // Constantes
  var valorPi = pi;
  var raiz2 = sqrt2;

  print(valorPi);
  print(raiz2);

  var area1 = 2 * 2 * valorPi;
  var area2 = 2 * 2 * 3.141592;
  print(area1.toStringAsFixed(5));
  print(area2);

  // Operaciones Trigonométricas

  assert(cos(valorPi) == -1);
  var grados = 90;
  var radianes = 90 * (pi / 180);

  print(radianes);

  // Raíz Cuadrada

  var num = 64;
  var raiz = sqrt(num);
  print(raiz);

  // Clases de la librería Random

  print(Random().nextInt(10));
  print((Random().nextDouble() * 1000).toStringAsFixed(0));
  print(Random().nextBool());

  // Puntos en el espacio para representaciones gráficas

  var punto1 = Point(0, 0);
  var punto2 = Point(100, 700);

  print(punto1.distanceTo(punto2));

  // Rectángulo

  var rectangulo = Rectangle(10, 80, 100, 300);
  print(rectangulo.left);

  // Máximo y Mínimo

  print(max(2, 8));
  print(min(62, 1));
}
