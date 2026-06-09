import 'package:loops/funcionario.dart';

void main() {
  print("Sistema de Salários - POO em Dart");
  print("");

  Funcionario funcionarioPaulo = Funcionario("Paulo", 3000);
  funcionarioPaulo.aumentarSalario(1000);
  funcionarioPaulo.calculaSalario();
  funcionarioPaulo.getSalario();
}
