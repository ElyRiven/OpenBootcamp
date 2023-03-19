import 'direccion.dart';
import 'personas.dart';
import 'usuarios.dart';
import 'trabajador.dart';

void main(List<String> arguments) {
  Persona luis = Persona('Luis');
  Trabajador pedro = Trabajador('Pedro', 1500);
  print(luis.hablar('Hola'));
  print(pedro.hablar('Hola'));
}
