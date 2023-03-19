import 'direccion.dart';

class Persona<T extends Direccion> {
  String? _nombre;
  int? edad;
  String? telefono;
  T? direccion;

  String? get nombre => this._nombre;

  set nombre(String? value) => this._nombre = value;

  get getEdad => this.edad;

  set setEdad(edad) => this.edad = edad;

  get getTelefono => this.telefono;

  set setTelefono(telefono) => this.telefono = telefono;

  Direccion? get getDireccion => this.direccion;

  set setDireccion(T? direccion) => this.direccion = direccion;

  Persona(this._nombre, {this.edad, this.telefono, this.direccion});

  String hablar(String texto) {
    return '$_nombre habla y dice $texto';
  }

  T getDireccion2() {
    return direccion!;
  }
}
