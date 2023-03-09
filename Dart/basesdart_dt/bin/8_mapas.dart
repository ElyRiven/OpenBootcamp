void main(List<String> arguments) {
  var miPrimerMapa = {
    'nombre': 'Daniel',
    'edad': 29,
    'email': 'dtamayo@gmail.com',
    'estado': true
  };

  print(miPrimerMapa);

  miPrimerMapa['ciudad'] = 'Quito';
  print(miPrimerMapa);

  miPrimerMapa['estado'] = false;
  print(miPrimerMapa);

  print(miPrimerMapa.length);

  miPrimerMapa['estado'] = 3;
  print(miPrimerMapa); 

  var lista = ['Luis', 'Juan', 'Daniel'];

  print(lista.asMap());
}