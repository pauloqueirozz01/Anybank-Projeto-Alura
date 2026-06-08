import 'dart:io';

import 'package:loops/conta.dart';

void main() {
  print("Sistema de Contas Bancárias - POO em Dart");
  print("");
  Conta contaPaulo = Conta("Paulo", 1000);
  Conta contaValentina = Conta("Valentina", 2000);

  List<Conta> contas = <Conta>[contaValentina, contaPaulo];

  print(contaPaulo.nome);
  print(contaPaulo._saldo);

  contaPaulo._saldo = 2500;
  print(contaPaulo._saldo);

  contaPaulo.receiving(500);
  contaPaulo.send(200);
  // Para exibir todas as contas que existem dentro da lista,
  // vamos utilizar um for in para percorrer a conta in Contas

  print("");
  print("Mostrando todas as contas existentes:");

  for (Conta conta in contas) {
    print("Titular da conta: ${conta.nome}");
    print("${conta.nome}, saldo da conta atualizado: ${conta._saldo}");
    print("");
  }
}
