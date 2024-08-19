import 'dart:math';

void main() {
  var gerador = Random();

  var n1 = gerador.nextInt(6) + 0;
  print(n1);

  var n2 = gerador.nextInt(10) + 1;
  print(n2);

  var n3 = gerador.nextInt(101) + 18;
  print(n3);
}
