void main() {
  String nome = "João";
  String sobrenome = 'Silva';
  String endereco = '''
  Rua B,
  número 1234, Vila J''';
  bool deMaior = false;
  int idade = 17;
  num peso = 80.5;
  double altura = 1.82;

  print("Minha idade é " + idade.toString());
  print('Me chamo $nome');
  print('Meu sobrenome é ${sobrenome}');
  print("Tenho $idade anos e $peso kg");
  print("Ano que vem terei ${idade + 1} anos");
}
