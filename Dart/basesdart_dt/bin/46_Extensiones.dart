import 'trabajador.dart';

final double _valorCambioDolarEuro = 1.08;

extension TrabajadorExtension on Trabajador {
  double convertirADolares(double salario) {
    return salario * 1.08;
  }

  static double obtenerValorCambio() {
    return _valorCambioDolarEuro;
  }
}
