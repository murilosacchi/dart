// importar pacote para valores aleatorios
import 'dart:math';

// importar pacote para entrada e saida de dados
import 'dart:io';

// definir um enum com as opcoes do jogo (pedra, papel, tesoura, sair)
enum OPCAO { pedra, papel, tesoura, sair }

void exibe(String texto) {
  print(texto);
}

int pegaEscolhaUsuario() {
  return int.parse(stdin.readLineSync()!);
}

bool opcaoValida(int opcao) {
  return opcao >= 1 && opcao <= 4;
}

OPCAO mapeiaOpcao(int opcao) {
  return OPCAO.values[opcao - 1];
}

String decideResultado(OPCAO escolhaUsuario, OPCAO escolhaComputador) {
  if (escolhaUsuario == escolhaComputador) return "Empate";
  if (escolhaUsuario == OPCAO.papel && escolhaComputador == OPCAO.pedra ||
      escolhaUsuario == OPCAO.tesoura && escolhaComputador == OPCAO.papel ||
      escolhaUsuario == OPCAO.pedra && escolhaComputador == OPCAO.tesoura) {
    return "Você venceu";
  }
  return "Computador venceu";
}

void jogo() {
  int escolhaUsuario;
  do {
    do {
      // exibir um menu com as opcoes para o usuario
      exibe('1 - Pedra\n2 - Papel\n3 - Tesoura\n4 - Sair');

      // capturar a opcao do usuario
      escolhaUsuario = pegaEscolhaUsuario();

      // validar, para garantir que ele digitou algo valido
    } while (!opcaoValida(escolhaUsuario));

    // se o usuario digitar 4, sair

    // se não
    if (escolhaUsuario != 4) {
      // sortear a opcao do computador
      int escolhaComputador = Random().nextInt(3) + 1;

      // mapear a opcao do usuario de int para enum
      OPCAO opcaoUsuario = mapeiaOpcao(escolhaUsuario);

      // mapear a opcao do computador de int para enum
      OPCAO opcaoComputador = mapeiaOpcao(escolhaComputador);

      // exibir a opcao de cada um, use interpolaçao
      // jogador (tesoura) vs (pedra) computador
      exibe(
          'Você (${opcaoUsuario.name}) vs (${opcaoComputador.name}) Computador');

      // decidir quem ganhou ou se houve empate
      String vencedor = decideResultado(opcaoUsuario, opcaoComputador);

      // exibir o resultado
      exibe(vencedor);
      exibe('****************************************');
    }
    sleep(Duration(seconds: 3));
  } while (escolhaUsuario != 4);
  exibe('Até logo');
}
