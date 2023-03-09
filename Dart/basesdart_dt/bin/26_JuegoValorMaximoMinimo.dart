import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  var listaNumeros = [3, 41, 12, 73, 9, 20];

  var maximo = 0;
  var minimo;

  for (var numero in listaNumeros) {
    if (numero > maximo) {
      maximo = numero;
    }
    if (minimo == null || minimo > numero) {
      minimo = numero;
    }
    print('Ciclo mayor $maximo $numero');
    print('Ciclo menor $minimo $numero');
  }

  print('El número mayor es $maximo');
  print('El número menor es $minimo');

  print(listaNumeros.reduce(min));
  print(listaNumeros.reduce(max));
}
