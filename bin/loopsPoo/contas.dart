import 'dart:io';

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

  // Para exibir todas as contas que existem dentro da lista,
  // vamos utilizar um for in para percorrer a conta in Contas

  print("");
  print("Mostrando todas as contas existentes:");

  for (Conta conta in contas) {
    print("Titular da conta: ${conta.nome}");
    print("${conta.nome}, saldo: ${conta.saldo}");
  }
}

class Conta {
  String nome;
  double saldo;

  Conta(this.nome, this.saldo);
}
