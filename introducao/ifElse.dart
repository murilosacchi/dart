import 'dart:async';

void main() {
  const numero = 21;
  if (numero % 2 == 0) {
    print("é par");
    if (numero % 4 == 0) {
      print("divisivel por 4");
    } else {
      print('não é divisivel por 4');
    }
  } else {
    print("é impar");
    if (numero % 3 == 0) {
      print("divisel por 3 tambem");
    } else {
      print("não é divisivel por 3");
    }
  }
}
