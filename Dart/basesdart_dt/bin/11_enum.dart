enum EstadosUsuario {
  notlogged,logged,loggin,registered
}

void main(List<String> arguments) {
  var estadoActual = EstadosUsuario.notlogged;
  print(estadoActual);

  //Aquí pasa algo y se loggea

  estadoActual = EstadosUsuario.logged;
  print(estadoActual);
}