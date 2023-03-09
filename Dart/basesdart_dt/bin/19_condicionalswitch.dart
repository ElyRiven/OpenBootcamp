void main(List<String> arguments) {
  var nota = 'B';

  switch (nota) {
    case 'A':
      print('Sobresaliente');
      break;
    case 'B':
      print('Notable');
      break;
    case 'C':
      print('Bien');
      break;
    case 'D':
      print('Suficiente');
      break;
    case 'E':
      print('Insuficiente');
      break;
    default:
      print('Nota erronea');
      break;
  }
}
