import 'dart:io';

class Conta {
  String nome;
  double saldo;

  Conta(this.nome, this.saldo);

  // Estamos criando MÉTODOS ou MÉTODO CONSTRUTOR, que nada mais são do quê funções dentro de Classes.
  void receiving(double value) {
    // Podemos chamar diretamente o saldo para atribuir o novo value
    saldo += value;
    //esse += é a mesma coisa de escrever conta.saldo = conta.saldo + value;
    print("$nome recebeu uma transferência no value de $value");
    print("Saldo da conta atualizado: $saldo");
    print("");
  }

  void send(double value) {
    saldo -= value;
    print("$nome fez uma transferência no valor de $value");
    print("Saldo da conta atualizado: $saldo");
    print("");
  }
}

void main() {
  print("Sistema de Contas Bancárias - POO em Dart");
  print("");
  Conta contaPaulo = Conta("Paulo", 1000);
  Conta contaValentina = Conta("Valentina", 2000);

  List<Conta> contas = <Conta>[contaValentina, contaPaulo];

  print(contaPaulo.nome);
  print(contaPaulo.saldo);

  contaPaulo.saldo = 2500;
  print(contaPaulo.saldo);

  contaPaulo.receiving(500);
  contaPaulo.send(200);
  // Para exibir todas as contas que existem dentro da lista,
  // vamos utilizar um for in para percorrer a conta in Contas

  print("");
  print("Mostrando todas as contas existentes:");

  for (Conta conta in contas) {
    print("Titular da conta: ${conta.nome}");
    print("${conta.nome}, saldo: ${conta.saldo}");
    print("");
  }
}
