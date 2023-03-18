import '45_Mixing.dart';
import '46_Extensiones.dart';
import 'direccion.dart';
import 'personas.dart';
import 'trabajador.dart';
import 'usuarios.dart';

void main(List<String> arguments) {
  Direccion direccionDaniel = Direccion(1, 'Hola', '3213546', 'Gengibre');

  Persona daniel = Persona('Daniel',
      edad: 23, direccion: direccionDaniel, telefono: '13216564');

  // HERENCIA

  Trabajador pedro = Trabajador('Pedro', 1500);
  pedro.telefono = '6666666';
  pedro.direccion = direccionDaniel;

  print('El empleado se llama ${pedro.nombre}');
  print('El empleado gana ${pedro.salario}');

  print(pedro.runtimeType);

  Persona luis = pedro;
  print(luis.runtimeType);

  // Usuarios marta = pedro;

  // Interfaces

  pedro.caminar();

  // Mixing

  Usuarios maria = Usuarios('Maria', 'Maria', 'APsmndba');
  Profesion profesionMaria = Profesion();

  profesionMaria.profesion = 'Programadora';
  List competencias = ['Dart', 'Flutter', 'Java'];
  String competenciasMaria = profesionMaria.competenciasListar(competencias);

  print(competenciasMaria);

  // Extensiones

  print(
      'El salario de ${pedro.nombre} en dólares es: ${pedro.convertirADolares(pedro.salario!).toStringAsFixed(2)}');
}
