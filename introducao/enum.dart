enum diaDaSemana { SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, DOMINGO }

void main() {
  print(diaDaSemana.values);
  print(diaDaSemana.SEGUNDA.runtimeType);
  print(diaDaSemana.SEGUNDA.index);
  print(diaDaSemana.SEGUNDA.name);
  var hoje = diaDaSemana.SEGUNDA;
  switch (hoje) {
    case diaDaSemana.SEGUNDA:
      print("NÃOOOOOO");
    case diaDaSemana.SEXTA:
      print("EEEEEE");
    default:
      print("Outro dia");
  }
}
