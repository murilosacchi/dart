import 'dart:convert';

void main(){
  var pessoaJSON = '{"nome": "Ana", "idade": 18}';
  var pessoa = json.decode(pessoaJSON);
  print(pessoa['nome']);
  print(pessoa['idade']);
}