void main(List<String> arguments) {
  identificacion('Dany', 'Tamayo', 23);
  identificacion('Dany', 'Tamayo', null, 1992);

  identificacion2('Dany', 'Tamayo', edad: 23, anioNaciomiento: 1999);
  identificacion2('Dany', 'Tamayo', anioNaciomiento: 1999);
}

// Función de parámetros posicionales. Para usarla se debe declarar con corchetes [] para declarar las variables opcionales

void identificacion(String nombre, String apellido,
    [var edad, var anioNacimiento]) {
  if (edad == null) {
    print(
        'La persona es $nombre, su apellido es $apellido y no conocemos su edad');
  } else {
    print('La persona es $nombre, su apellido es $apellido y su edad: $edad');
  }
}

// Función de parámetros por nombre. Para usarla se usa llaves {} para declarar las variables opcionales

void identificacion2(String nombre, String apellido,
    {var edad, var anioNaciomiento}) {
  if (edad == null) {
    print(
        'La persona es $nombre, su apellido es $apellido y no conocemos su edad');
  } else {
    print(
        'La persona es $nombre, su apellido es $apellido y su edad: $edad ya que nació en $anioNaciomiento');
  }
}
