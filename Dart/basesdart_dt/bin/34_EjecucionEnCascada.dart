void main(List<String> arguments) {
  var listaA = [3];
  listaA.add(1);
  listaA.add(2);
  listaA.add(24);

  print('Lista Sin Cascada');
  listaA.forEach(print);

  var listaB = [];
  listaB
    ..add(1)
    ..add(4)
    ..add(5)
    ..add(9);

  print('Lista Con Cascada');
  listaB.forEach(print);

  var elementosTablaPeriodica = [];
  elementosTablaPeriodica
    ..add('Litio')
    ..add('Hidrogeno')
    ..add('Carbono')
    ..add('Oro')
    ..add('Mercurio')
    ..add('Neon')
    ..add('Xenon');

  elementosTablaPeriodica.forEach(print);
}
