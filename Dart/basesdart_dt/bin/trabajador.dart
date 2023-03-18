import 'personas.dart';
import '44_Interfaces.dart';

class Trabajador extends Persona implements Paseante {
  double? salario;

  Trabajador(String nombre, this.salario) : super(nombre);

  @override
  String hablar(String texto) {
    return '${super.hablar(texto)} se trata de un empleado';
  }

  @override
  void caminar() {
    print('Camino como un trabajador');
  }
}
