import 'package:loops/conta.dart';

void main() {
  print("Sistema de Contas Bancárias - POO em Dart");
  print("");
  Conta contaPaulo = Conta("Paulo", 1000);
  Conta contaValentina = Conta("Valentina", 2000);
  ContaCorrente contaMarcos = ContaCorrente("Marcos", 1493.92);
  ContaPoupanca contaJulia = ContaPoupanca("Julia", 12300.82);

  List<Conta> contas = <Conta>[contaValentina, contaPaulo];

  contaPaulo.receiving(2500);
  contaPaulo.receiving(500);
  contaPaulo.send(200);

  contaValentina.receiving(200);
  contaValentina.send(126);
  // Para exibir todas as contas que existem dentro da lista,
  // vamos utilizar um for in para percorrer a conta in Contas
  contaJulia.receiving(300);
  contaJulia.rendendoDinheiro();
  contaJulia.printCurrent();

  contaMarcos.send(1500);
  contaMarcos.printCurrent();

  print("");
  print("Mostrando todas as contas existentes:");

  for (Conta conta in contas) {
    conta.printCurrent();
    print("");
  }
}
