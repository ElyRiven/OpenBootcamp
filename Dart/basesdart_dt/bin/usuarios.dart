import 'personas.dart';
import '45_Mixing.dart';

class Usuarios extends Persona with Profesion {
  String? nombreUsuario;
  String? contrasena;

  Usuarios(String nombre, this.nombreUsuario, this.contrasena) : super(nombre);
}
