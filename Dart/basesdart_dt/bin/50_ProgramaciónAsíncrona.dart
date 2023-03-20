import 'dart:async';

void main(List<String> args) {
  int contador = 5;
  Timer(Duration(seconds: 3), (() => print('Me ejecuto a los 3 segundos')));

  Timer.periodic(Duration(seconds: 3), (timer) {
    if (contador == 0) {
      timer.cancel();
    }
    print(DateTime.now());
    contador--;
  });

  print('Yo me ejecuto antes');
}
