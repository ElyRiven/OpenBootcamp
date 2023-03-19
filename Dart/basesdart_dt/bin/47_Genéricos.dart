void main(List<String> args) {
  List uno = [
    'Luis',
    3,
    bool,
    4.5,
    [1, 2, 3],
    {'uno': '1', 'tres': 2}
  ];

  List<String> dos = ['Daniel', 'Luis', 'Juan'];

  List<double> decimales = [7.2, 82.12561, 68676.1, 12.254];
  decimales.add(45.25);

  Set<String> tres = {};
  tres
    ..add('a')
    ..add('Hola')
    ..add('Que')
    ..add('Hace');

  for (var elemento in tres) {
    print(elemento);
  }

  Map<int, String> cuatro = {0: 'Daniel', 1: 'Annie', 2: 'Pedro'};
}
