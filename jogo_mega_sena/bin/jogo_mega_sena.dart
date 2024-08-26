import 'dart:io';
import 'dart:math';
import 'package:jogo_mega_sena/jogo_mega_sena.dart' as jogo_mega_sena;

List<dynamic> geraNumero() {
  List numerosCertos = [];
  var gerador = Random();
  for (var i = 0; i < 6; i++) {
    var numeroAleatorio = gerador.nextInt(60) + 1;
    if (numerosCertos.contains(numeroAleatorio)) {
      i--;
    } else {
      numerosCertos.add(numeroAleatorio);
    }
  }
  return numerosCertos;
}

void main(List<String> arguments) {
  List listaNumeros = [];

  for (var i = 0; i < 6; i++) {
    stdout.writeln("Digite um número: ");
    String? numeroString = stdin.readLineSync();
    if (numeroString != null) {
      int numeroInt = int.parse(numeroString);
      if (listaNumeros.contains(numeroInt)) {
        print("O número digitado ja foi jogado, digite outro número");
        i--;
      } else {
        listaNumeros.add(numeroInt);
      }
    }
  }
  List jogoGerado = geraNumero();
  jogoGerado.sort();
  listaNumeros.sort();
  print("Jogo do Usuario - {$listaNumeros} x {$jogoGerado} - Jogo gerado");

  int pontuacao = 0;
  List numerosAcertados = [];
  for (var numero in listaNumeros) {
    if (jogoGerado.contains(numero)) {
      pontuacao++;
      numerosAcertados.add(numero);
    }
  }
  print("Números acertados: {$numerosAcertados}");

  if (pontuacao == 6) {
    print("Você venceu");
  } else {
    print("Você perdeu");
  }
}
