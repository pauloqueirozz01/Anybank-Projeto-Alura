import 'package:loops/personagem.dart';

void main() {
  print("Desafio de criação de personagens  - POO em Dart");
  print("");

  Personagem personagemPaulo = Personagem("Rize", [], []);

  personagemPaulo.getClass("Guerreiro");
  personagemPaulo.getPowers(["Invisibilidade", "Super-Força", "Voar"]);
  personagemPaulo.removePowers("Voar");
}
