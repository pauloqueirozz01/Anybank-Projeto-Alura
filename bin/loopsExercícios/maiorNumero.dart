import 'dart:io';

void main() {
  print("Digite 5 números");

  List<int> numerosEscolhidos = [];

  void getNumbers() {
    print("Função para coletar os números digitados");

    for (int valorDigitado = 0; valorDigitado < 5; valorDigitado++) {
      print("Digite um número");
      int? valorDigitado = int.tryParse(stdin.readLineSync()!);
      if (valorDigitado != null) {
        numerosEscolhidos.add(valorDigitado);
      } else {
        print("Digite um valor válido");
      }
    }
  }

  void checkNumber() {
    print("Função para checar qual o maior número dentro da lista");
    print(numerosEscolhidos);
  }

  getNumbers();
  checkNumber();
}
