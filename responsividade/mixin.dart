mixin DizerOlaMixin {
  String dizerOla() {
    return "Olá";
  }

  void m() {
    print("DizerNome.m");
  }
}

mixin DizerNomeMixin {
  String dizerNome() {
    return "Rodrigo";
  }

  void m() {
    print("DizerNome.m");
  }
}

class OlaNome with DizerOlaMixin, DizerNomeMixin {
  void dizerTudo() {
    print('${dizerOla()}, ${dizerNome()}');
  }
}

void main() {
  final teste = OlaNome();
  teste.dizerTudo();
  teste.m();
}
