import 'personas.dart';

class Usuarios extends Persona {
  String? nombreUsuario;
  String? contrasena;

  Usuarios(String nombre, this.nombreUsuario, this.contrasena) : super(nombre);
}
