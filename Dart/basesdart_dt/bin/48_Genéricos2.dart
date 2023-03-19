import 'excepcionPersonas.dart';
import 'direccion.dart';
import 'personas.dart';
import '47_Genéricos.dart';
import 'usuarios.dart';
import '46_Extensiones.dart';
import '45_Mixing.dart';

void main(List<String> args) {
  //DireccionEs direccionES = DireccionEs('123456', 1, 'Esperanza', 'Alzamora');
  DireccionUSA direccionUSA =
      DireccionUSA('33128', 'California', 35, 'Nashvile', 'Miami');

  //Persona<DireccionEs> luis = Persona('Luis', direccion: direccionES);
  Persona<DireccionUSA> daniel = Persona('Daniel', direccion: direccionUSA);

  //print(luis.direccion!._codPostal);

  //print(luis.direccion.runtimeType);
  print(daniel.direccion.runtimeType);

  // Excepción Personalizada

  try {
    DireccionEs direccionConError = DireccionEs('110', 1, 'Eso mismo', 'sisi');
  } on ExcepcionPersonas catch (e) {
    String message = e.message;
    int offset = e.offset;
    int source = e.source;
    print(
        '$message. El valor introducido tiene $source. Faltan $offset caracteres.');
  }
}

class DireccionEs extends Direccion {
  String? _codPostal;

  DireccionEs(String codPostal, int numeroVia, String nombreVia, String ciudad)
      : super(numeroVia, nombreVia, ciudad) {
    // Para que la comprobación del set se ejecute en el constructor, llamarla así
    setCodPostal = codPostal;
  }

  String? get codPostal => _codPostal;

  set setCodPostal(String? value) {
    if (value!.length == 5) {
      _codPostal = value;
    } else {
      throw ExcepcionPersonas(value.length);
    }
  }
}

class DireccionUSA extends Direccion {
  String? _codPostal;
  String? _estado;
  DireccionUSA(this._codPostal, this._estado, int numeroVia, String nombreCalle,
      String ciudad)
      : super(numeroVia, nombreCalle, ciudad);
}
