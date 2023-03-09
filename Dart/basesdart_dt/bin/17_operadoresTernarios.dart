void main(List<String> arguments) {
  // Operador Ternario Tipo 1: Condicion ? expresión 1 : expresión2
  bool soyDaniel = false;
  soyDaniel ? print('Correcto, eres Daniel!') : print('ACCESO DENEGADO');

  var a = 10;

  a >= 10 ? print('a es mayor o igual que 10') : print('a es menor que 10');

  // Operador Ternario Tipo 2: expresion1 ?? expresion2 || expresion1 tiene que ser null para que se ejecute expresion2
  var b = [1, null, 2];

  b[1] ?? print('b no tiene valor en esa posición');

  b[0] ?? print('Hola?');
}
