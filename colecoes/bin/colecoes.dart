import 'package:colecoes/colecoes.dart' as colecoes;

void main(List<Object> arguments) {
  List<String> nomes = ['Ana', 'Pedro'];
  print(nomes.runtimeType);
  List<int> idades = [17, 22];
  print(idades.runtimeType);
  List<bool> deMaior = [false, true];
  print(deMaior.runtimeType);
//podemos também ter uma lista de listas
  var listas = [nomes, idades, deMaior];
//essa é uma List<<List<Object>>
  print(listas.runtimeType);
//sem o tipo genérico também pode
//aqui temos uma lista de dynamic
//ou seja, ela armazena qualquer coisa
  List lista = [];
  lista.add(true);
  lista.add("Ana");
  print(lista.runtimeType);
  print(lista);
}
