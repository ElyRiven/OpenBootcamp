import 'package:test/test.dart';

void main() {
  final ahora = DateTime.now();

  print(ahora);

  final aterrizajeLuna = DateTime(1969, 7, 20, 20, 0, 0);
  final caidaMuroBerlin = DateTime(1989, 11, 9);

  final aterrizajeLuna2 = DateTime.parse('1969-07-20 20:18:04Z');

  print(aterrizajeLuna.day);
  print(aterrizajeLuna.month);
  print(aterrizajeLuna.year);

  final nacimientoDaniel = DateTime.parse('19991024');

  nacimientoDaniel.weekday == DateTime.sunday
      ? print('Daniel nación un Domingo')
      : print('No se en que día nació');

  print(nacimientoDaniel.isUtc);
  print(ahora.isUtc);

  final nacimientoDaniel2 = DateTime.utc(1999, 10, 24);
  print(nacimientoDaniel2.isUtc);

  print(nacimientoDaniel.toUtc());
  print(nacimientoDaniel);

  print(nacimientoDaniel.timeZoneName);
  print(nacimientoDaniel.timeZoneOffset);

  print(aterrizajeLuna.isBefore(nacimientoDaniel));

  var diferenciaLunaDany = nacimientoDaniel.difference(aterrizajeLuna);
  print(diferenciaLunaDany.inDays / 365.25);
}
