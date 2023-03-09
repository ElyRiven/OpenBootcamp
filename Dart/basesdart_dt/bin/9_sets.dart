void main(List<String> arguments) {
  var miPrimerSet = <String> {'Daniel', 'Samanta', 'Annie'};

  print(miPrimerSet);

  miPrimerSet.add('Maria');
  print(miPrimerSet);

  //miPrimerSet.add(1);

  miPrimerSet.add('Daniel');
  print(miPrimerSet);

  print(miPrimerSet.elementAt(2));
  print(miPrimerSet.length);

  miPrimerSet.remove('Maria');
  print(miPrimerSet);

  miPrimerSet.clear();
  print(miPrimerSet);
}