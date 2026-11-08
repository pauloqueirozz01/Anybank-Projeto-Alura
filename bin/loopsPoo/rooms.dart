import 'dart:io';

import 'package:loops/rooms.dart';

void main() {
  print("<-- SISTEMA DE RESERVA DE QUARTOS -->");
  menu();
}

void menu() {
  int? optionChoosed;
  print("Digite 1 para reservar um quarto. ");
  print("Digite 2 para sair do programa. ");
  print("Qual opção deseja escolher? ( 1 | 2 )");
  optionChoosed = int.tryParse(stdin.readLineSync()!);
  print("");

  switch (optionChoosed) {
    case 1:
      reservaQuarto();
      break;
    case 2:
      extiProgram();
    default:
  }
}

void extiProgram() {
  print("Executando o fim do programa.");
  print("...");
}
