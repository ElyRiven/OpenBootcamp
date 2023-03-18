import 'personas.dart';

class Trabajador extends Persona {
  double? salario;

  Trabajador(String nombre, this.salario) : super(nombre);

  @override
  String hablar(String texto) {
    return '${super.hablar(texto)} se trata de un empleado';
  }
}
