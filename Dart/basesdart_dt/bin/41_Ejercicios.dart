void main() {
  // a puede ser null al asignarle el operador ? al tipo de dato int
  // int? a;
  // a = null;
  // print('a es $a');

  List<String> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['one', null, 'three'];

  print('aListOfStrings is $aListOfStrings');
  print('aNullableListOfStrings is $aNullableListOfStrings');
  print('aListOfNullableStrings is $aListOfNullableStrings');

  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a = couldBeNullButIsnt;
  int b = listThatCouldHoldNulls.first!; //first item in the list
  int c = couldReturnNullButDoesnt()!.abs(); // absolute value

  print('a is $a.');
  print('b is $b.');
  print('c is $c.');

  ejercicio3();

  print(getLength('This is a string!'));

  print(getLength2(null));
}

int? couldReturnNullButDoesnt() => -3;

void ejercicio3() {
  String text;

  // Dart sabe que aquí se asigna un valor a la variable y así se asegura que no sea nula.
  // Si borras el if/else da error en los prints

  if (DateTime.now().hour < 12) {
    text = "It's morning! Let's make aloo paratha!";
  } else {
    text = "It's afternoon! Let's make biryanil";
  }

  print(text);
  print(text.length);
}

int getLength(String? str) {
  // Add null check here

  if (str == null) {
    return 0;
  } else {
    return str.length;
  }
}

int getLength2(String? str) {
  // Try throwing an exception here if 'str' is null.

  if (str == null) {
    throw FormatException();
  } else {
    return str.length;
  }
}
