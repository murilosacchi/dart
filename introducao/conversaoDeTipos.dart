void main() {
//de string para int
  String idadeTextual = "25";
  int idade = int.parse(idadeTextual);
  print(idade);
//de string para double
  String pesoTextual = '85.2';
  double peso = double.parse(pesoTextual);
  print(peso);
//de string para num
  String alturaTextual = '1.8';
  num altura = num.parse(alturaTextual);
  print(altura);
  String logradouro = "Rua B";
  int numero = 325;
//não podemos concatenar string com int, lembra?
//print(logradouro + ', número: ' + numero);
//mas podemos converter para String antes
  print(logradouro + ', número: ' + numero.toString());
}
