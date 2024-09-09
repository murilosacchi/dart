void extremo(int a, {int n1 = 1, int n2 = 2}){
  print(a);
  print(n1);
  print(n2);
}

// posicional
void posicional(int n1, int n2) {
  print(n1);
  print(n2);
}

// nomeado
void opcional({int? n}) {
  print(n);
}

void main() {
  extremo(1, n1: 3, n2: 4);
  posicional(1, 2);
  opcional(n: 1);
  opcional();
}
