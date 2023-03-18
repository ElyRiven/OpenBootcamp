void main(List<String> arguments) {
  var cafe = Cafe();

  print('Orden Recibida');
  cafe.calentarCafe();
  cafe.enfriarCafe();

  //print('El café está ' + cafe._temperatura);
  //print('Café entregado');
  //cafe.calentarCafe();

  print(cafe.servirCafe());
}

class Cafe {
  // Con la palabra reservada late, Dart no ejecuta la comprobación de la variable hasta que se utilice la variable
  //late String _temperatura = prepararCafe();
  late final _temperatura;

  void calentarCafe() {
    _temperatura = 'caliente';
  }

  void enfriarCafe() {
    _temperatura = 'frío';
  }

  String prepararCafe() {
    print('preparando...');
    return 'caliente';
  }

  String servirCafe() => 'Aquí tiene su café $_temperatura';
}
