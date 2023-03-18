import 'direccion.dart';

class Persona {
  String? _nombre;
  int? edad;
  String? telefono;
  Direccion? direccion;

  String? get nombre => this._nombre;

  set nombre(String? value) => this._nombre = value;

  get getEdad => this.edad;

  set setEdad(edad) => this.edad = edad;

  get getTelefono => this.telefono;

  set setTelefono(telefono) => this.telefono = telefono;

  Direccion? get getDireccion => this.direccion;

  set setDireccion(Direccion? direccion) => this.direccion = direccion;

  Persona(this._nombre, {this.edad, this.telefono, this.direccion});
}
