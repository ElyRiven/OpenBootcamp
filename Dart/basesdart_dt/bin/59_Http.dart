import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> args) async {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  var response = await http.get(url);

  if (response.statusCode == 200) {
    var dataJson = convert.jsonDecode(response.body);
    var numeroResultados = dataJson['totalItems'];
    print('El número de resultados es $numeroResultados');

    for (var item in dataJson['items']) {
      print(item['volumeInfo']['title']);
    }
  }
}
