void main(List<String> arguments) {
  var cielo = 'azul';
  var hora = 9;

  if (cielo == 'azul' && hora == 9) {
    //print('Entonces es de día');
  }

  if (true) {
    //print('Me estoy ejecutando');
  }

  var numero = 1;

  if (numero % 2 == 0) {
    //print('El número es PAR');
  } else {
    //print('El número es IMPAR');
  }

  var edad1 = 20;
  var edad2 = 36;
  if (edad2 - edad1 == 0) {
    //print('Ambas edades son Iguales');
  } else {
    var diferencia = edad2 - edad1;
    //print('La diferencia de edades es de $diferencia años');
  }

  var danielCanta = true;
  if (danielCanta) {
    //print('Corre que llueve!!');
  } else {
    //print('Estás a salvo');
  }

  // Detector de Milenials
  var anioNacimiento = 1996;

  var genero = 'mujer';

  if (anioNacimiento < 1981) {
    print('No hay milenials a la vista');
  } else if (anioNacimiento > 1997) {
    print('No hay milenials a la vista');
  } else {
    if (genero == 'hombre') {
      print('Eres Milenial Hombre');
    } else if (genero == 'mujer') {
      print('Eres Milenial Mujer');
    } else {
      print('Eres milenial sin genero reconocido por el programa');
    }
  }
}
