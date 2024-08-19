import 'dart:io';
import 'dart:math';

void main() {
  var gerador = Random();
  int numero = gerador.nextInt(100) + 1;
  int? chute;

  do {
    stdout.writeln("Chute um número de 1 a 100: ");
    chute = int.parse(stdin.readLineSync()!);
    if (numero > chute) {
      print("Maior, tente novamente");
    } 
    else if (numero < chute) {
      print("Menor, tente novamente");
    } 
    else {
      print("Acertou!");
    }
  } while (numero != chute);
}
