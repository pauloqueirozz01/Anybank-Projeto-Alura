import 'package:loops/conta.dart';

void main() {
  print("Sistema de Contas Bancárias - POO em Dart");
  print("");

  ContaCorrente contaMarcos = ContaCorrente("Marcos", 1493.92);
  ContaPoupanca contaJulia = ContaPoupanca("Julia", 12300.82);
  ContaSalario contaSalarioCatarina = ContaSalario(
    478923190,
    "Novix",
    "Catarina",
    1800,
  );

  List<Conta> contas = <Conta>[contaJulia, contaMarcos, contaSalarioCatarina];

  // Para exibir todas as contas que existem dentro da lista,
  // vamos utilizar um for in para percorrer a conta in Contas
  contaJulia.receiving(300);
  contaJulia.rendendoDinheiro();
  contaJulia.printCurrent();

  contaMarcos.send(1500);
  contaMarcos.printCurrent();

  contaSalarioCatarina.receiving(3450.00);
  contaSalarioCatarina.printCurrent();

  print("");
  print("Mostrando todas as contas existentes:");

  for (Conta conta in contas) {
    conta.printCurrent();
    print("");
  }
}
