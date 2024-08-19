import 'dart:io';

void main() {
  stdout.writeln('Digite sua idade: ');
  String? idadeTextual = stdin.readLineSync();
  if (idadeTextual != null) {
    int idade = int.parse(idadeTextual);
    stdout.writeln(idade);
  }
}
